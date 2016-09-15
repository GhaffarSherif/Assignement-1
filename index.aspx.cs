using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected UserDataContext dataContext;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        var enteredUserName = ((TextBox)FindControl("userNameTextBox")).Text;
        var enteredPassword = ((TextBox)FindControl("passwordTextBox")).Text;

        dataContext = new UserDataContext();

        var loginInfo = from profile in dataContext.Profiles
                        where profile.Username == enteredUserName &&
                              profile.Password == enteredPassword
                        select profile;

        if (loginInfo.Any())
        {
            Session["Username"] = enteredUserName;
            Session["Password"] = enteredPassword;
            incorrectUserPass.Visible = false;
            Response.Redirect("~/main.aspx");
        }
        else
            incorrectUserPass.Visible = true;
    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
}