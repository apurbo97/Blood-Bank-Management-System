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

public partial class about : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringDb"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (connection.State == ConnectionState.Closed)
                connection.Open();
           
        }
        catch { }
    }
}
