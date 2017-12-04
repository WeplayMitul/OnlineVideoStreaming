using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace OnlineVideoStreaming
{
    public partial class GoLive : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=PALAK\SQLEXPRESS;Initial Catalog=DBLiveStreaming;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //    using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            //    {
            //        byte[] bytes = br.ReadBytes((int)FileUpload1.PostedFile.InputStream.Length);
            //        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //        using (SqlConnection con = new SqlConnection(strConnString))
            //        {
            //            using (SqlCommand cmd = new SqlCommand())
            //            {
            //                cmd.CommandText = "insert into tblFiles(Name, ContentType, Data) values (@Name, @ContentType, @Data)";
            //                cmd.Parameters.AddWithValue("@Name", Path.GetFileName(FileUpload1.PostedFile.FileName));
            //                cmd.Parameters.AddWithValue("@ContentType", "video/mp4");
            //                cmd.Parameters.AddWithValue("@Data", bytes);
            //                cmd.Connection = con;
            //                con.Open();
            //                cmd.ExecuteNonQuery();
            //                con.Close();
            //            }
            //        }
            //    }
            //    Response.Redirect(Request.Url.AbsoluteUri);
            //}
        }
    }
}