using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace OnlineVideoStreaming
{
    public partial class UserImage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        SqlCommand cmd;
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

    

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("UploadVideo.aspx");

        }

        //protected void btnSearch_Click1(object sender, EventArgs e)
        //{
        //    //con.Open();

        //    //String query = "select *from tblVideoAdd where videoCategory='" + ddSearch.SelectedValue + "' ";
        //    //SqlCommand cmd = new SqlCommand(query, con);


        //    //cmd.ExecuteNonQuery();
        //    //Response.Redirect("SearchVideo.aspx");
        //    //con.Close();

        //}
        private void showData()
        {
            cmd = new SqlCommand("Select * from tblVideosAdd", con);
            con.Open();
            DataTable dt = new DataTable();
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            con.Close();
            //DataList1.DataSource = dt;
            //DataList1.DataBind();
        
        }

        protected void lnkDelete_Command(object sender, CommandEventArgs e)
        {
            cmd = new SqlCommand("Delete from tblVideosAdd where vId="+e.CommandArgument.ToString()+"",con);
            con.Open();
            cmd.ExecuteNonQuery();
          
            con.Close();
            showData();
           // Response.Write("Delete Successfully");
            
        }
       
    }
}