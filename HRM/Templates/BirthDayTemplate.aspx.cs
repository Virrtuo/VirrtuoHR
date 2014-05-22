using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Templates_BirthDayTemplate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string bodyHtml
    {
        get
        {
            return HttpUtility.HtmlDecode(Editor_textArea.Value);
        }
        set
        {
            Editor_textArea.Value = value;
        }
    }
   
}