using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class SPTheoCuaHang : System.Web.UI.Page
    {

        XLDL con = new XLDL();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaCH"] != null)
            {
                string query = "select * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH and H.MaCH = '" + Request.QueryString["MaCH"].ToString() + "'"; ;
                if (!IsPostBack)
                {
                    dtlProduct.DataSource = con.GetDataSet(query);
                    dtlProduct.DataBind();
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}