using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Persist Security Info=True;User ID=ParkingB;Password=Ymjd39?2");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lats = lat.Value;
        string longs = lng.Value;
        string plot = Session["Plot"].ToString();
        string Slot = Session["Slot"].ToString();
        string Count = Session["Count"].ToString();
        string pin = Session["Pin"].ToString();
        SqlCommand cmd;
        con.Open();
        string s = "insert into Slots values('" + plot + "','" + Slot + "','" + Count + "','"+lats+"','"+longs+"','"+pin+"')";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["slot"] = "slot";
        Response.Redirect("AddSlots.aspx");
        //Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Lat : "+lats+", Long : "+longs+"');", true);
    }
}