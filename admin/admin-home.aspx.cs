using System;
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
using System.Web.Security;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["type"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
        


        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select count(*) from contact_us where status = 'Active';";
        thisConnection.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();
        while (reader.Read())
        {Label1.Text = reader.IsDBNull(0) ? "0" : reader.GetInt32(0).ToString();}
        thisConnection.Close();


        thisCommand.CommandText = "select count(*) from event where status = 'Active';";
        thisConnection.Open();
        SqlDataReader reader1 = thisCommand.ExecuteReader();
        while (reader1.Read())
        { Label2.Text = reader1.IsDBNull(0) ? "0" : reader1.GetInt32(0).ToString(); }
        thisConnection.Close();

        thisCommand.CommandText = "select count(*) from donor;";
        thisConnection.Open();
        SqlDataReader reader2 = thisCommand.ExecuteReader();
        while (reader2.Read())
        { Label3.Text = reader2.IsDBNull(0) ? "0" : reader2.GetInt32(0).ToString(); }
        thisConnection.Close();

        thisCommand.CommandText = "select sum(unit) from blood_collection;";
        thisConnection.Open();
        SqlDataReader reader3 = thisCommand.ExecuteReader();
        while (reader3.Read())
        { Label4.Text = reader3.IsDBNull(0) ? "0" : reader3.GetInt32(0).ToString();  }
        thisConnection.Close();
    }
}
