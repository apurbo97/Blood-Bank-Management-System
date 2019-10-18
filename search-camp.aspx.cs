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

public partial class search_camp : System.Web.UI.Page
{
    public static string htmlStr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        htmlStr = "";
        int slno = 1;
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();


        thisCommand.CommandText = "SELECT event_name,location,address,date_from,date_to,timing from event where status = 'Active' and location = '"+DropDownList1.SelectedValue+"';";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            string name = reader.IsDBNull(0) || reader.GetString(0) == "" ? "-" : reader.GetString(0);
            string location = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
            string address = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2);
            string datefrom = reader.IsDBNull(3) ? "-" : reader.GetDateTime(3).ToString("dd/MM/yyyy");
            string dateto = reader.IsDBNull(4) ? "-" : reader.GetDateTime(4).ToString("dd/MM/yyyy");
            string time = reader.IsDBNull(5) || reader.GetString(5) == "" ? "-" : reader.GetString(5); 

            htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + name + "</td><td>" + location + "</td>";
            htmlStr = htmlStr + "<td>" + address + "</td><td> " + datefrom + " To " + dateto + "</td>";
            htmlStr = htmlStr + "<td>" + time + "</td><td> <a href='contact.aspx' class='btn btn-warning'>Contact Us</a></td></tr>";
            slno++;



        }

        thisConnection.Close();
    }

    
}
