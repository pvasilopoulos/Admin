using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Persist Security Info=True;User ID=ParkingB;Password=Ymjd39?2");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string kl = "select UId,Name,Mobile,Email from Cust";
        da = new SqlDataAdapter(kl, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}