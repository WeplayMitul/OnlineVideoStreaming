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

    public partial class Login : System.Web.UI.Page
    {   
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        //SqlConnection con = new SqlConnection(@"Data Source=PALAK\SQLEXPRESS;Initial Catalog=DBLiveStreaming;Integrated Security=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

           

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string txt = txtemailId.Text;
            Session["uname"] = txt;


            con.Open();
            SqlCommand cmd = new SqlCommand("spLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("emailId", txtemailId.Text.ToString());
            cmd.Parameters.AddWithValue("pwd", txtPwd.Text.ToString());


            int usercount = (Int32)cmd.ExecuteScalar();

            if (usercount == 1)
            {
               //Response.Redirect("log.aspx");
                Response.Redirect("ViewUploadVideo.aspx"); 
               
            }

            else
            {

                string message = "Please Enter Valid UserName And Password";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            }

            con.Close();
         }

     

    }
}