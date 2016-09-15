using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register3 : System.Web.UI.Page
{
    UserDataContext dataContext = new UserDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (IsPostBack)
        {
            Validate();
            if (IsValid && checkbox.Checked)
            {
                registerUser();
                Response.Redirect("~/main.aspx");
            }
        }
    }

    public void registerUser()
    {
        Profile add = new Profile
        {
            Username = (string)Session["username"],
            Password = (string)Session["password"],
            FirstName = (string)Session["firstname"],
            Lastname = (string)Session["lastname"],
            Gender = (string)Session["gender"],
           // DateOfBirth = (string)Session["dob"],
            Street = street.Text,
            Province = province.Text,
            City = city.Text,
            //Country = country.Text,
            PostalCode = postal.Text
        };

        dataContext.Profiles.InsertOnSubmit(add);
        dataContext.SubmitChanges();

       
    }

   
}
