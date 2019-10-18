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

public partial class admin_contact_data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
    public string getWhileLoopData()
    {
        string htmlStr = "";
        int slno = 1;
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT * from contact_us";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            string Name = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
            string email = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2).ToString();
            string mobile = reader.IsDBNull(3) || reader.GetString(3) == "" ? "-" : reader.GetString(3);
            string desc = reader.IsDBNull(4) || reader.GetString(4) == "" ? "-" : reader.GetString(4);
            string status = reader.IsDBNull(5) || reader.GetString(5) == "" ? "-" : reader.GetString(5);
           
            string date = reader.IsDBNull(6) ? "-" : reader.GetDateTime(6).ToString();

            htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + Name + "</td><td>" + email + "</td>";
            htmlStr = htmlStr + "<td>" + mobile + "</td><td>" + desc + "</td><td>" + status + "</td>";
            htmlStr = htmlStr + "<td>" + date + "</td><td><a href='request-close.aspx?val=" + reader.GetInt32(0) + "' class='btn btn-info'>Close</a></td></tr>";
            slno++;
        }

        thisConnection.Close();
        return htmlStr;
    }
}
