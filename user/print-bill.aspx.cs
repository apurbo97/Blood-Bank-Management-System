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

public partial class user_print_bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lb_did.Text = Request.QueryString["did"];
        lb_date.Text = Request.QueryString["rgdy"];
        lb_name.Text = Request.QueryString["name"];
        lb_addr.Text = Request.QueryString["addr"];
        lb_mob.Text = Request.QueryString["mob"];
        if (Session["bg"] != null)
        {
            lb_bg.Text = Session["bg"].ToString();
        }
       
        lb_unit.Text = Request.QueryString["unit"];
    }
}
