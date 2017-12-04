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
    public partial class UserRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["fName"] = this.txtFname.Text.Trim();
            //Session["lName"] = this.txtLname.Text.Trim();
            //Response.Redirect("~/Login.aspx");
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection(@"Data Source=PALAK\SQLEXPRESS;Initial Catalog=DBLiveStreaming;Integrated Security=True");
            int length = FileUpload1.PostedFile.ContentLength;
            byte[] userImage = new byte[length];


            FileUpload1.PostedFile.InputStream.Read(userImage, 0, length);
            SqlCommand cmd = new SqlCommand("spInsertUser", con);  
         
            cmd.CommandType = CommandType.StoredProcedure;  
            cmd.Parameters.AddWithValue("fName", txtFname.Text);  
            cmd.Parameters.AddWithValue("mName", txtMname.Text);  
            cmd.Parameters.AddWithValue("lName", txtLname.Text);
            cmd.Parameters.AddWithValue("mobNo", txtMobNo.Text);
            cmd.Parameters.AddWithValue("@userImage", userImage);
            cmd.Parameters.AddWithValue("emailId", txtEmailId.Text);
            cmd.Parameters.AddWithValue("pwd", txtPwd.Text);
            cmd.Parameters.AddWithValue("confirmPassword", txtConfirmPassword.Text);
            cmd.Parameters.AddWithValue("gender", rbtnGender.SelectedValue);
            //cmd.Parameters.AddWithValue("userAddress",txtAddress.Text);
            cmd.Parameters.AddWithValue("city", txtCity.Text);
            cmd.Parameters.AddWithValue("country",ddCountry.SelectedValue);
            cmd.Parameters.AddWithValue("isActive","");
            cmd.Parameters.AddWithValue("isDelete","");
            cmd.Parameters.AddWithValue("createdDate","");
            cmd.Parameters.AddWithValue("modifiedDate","");
            con.Open();
           
                 cmd.ExecuteNonQuery();
                 
                 Response.Redirect("UserWelcome.aspx");
            con.Close();
          
        }
    }
}