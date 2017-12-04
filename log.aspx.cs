using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace OnlineVideoStreaming
{
    public partial class log : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        //SqlConnection con = new SqlConnection(@"Data Source=PALAK\SQLEXPRESS;Initial Catalog=DBLiveStreaming;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["mycookies"] == null)
            {


                    Response.Redirect("log.aspx");
           }
           
            else
            {
                SqlDataAdapter sda = new SqlDataAdapter("select * from tblUser where emailId='" + Request.Cookies["myCookies"]["emailId"].ToString() + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Label1.Text = dt.Rows[0]["fName"].ToString();
                Label2.Text = dt.Rows[0]["fName"].ToString() + "" + dt.Rows[0]["lName"].ToString();
                Label3.Text = dt.Rows[0]["emailId"].ToString();
                if (dt.Rows[0]["userImage"].ToString().Length > 1)
                {
                    Image1.ImageUrl = dt.Rows[0]["userImage"].ToString();
                    Image2.ImageUrl = dt.Rows[0]["userImage"].ToString();
                }
                else
                {
                    Image1.ImageUrl = "Images/girl.png";
                    Image2.ImageUrl = "Images/girl.png";
                }

            }
            }
        
       

        protected void Profile1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Logout_Click1(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("myCookies");
            Cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(Cookie);
            Cookie = new HttpCookie("emailId");
            Cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Redirect("Login.aspx");
        }
    }
}