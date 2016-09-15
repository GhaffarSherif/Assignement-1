using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfileTableControl : System.Web.UI.UserControl
{
    protected string username;

    public event EventHandler viewEvent = null;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        viewButton.CommandArgument = Username;
    }

    public void viewEventHandler(object sender, EventArgs e)
    {
        if (viewEvent != null)
            viewEvent(sender, e);
    }
}