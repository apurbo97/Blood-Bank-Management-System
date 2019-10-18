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

public partial class admin_blood_collection : System.Web.UI.Page
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
        thisCommand.CommandText = "select sum(unit),blood_group,location from blood_collection group by location,blood_group order by location;";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
            int unit = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
            string bg = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
            string location = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2);


            htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + location + "</td><td>" + bg + "</td><td>" + unit + "</td></tr>";
            
            slno++;
        }

        thisConnection.Close();
        return htmlStr;
    }
}
