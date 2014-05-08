using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.EntityModel;

public partial class Accounts_Register : System.Web.UI.Page
{
    virrtuohr_dbEntities dbContext = new virrtuohr_dbEntities();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string un = txtUsername.Text;
            string pw = txtPassword.Text;
            string assID = txtAssociateID.Text;

            user userTbl = new user();
            userTbl.UserName = un;
            userTbl.Password = pw;
            userTbl.AssID = assID;

            dbContext.users.Add(userTbl);
            dbContext.SaveChanges();

            Response.Redirect("RegistrationSuccess.aspx");
        }
        catch (Exception ex)
        {
            lblErrorMsg.Text = ex.Message.ToString();
        }
    }

    protected void txtAssociateID_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string assID = txtAssociateID.Text;
            var getAssID = from emp in dbContext.empbasics where emp.AssID == assID select emp;

            if (getAssID.Count() == 0)
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                lblErrorMsg.Text = "You are not in Association.";
            }
            else
            { }

           
        }
        catch (Exception ex)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            lblErrorMsg.Text = ex.Message.ToString();
        }
    }
}