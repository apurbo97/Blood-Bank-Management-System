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

public partial class sales_sales_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string date = System.DateTime.Now.ToString();
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection conn = new SqlConnection(dbConnection);
        int ID = 0;
        int DID = 0;

        SqlCommand cmdid = conn.CreateCommand();
        cmdid.CommandText = "select MAX(id) from blood_sale;";
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

       


        //SqlCommand cmd = conn.CreateCommand();

        //cmd.Parameters.Add("@name", SqlDbType.Text);
        //cmd.Parameters["@name"].Value = TextBox1.Text;

        //cmd.Parameters.Add("@mobile", SqlDbType.Text);
        //cmd.Parameters["@mobile"].Value = TextBox2.Text;

        //cmd.Parameters.Add("@address", SqlDbType.Text);
        //cmd.Parameters["@address"].Value = TextBox3.Text;

        //cmd.Parameters.Add("@age", SqlDbType.Int);
        //cmd.Parameters["@age"].Value = TextBox4.Text;

        //cmd.Parameters.Add("@weight", SqlDbType.Int);
        //cmd.Parameters["@weight"].Value = TextBox5.Text;

        //cmd.Parameters.Add("@blood_group", SqlDbType.Text);
        //cmd.Parameters["@blood_group"].Value = DropDownList1.SelectedValue;



        //cmd.CommandText = "insert into donor (id,name,mobile,address,age,weight,blood_group,registation_date,doner_id) values (" + ID + ",@name,@mobile,@address,@age,@weight,@blood_group,'" + date + "'," + DID + ");";

        //conn.Open();

        //int result = cmd.ExecuteNonQuery();

        //Label1.Text = "Your Donor Id is: " + DID;
        //TextBox1.Text = "";
        //TextBox2.Text = "";
        //TextBox4.Text = "";
        //TextBox5.Text = "";
        //TextBox3.Text = "";
        //DropDownList1.ClearSelection();


        //conn.Close();
    }
}
