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

public partial class admin_donor_list : System.Web.UI.Page
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
        thisCommand.CommandText = "SELECT * from donor";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
            int id = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
            string donor_id = reader.IsDBNull(6) ? "-" : reader.GetInt32(6).ToString();
            string Name = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
            string Mobile = reader.IsDBNull(2) ? "-" : reader.GetString(2).ToString();
            string age = reader.IsDBNull(3) || reader.GetString(2) == "" ? "-" : reader.GetInt32(3).ToString();
            string weight = reader.IsDBNull(4) ? "-" : reader.GetInt32(4).ToString();
            string address = reader.IsDBNull(5) || reader.GetString(5) == "" ? "-" : reader.GetString(5);
            string bg = reader.IsDBNull(7) || reader.GetString(7) == "" ? "-" : reader.GetString(7);
            string unit = reader.IsDBNull(9) || reader.GetString(9) == "" ? "-" : reader.GetString(9);
            string rgdt = reader.IsDBNull(8) ? "-" : reader.GetDateTime(8).ToString();

            htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + donor_id + "</td><td>" + Name + "</td>";
            htmlStr = htmlStr + "<td>" + Mobile + "</td><td>" + address + "</td><td>" + bg + "</td>";
            htmlStr = htmlStr + "<td>" + age + "</td><td>" + weight + "</td><td>" + unit + "</td>" + "</td><td>" + rgdt + "</td><td><a href='delete-donor.aspx?val="+id+"' class='btn btn-danger'>Delete</a></td></tr>";
            slno++;
        }

        thisConnection.Close();
        return htmlStr;
    }
}
