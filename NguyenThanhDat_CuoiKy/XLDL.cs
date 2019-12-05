
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for XLDL
/// </summary>
namespace NguyenThanhDat_CuoiKy
{
    public class XLDL
    {
        public SqlConnection cnn;
        public XLDL()
        {
            cnn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cnen"].ConnectionString);
        }
        public DataTable getData(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataSet GetDataSet(string str)
        {
            SqlDataAdapter da = new SqlDataAdapter(str, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void exel(string str)
        {
            cnn.Open();
            SqlCommand cmd = new SqlCommand(str, cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
    }
}