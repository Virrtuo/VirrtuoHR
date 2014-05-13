using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    virrtuohr_dbEntities dbContext = new virrtuohr_dbEntities();
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            string assID = txtAssociateID.Text;
            DateTime doj = Convert.ToDateTime(txtDateofjoining.Text);
            string fname = txtFirstname.Text;
            string lname = txtLastname.Text;
            string designation = txtDesignation.Text;
            string gender = rdbtnGender.SelectedValue;
            int status = Convert.ToInt16(drpStatus.SelectedValue);

            empbasic empBasic = new empbasic();
            empBasic.AssID = assID;
            empBasic.DOJ = doj;
            empBasic.FName = fname;
            empBasic.LName = lname;
            empBasic.Designation = designation;
            empBasic.Gender = gender;
            empBasic.Status = status;
            dbContext.empbasics.Add(empBasic);
            dbContext.SaveChanges();

            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "Saved Successfully";
        }
        catch (Exception ex)
        {
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = ex.Message.ToString();
        }
        
    }
}