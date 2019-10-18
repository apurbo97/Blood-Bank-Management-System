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

public partial class admin_delete_donor : System.Web.UI.Page
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
        thisCommand.CommandText = "delete from donor where id = " + val;
        thisConnection.Open();

        int restlt = thisCommand.ExecuteNonQuery();
        Response.Redirect("donor-list.aspx");
        thisConnection.Close();
    }
}
