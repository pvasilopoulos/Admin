using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewBooking : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Persist Security Info=True;User ID=ParkingB;Password=Ymjd39?2");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string dt = DateTime.Now.ToShortDateString();
            dt = dfun(dt);
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string kl = "select TId,Plot,Slot,ID,Date,time,etime,UId,Rs from BSlots where Date='" + dt + "'";
            da = new SqlDataAdapter(kl, con);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate.Date == null)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Select From Date !!!')", true);

        }
        else if (Calendar2.SelectedDate.Date == null)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Select To Date !!!')", true);
        }
        else
        {
            string f1 = Calendar1.SelectedDate.ToShortDateString();
            f1 = dfun(f1);
            string f2 = Calendar2.SelectedDate.ToShortDateString();
            f2 = dfun(f2);
            DateTime dt = Convert.ToDateTime(f1);
            DateTime dt1 = Convert.ToDateTime(f2);
            if (dt > dt1)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select Valid  Date  !!!')", true);
            }
            else
            {
                SqlDataAdapter da;
                DataSet ds = new DataSet();
                string kl = "select TId,Plot,Slot,ID,Date,time,etime,UId,Rs from BSlots where Date between '" + f1 + "' and '" + f2 + "'";
                da = new SqlDataAdapter(kl, con);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
        }
    }
    public string dfun(string str)
    {
        DateTime dt = Convert.ToDateTime(str);
        string s = dt.ToString("yyyy/MM/dd");
        return s;
    }
}