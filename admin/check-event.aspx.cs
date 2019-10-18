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

public partial class admin_event_details : System.Web.UI.Page
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
        thisCommand.CommandText = "SELECT * from event";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            


           
           
                int id = reader.IsDBNull(0) ? 0 : reader.GetInt32(0);
                string name = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);
                string address = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2);
                string location = reader.IsDBNull(3) || reader.GetString(3) == "" ? "-" : reader.GetString(3);
                string datefrom = reader.IsDBNull(4) ? "-" : reader.GetDateTime(4).ToString("dd/MM/yyyy");
                string dateto = reader.IsDBNull(5) ? "-" : reader.GetDateTime(5).ToString("dd/MM/yyyy");
                string time = reader.IsDBNull(6) || reader.GetString(6) == "" ? "-" : reader.GetString(6);
                string status = reader.IsDBNull(7) || reader.GetString(7) == "" ? "-" : reader.GetString(7);
                string created_on = reader.IsDBNull(8) ? "-" : reader.GetDateTime(8).ToString("dd/MM/yyyy");
                string user = reader.IsDBNull(9) || reader.GetString(9) == "" ? "-" : reader.GetString(9);
                string pass = reader.IsDBNull(10) || reader.GetString(10) == "" ? "-" : reader.GetString(10);


                htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + name + "</td><td>" + address + "</td>";
                htmlStr = htmlStr + "<td>" + location + "</td><td> " + datefrom + " To " + dateto + "</td>";
                htmlStr = htmlStr + "<td>" + time + "</td><td>" + status + "</td><td> "+created_on+"</td>";
                htmlStr = htmlStr + "<td>" + user + "</td><td>" + pass + "</td><td> <a href='end-event.aspx?val=" + id + "' class='btn btn-warning'>End Event</a></td></tr>";
                slno++;



            


            
        }
        thisConnection.Close();
        return htmlStr;
    }

}
