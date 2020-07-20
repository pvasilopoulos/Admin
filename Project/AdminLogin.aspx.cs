using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Check;

public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=182.50.133.110;Persist Security Info=True;User ID=ParkingB;Password=Ymjd39?2");

    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("P237", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="" && TextBox2.Text=="")
        {
            Page.ClientScript.RegisterStartupScript(GetType(),"msgtype","alert('Enter ID and Pasword !!!')",true);
        }
        else
        {
                if(TextBox1.Text=="pvasilopoulos")
                {
                    if(TextBox2.Text=="pvasilopoulos")
                        {
                            Session["admin"] = "admin";
                            Response.Redirect("AddSlots.aspx");
                        }
                     else
                         {
                            Page.ClientScript.RegisterStartupScript(GetType(),"msgtype","alert('Invalid Password !!!')",true);
                        }
               }

            else
                {
                     Page.ClientScript.RegisterStartupScript(GetType(),"msgtype","alert('Invalid ID !!!')",true);
                }
               
         }
            
        }
    
}