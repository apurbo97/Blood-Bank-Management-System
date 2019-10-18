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


public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        //if(TextBox1.Text =="")
        //{
        //    Response.Write("<script>alert('Please enter Name')</script>");
        //}
        //    int i;
        //if (Convert.ToInt32( TextBox2.Text ) <= 10 || Convert.ToInt32( TextBox2.Text) > 10 || !int.TryParse(TextBox2.Text, out i))
        //{
        //    Response.Write("<script>alert('Please enter Valid Mobile No')</script>");
        //}
        //else
        //{
        
        string date = System.DateTime.Now.ToString();
        string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
        SqlConnection conn = new SqlConnection(dbConnection);
        int ID = 0;
        
        SqlCommand cmdid = conn.CreateCommand();
        cmdid.CommandText = "select MAX(id) from contact_us;";
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
        


        SqlCommand cmd = conn.CreateCommand();

        cmd.Parameters.Add("@name", SqlDbType.Text);
        cmd.Parameters["@name"].Value = TextBox1.Text;

        cmd.Parameters.Add("@email", SqlDbType.Text);
        cmd.Parameters["@email"].Value = TextBox4.Text;

        cmd.Parameters.Add("@mobile", SqlDbType.Text);
        cmd.Parameters["@mobile"].Value = TextBox2.Text;

        cmd.Parameters.Add("@disc", SqlDbType.Text);
        cmd.Parameters["@disc"].Value = TextBox3.Text;


        cmd.CommandText = " insert into contact_us (id,name,email,mobile,disc,status,date) values (" + ID + ",@name,@email,@mobile,@disc,'Active','" + date + "');";
        conn.Open();
        
        int result = cmd.ExecuteNonQuery();

        Label1.Text="Your Request is Send, We will coontact you soon...";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        

        conn.Close();
        
    }
    //}
}
