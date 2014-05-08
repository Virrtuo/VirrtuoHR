using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    virrtuohr_dbEntities dbContext = new virrtuohr_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UN"] != null)
            {
                string username = Request.Cookies["UN"].Values["username"];
                txtUsername.Text = username;
            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string un = txtUsername.Text;
            string pw = txtPassword.Text;

            var Auth = from usr in dbContext.users where usr.UserName == un && usr.Password == pw select usr;
            if (Auth.Count() > 0)
            {
                if (ChkRemmMe.Checked)
                {
                    HttpCookie cookie = new HttpCookie("UN");
                    cookie.Values.Add("username", txtUsername.Text);
                    cookie.Expires = DateTime.Now.AddDays(15);
                    Response.Cookies.Add(cookie);
                }
                else
                {
                    HttpCookie cookie = new HttpCookie("UN");
                    cookie.Values.Add("username", txtUsername.Text);
                    cookie.Expires = DateTime.Now.AddDays(-1d);
                    Response.Cookies.Add(cookie);
                }

                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, true);
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblErrorMsg.Text = "Login Failed. Please Provide Valid Credential.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                lblErrorMsg.Visible = true;
            }
        }
        catch (Exception ex)
        {
            lblErrorMsg.Text = ex.Message.ToString();
            lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            lblErrorMsg.Visible = true;
        }
    }
}