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

public partial class search_blood : System.Web.UI.Page
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


        thisCommand.CommandText = "select SUM(unit),blood_group  from blood_collection where location = '"+DropDownList1.SelectedValue+"' and blood_group = '"+DropDownList2.SelectedValue+"'  group by blood_group; ";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {

            string location = DropDownList1.SelectedValue;
                string bg = reader.GetString(1);
                int unit = reader.GetInt32(0);
                htmlStr = htmlStr + " <tr class='odd gradeX'><td>" + slno + "</td><td>" + location + "</td><td>" + bg + "</td>";
                htmlStr = htmlStr + "<td>" + unit + "</td><td> <a href='contact.aspx' class='btn btn-danger'>Contact us</a></td></tr>";
                slno++;
          
            

        }

        thisConnection.Close();
        }
   
}
