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

public partial class user_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection thisConnection = new SqlConnection(dbConnection);
        SqlCommand thisCommand = thisConnection.CreateCommand();
        thisCommand.CommandText = "select * from event where username =@user and password=@pass;";
        thisCommand.Parameters.AddWithValue("@user", TextBox1.Text);
        thisCommand.Parameters.AddWithValue("pass", TextBox2.Text);


        SqlDataAdapter sda = new SqlDataAdapter(thisCommand);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        thisConnection.Open();
        int i = thisCommand.ExecuteNonQuery();
        thisConnection.Close();
        if (dt.Rows.Count > 0)
        {

            Session["user_type"] = "user";
            Response.Redirect("user-home.aspx");
            Session.RemoveAll();
        }
        else
        {
            Label1.Text = "You're username and word is incorrect";


        }  
    }
}
