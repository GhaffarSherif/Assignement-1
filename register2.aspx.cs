using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                Session["firstname"] = fname.Text;
                Session["lastname"] = lname.Text;
                Session["gender"] = gender.Text;
                Session["dob"] = dateOfBirth.Text;

                Response.Redirect("register3.aspx");
            }
        }
    }
}