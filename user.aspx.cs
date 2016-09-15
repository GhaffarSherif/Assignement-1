using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

public partial class user : System.Web.UI.Page
{
    protected UserDataContext dataContext;
    protected string selectedUser;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        NameValueCollection GET = Request.QueryString;
        selectedUser = GET["profile"];
    }

    protected void sendMessage(object sender, EventArgs e)
    {
        dataContext = new UserDataContext();


        Message msg = new Message
        {
            MessageText = messageTextBox.Text,
            Sender = (string)Session["username"],
            Reciever = selectedUser,
            Time = DateTime.Now.TimeOfDay
        };

        dataContext.Messages.InsertOnSubmit(msg);
        dataContext.SubmitChanges();
        messageTextBox.Text = "";
        Response.Write("<script>alert('Message sent!')</script>");
    }
}