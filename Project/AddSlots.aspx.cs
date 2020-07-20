using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AddSlots : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Persist Security Info=True;User ID=ParkingB;Password=Ymjd39?2");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["slot"] == "slot")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Slot Added !!!')", true);
            Session["slot"] = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Fill up the details !!!')", true);
        }
        else if (Convert.ToInt32(TextBox3.Text) > 10)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Number of Slot should be less than 10 !!!')", true);
        }
        else
        {
            Session["Plot"] = TextBox1.Text;
            Session["Slot"] = TextBox2.Text;
            Session["Count"] = TextBox3.Text;
            Session["Pin"] = TextBox4.Text;
            Response.Redirect("Default.aspx");
        }
    }
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
            string s = "insert into Slots values('" + plot + "','" + Slot + "','" + Count + "','" + lats + "','" + longs + "','" + pin + "')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["slot"] = "slot";
            Response.Redirect("AddSlots.aspx");
            //Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Lat : "+lats+", Long : "+longs+"');", true);
        }
    }
}