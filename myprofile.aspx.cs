using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

public partial class myprofile : System.Web.UI.Page
{
    UserDataContext dataContext = new UserDataContext();

    

    protected void Page_Load(object sender, EventArgs e)
    {
        displayData();

        if (isEditor())
        {
            editor.Visible = true;
        }
        else
            editor.Visible = false;
        
    }
    private bool isEditor()
    {
        NameValueCollection GET = Request.QueryString;
        if (GET["edit"] == "1")
            return true;
        else
            return false;
    }

    private void displayData()
    {
        var userData = from profile in dataContext.Profiles
                       where profile.Username == (string)Session["username"]
                       select profile;

        username.Text = userData.First().Username;
        fullName.Text = userData.First().FirstName + " " + userData.First().Lastname;
        gender.Text = userData.First().Gender;

        DateTime birth = (DateTime)userData.First().DateOfBirth;
        birthDate.Text = birth.ToString("mm/dd/YYYY");
        address.Text = userData.First().Street + ", " + userData.First().City + ", " + userData.First().Province + ", " + userData.First().Country + ", " + userData.First().PostalCode;

    }

    private void modifyData()
    {
        var userData = from profile in dataContext.Profiles
                  where profile.Username == (string)Session["username"]
                  select profile;
        
        if (genderTextBox.Text != "")
        {
            userData.First().Gender = genderTextBox.Text;
        }
        if (passwordTextBox.Text != "")
        {
            userData.First().Password = passwordTextBox.Text;
        }
        if (cityTextBox.Text != "")
        {
            userData.First().City = cityTextBox.Text;
        }
        if (firstNameTextBox.Text != "")
        {
            userData.First().FirstName = firstNameTextBox.Text;
        }
        if (lastNameTextBox.Text != "")
        {
            userData.First().Lastname = lastNameTextBox.Text;
        }
        if (dateOfBirthTextBox.Text != "")
        {
            DateTime birth = new DateTime();
            birth = Convert.ToDateTime(dateOfBirthTextBox.Text);
            userData.First().DateOfBirth = birth;
        }
        if (provinceTextBox.Text != "")
        {
            userData.First().Province = provinceTextBox.Text;
        }
        if (streetTextBox.Text != "")
        {
            userData.First().Street = streetTextBox.Text;
        }
        if (postalCodeTextBox.Text != "")
        {
            userData.First().PostalCode = postalCodeTextBox.Text;
        }
        if (country.Text != "")
        {
            userData.First().Country = country.Text;
        }

        dataContext.SubmitChanges();
    }
    protected void editButton_Click(object sender, EventArgs e)
    {
        modifyData();

        Response.Redirect(Request.RawUrl);

        
    }
}