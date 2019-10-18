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

public partial class sales_check_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string getWhileLoopData()
    {
        string htmlStr = "";
        int slno = 1;
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "SELECT * from blood_sale";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
            
            string Name = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
            string Mobile = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2).ToString();
            string address = reader.IsDBNull(3) || reader.GetString(3) == "" ? "-" : reader.GetString(3);
            string bg = reader.IsDBNull(4) || reader.GetString(4) == "" ? "-" : reader.GetString(4);
            string unit = reader.IsDBNull(5) || reader.GetString(5) == "" ? "-" : reader.GetString(5);
            string price = reader.IsDBNull(6) || reader.GetString(6) == "" ? "-" : reader.GetString(6);
            string date = reader.IsDBNull(7) ? "-" : reader.GetDateTime(7).ToString();

            htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + date + "</td><td>" + Name + "</td>";
            htmlStr = htmlStr + "<td>" + Mobile + "</td><td>" + address + "</td><td>" + bg + "</td>";
            htmlStr = htmlStr + "<td>" + unit + "</td><td>" + price + "</td><td><a href='#' class='btn btn-info'>Bill</a></td></tr>";
            slno++;
        }

        thisConnection.Close();
        return htmlStr;
    }
}
