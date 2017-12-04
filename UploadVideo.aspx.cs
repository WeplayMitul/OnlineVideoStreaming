using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace OnlineVideoStreaming
{
    public partial class UploadVideo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

            

            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            con.Open(); 
            FileUpload1.SaveAs(Server.MapPath("~/video/") + Path.GetFileName(FileUpload1.FileName));
            String link = "video/" + Path.GetFileName(FileUpload1.FileName);
            link = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";
            String query = "Insert into tblVideosAdd(videoName,videoAuthor,addVideo,videoCategory,emailId,isActive,isDelete,createdDate,modifiedDate) values('" + txtVname.Text + "','" + txtAname.Text + "','" + link + "','" + DDVideoCategory.SelectedValue + "','" +TextBox1.Text+ "','" + 1 + "','" + 0 + "',getdate(),getdate())";
            SqlCommand cmd = new SqlCommand(query,con);

            Label2.Text = "Video Data Has Been Uploaded and Saved Successfully";
            txtVname.Text = "";
            txtAname.Text = "";
            cmd.ExecuteNonQuery();
            con.Close();
       }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUploadVideo.aspx");
        }
    }
}