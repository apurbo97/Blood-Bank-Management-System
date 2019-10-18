using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class admin_end_event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["type"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
        string val = Request.QueryString["val"];
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "update event set status = 'Ended' where id = " + val;
        thisConnection.Open();

        int restlt = thisCommand.ExecuteNonQuery();
        Response.Redirect("check-event.aspx");
        thisConnection.Close();
    }
}
