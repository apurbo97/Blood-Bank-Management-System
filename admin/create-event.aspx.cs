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


public partial class admin_create_event : System.Web.UI.Page
{

    static string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
    SqlConnection thisConnection = new SqlConnection(dbConnection);
    static int test = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = System.DateTime.Now.ToString();
        int ID = 0;
        int DID = 0;

        SqlCommand cmdid = thisConnection.CreateCommand();
        cmdid.CommandText = "select MAX(id) from event;";
        thisConnection.Open();

        SqlDataReader reader = cmdid.ExecuteReader();
        while (reader.Read())
        {
            if (reader.IsDBNull(0) || reader.GetInt32(0).ToString() == "")
            {
                ID = 1;

            }
            else
            {
                int rid = reader.GetInt32(0);
                ID = rid + 1;

            }
        }

        thisConnection.Close();
        SqlCommand cmd = thisConnection.CreateCommand();

        cmd.Parameters.Add("@name", SqlDbType.Text);
        cmd.Parameters["@name"].Value = TextBox1.Text;

        cmd.Parameters.Add("@address", SqlDbType.Text);
        cmd.Parameters["@address"].Value = TextBox2.Text;

        cmd.Parameters.Add("@location", SqlDbType.Text);
        cmd.Parameters["@location"].Value = DropDownList1.Text;

        cmd.Parameters.Add("@date_from", SqlDbType.DateTime);
        cmd.Parameters["@date_from"].Value = TextBox3.Text;

        cmd.Parameters.Add("@date_to", SqlDbType.DateTime);
        cmd.Parameters["@date_to"].Value = TextBox4.Text;

        cmd.Parameters.Add("@time", SqlDbType.Text);
        cmd.Parameters["@time"].Value = TextBox5.Text + TextBox6.Text;

        cmd.Parameters.Add("@username", SqlDbType.Text);
        cmd.Parameters["@username"].Value = TextBox7.Text;

        cmd.Parameters.Add("@password", SqlDbType.Text);
        cmd.Parameters["@password"].Value = TextBox8.Text;



        cmd.CommandText = "insert into event (id,event_name,address,location,date_from,date_to,timing,status,date_added,username,password) values (" + ID + ",@name,@address,@location,@date_from,@date_to,@time,'Active','" + date + "',@username,@password);";

        thisConnection.Open();

        int result = cmd.ExecuteNonQuery();

        Label1.Text = "Event Created Successfully...";



        thisConnection.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        DropDownList1.ClearSelection();
    }
}
