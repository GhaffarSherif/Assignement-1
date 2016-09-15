using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    UserDataContext dataContext;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Response.Redirect("~/register2.aspx");
            }
                
        }
    }

    protected void usernameRegister_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        dataContext = new UserDataContext();
        var userData = from profile in dataContext.Profiles
                       where profile.Username == username.Text
                       select profile;
        if (!userData.Any())
        {
            e.IsValid = true;
            
        }
        else
            e.IsValid = false;

    }
}