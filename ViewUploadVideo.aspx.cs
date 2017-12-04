using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVideoStreaming
{
    public partial class ViewUploadVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
                Response.Redirect("Login.aspx");
            else
                Label3.Text = (String)Session["uname"];
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            foreach (DataListItem lst in DataList1.Items)
            {

                Label Like = (Label)lst.FindControl("Like");
                ViewState["count"] = Convert.ToInt32(ViewState["count"]) + 1;
                Like.Text = ViewState["count"].ToString();


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}