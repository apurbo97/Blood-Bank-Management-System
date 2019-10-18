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

public partial class user_home : System.Web.UI.Page
{
    static string dbConnection = ConfigurationManager.ConnectionStrings["ConnStringDb"].ConnectionString;
    SqlConnection thisConnection = new SqlConnection(dbConnection);
    static int test = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_type"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       if(TextBox1.Text != "" )
        {
           
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT * from donor where doner_id = "+ TextBox1.Text;
            thisConnection.Open();
           
            SqlDataReader reader = thisCommand.ExecuteReader();

            TextBox2.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            Label1.Text = "ID Is Not Available...";
            TextBox3.Text = "";
            
            test = 0;
            while (reader.Read())
            {
               TextBox1.Text = reader.IsDBNull(6) ? "-" : reader.GetInt32(6).ToString();//d_id
               TextBox2.Text  = reader.IsDBNull(1) || reader.GetString(1) == "" ? "-" : reader.GetString(1);//name
               TextBox6.Text  = reader.IsDBNull(5) ? "-" : reader.GetString(5).ToString();//add
               TextBox9.Text = reader.IsDBNull(2) || reader.GetString(2) == "" ? "-" : reader.GetString(2).ToString();//mobile
               TextBox10.Text  = reader.IsDBNull(3) ? "-" : reader.GetInt32(3).ToString();//age
               TextBox11.Text = reader.IsDBNull(4)  ? "-" : reader.GetInt32(4).ToString();//weight
               //DropDownList2.SelectedValue= reader.IsDBNull(7) || reader.GetString(7) == "" ? "-" : reader.GetString(7);//bg
               TextBox3.Text = reader.IsDBNull(9) || reader.GetString(9) == "" ? "-" : reader.GetString(9);//unit
               Label1.Text = "ID Is Available...";
               test = 1;
            }

            thisConnection.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
        
        if (test == 1)
        {



            SqlCommand cmd = thisConnection.CreateCommand();


            string date = System.DateTime.Now.ToString();

            cmd.Parameters.Add("@name", SqlDbType.Text);
            cmd.Parameters["@name"].Value = TextBox2.Text;

            cmd.Parameters.Add("@mobile", SqlDbType.Text);
            cmd.Parameters["@mobile"].Value = TextBox9.Text;

            cmd.Parameters.Add("@address", SqlDbType.Text);
            cmd.Parameters["@address"].Value = TextBox6.Text;

            cmd.Parameters.Add("@age", SqlDbType.Int);
            cmd.Parameters["@age"].Value = TextBox10.Text;

            cmd.Parameters.Add("@weight", SqlDbType.Int);
            cmd.Parameters["@weight"].Value = TextBox11.Text;

            cmd.Parameters.Add("@blood_group", SqlDbType.Text);
            cmd.Parameters["@blood_group"].Value = DropDownList2.SelectedValue;

            cmd.Parameters.Add("@unit", SqlDbType.Text);
            cmd.Parameters["@unit"].Value = TextBox3.Text;

            cmd.Parameters.Add("@did", SqlDbType.Int);
            cmd.Parameters["@did"].Value = TextBox1.Text;

            cmd.CommandText = "update donor set name=@name,mobile=@mobile,address=@address,age=@age,weight=@weight,blood_group=@blood_group,registation_date='" + date + "',unit=@unit where doner_id= @did; ";

            thisConnection.Open();

            int result = cmd.ExecuteNonQuery();

            Label1.Text = "Donor Id: " + TextBox1.Text + " is Updated";
           


            thisConnection.Close();
            
        
        
        }
        else
        { 
        
       
        string date = System.DateTime.Now.ToString();
        int ID = 0;
        int DID = 0;

        SqlCommand cmdid = thisConnection.CreateCommand();
        cmdid.CommandText = "select MAX(id) from donor;";
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

        SqlCommand cmddid = thisConnection.CreateCommand();
        cmddid.CommandText = "select MAX(doner_id) from donor;";
        thisConnection.Open();

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

    
        thisConnection.Close();
        SqlCommand cmd = thisConnection.CreateCommand();

        cmd.Parameters.Add("@name", SqlDbType.Text);
        cmd.Parameters["@name"].Value = TextBox2.Text;

        cmd.Parameters.Add("@mobile", SqlDbType.Text);
        cmd.Parameters["@mobile"].Value = TextBox9.Text;

        cmd.Parameters.Add("@address", SqlDbType.Text);
        cmd.Parameters["@address"].Value = TextBox6.Text;

        cmd.Parameters.Add("@age", SqlDbType.Int);
        cmd.Parameters["@age"].Value = TextBox10.Text;

        cmd.Parameters.Add("@weight", SqlDbType.Int);
        cmd.Parameters["@weight"].Value = TextBox11.Text;

        cmd.Parameters.Add("@blood_group", SqlDbType.Text);
        cmd.Parameters["@blood_group"].Value = DropDownList2.SelectedValue;

        cmd.Parameters.Add("@unit", SqlDbType.Text);
        cmd.Parameters["@unit"].Value = TextBox3.Text;



        cmd.CommandText = "insert into donor (id,name,mobile,address,age,weight,blood_group,registation_date,doner_id,unit) values (" + ID + ",@name,@mobile,@address,@age,@weight,@blood_group,'" + date + "'," + DID + ",@unit);";

        thisConnection.Open();

        int result = cmd.ExecuteNonQuery();

        Label1.Text = "Donor Id is: " + DID;
       
        

        thisConnection.Close();
        Label1.Text = "Donor Id is: " + DID;
    }




       
            
            
            SqlCommand cmdbdc = thisConnection.CreateCommand();

            cmdbdc.Parameters.Add("@location", SqlDbType.Text);
            cmdbdc.Parameters["@location"].Value = DropDownList1.SelectedValue;

            cmdbdc.Parameters.Add("@unit", SqlDbType.Int);
            cmdbdc.Parameters["@unit"].Value = TextBox3.Text;

            cmdbdc.Parameters.Add("@bg", SqlDbType.Text);
            cmdbdc.Parameters["@bg"].Value = DropDownList2.SelectedValue;


            //cmdbdc.CommandText = "update blood_collection set unit = @unit where location = @location and blood_group = @bg;";
            thisConnection.Open();

            cmdbdc.CommandText = "insert into blood_collection(location,unit,blood_group) values ( @location,@unit,@bg);";
            int result1 = cmdbdc.ExecuteNonQuery();
            thisConnection.Close();





            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox6.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";

        
       

        
    }
}
