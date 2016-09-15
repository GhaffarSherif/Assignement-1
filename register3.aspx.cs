using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (IsPostBack)
        {
            Validate();
            if (IsValid && checkbox.Checked)
            {
                Session["street"] = street.Text;
                Session["province"] = province.Text;
                Session["city"] = city.Text;
                Session["country"] = country.Text;
                Session["postal "] = postal.Text;
                Response.Redirect("~/main.aspx");
            }
        }
    }

   
}
