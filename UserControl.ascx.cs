using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl : System.Web.UI.UserControl
{
    string username, password, fname, lname, gender, dob, street, city, province, postalCode;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Username { get; set; }
    public string Password { get; set; }
    public string Fname { get; set; }
    public string Lname { get; set; }
    public string Gender { get; set; }
    public string Dob { get; set; }
    public string Street { get; set; }
    public string City { get; set; }
    public string Province { get; set; }
    public string PostalCode { get; set; }
}