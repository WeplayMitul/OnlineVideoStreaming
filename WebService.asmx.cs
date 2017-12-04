using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace OnlineVideoStreaming
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
       
        //[WebMethod]
        //public List<string> GetAutoCompleteData(string username)
        //{
        //    List<string> result = new List<string>();
        //    using (SqlConnection con = new SqlConnection(@"Data Source=PALAK\SQLEXPRESS;Initial Catalog=DBLiveStreaming;Integrated Security=True"))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("select DISTINCT videoName from tblVideoAdd where videoName LIKE '%'+@SearchText+'%'", con))
        //        {
        //            con.Open();
        //            cmd.Parameters.AddWithValue("@SearchText", videoName);
        //            SqlDataReader dr = cmd.ExecuteReader();
        //            while (dr.Read())
        //            {
        //                result.Add(dr["videoName"].ToString());
        //            }
        //            return result;
        //        }
        //    }
        //}

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
    }
}
