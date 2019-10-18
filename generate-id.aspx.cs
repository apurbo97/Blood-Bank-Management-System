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

public partial class generate_id : System.Web.UI.Page
{
    static int ID = 0;
    static int DID = 0;
    static string date = System.DateTime.Now.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection conn = new SqlConnection(dbConnection);
        

        SqlCommand cmdid = conn.CreateCommand();
        cmdid.CommandText = "select MAX(id) from donor;";
        conn.Open();

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


        conn.Close();

        SqlCommand cmddid = conn.CreateCommand();
        cmddid.CommandText = "select MAX(doner_id) from donor;";
        conn.Open();

        SqlDataReader reader1 = cmddid.ExecuteReader();
        while (reader1.Read())
        {
            if (reader1.IsDBNull(0) || reader1.GetInt32(0).ToString() == "")
            {
                DID = 1;

            }
            else
            {
                int drid = reader1.GetInt32(0);
                DID = drid + 1;

            }
        }


        conn.Close();



        SqlCommand cmd = conn.CreateCommand();

        cmd.Parameters.Add("@name", SqlDbType.Text);
        cmd.Parameters["@name"].Value = TextBox1.Text;

        cmd.Parameters.Add("@mobile", SqlDbType.Text);
        cmd.Parameters["@mobile"].Value = TextBox2.Text;

        cmd.Parameters.Add("@address", SqlDbType.Text);
        cmd.Parameters["@address"].Value = TextBox3.Text;

        cmd.Parameters.Add("@age", SqlDbType.Int);
        cmd.Parameters["@age"].Value = TextBox4.Text;

        cmd.Parameters.Add("@weight", SqlDbType.Int);
        cmd.Parameters["@weight"].Value = TextBox5.Text;

        cmd.Parameters.Add("@blood_group", SqlDbType.Text);
        cmd.Parameters["@blood_group"].Value = DropDownList1.SelectedValue;


       
        cmd.CommandText = "insert into donor (id,name,mobile,address,age,weight,blood_group,registation_date,doner_id) values (" + ID + ",@name,@mobile,@address,@age,@weight,@blood_group,'" + date + "'," + DID + ");";
        
        conn.Open();

        int result = cmd.ExecuteNonQuery();

     Label1.Text = "Your Donor Id is: " + DID;

     //TextBox1.Text = "";
     //  TextBox2.Text = "";
     //   TextBox4.Text = "";
     //   TextBox5.Text = "";
     //   TextBox3.Text = "";
     //   DropDownList1.ClearSelection();

        Button1.Enabled = true;
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("print.aspx?name="+TextBox1.Text+"&did="+Label1.Text+"&date="+ date);
    }
}
