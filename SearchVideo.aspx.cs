﻿using System;
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
    public partial class SearchVideo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBLiveStreamingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}