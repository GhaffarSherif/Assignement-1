using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.Page
{
    protected UserDataContext dataContext;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        populateProfileTable();
    }

    public void populateProfileTable()
    {
        dataContext = new UserDataContext();

        var users = from profile in dataContext.Profiles
                         select profile;

        foreach (var user in users)
            userTableRows.Controls.Add(createRow(user));

        
    }

    private ProfileTableControl createRow(Profile user)
    {
        ProfileTableControl ptControl = (ProfileTableControl)LoadControl("~/ProfileTableControl.ascx");

        ptControl.Username = user.Username;
        ptControl.viewEvent += new EventHandler(viewEventHandler);

        return ptControl;
    }

    public void viewEventHandler(object sender, EventArgs e)
    {
        string username = (((Button)sender).CommandArgument).ToString();

        Response.Redirect("~/user.aspx?profile="+username);
    }
}