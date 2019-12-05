using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class SanPham : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        string query = "select * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH";
        protected void Page_Load(object sender, EventArgs e)
        {
             dtlProduct.DataSource = con.GetDataSet(query);
                dtlProduct.DataBind();
        }

        protected void ntnSearch_Click(object sender, EventArgs e)
        {
            query = "select * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH and TenSP like N'%"+txtSearch.Text+"%'";
            dtlProduct.DataSource = con.GetDataSet(query);
            dtlProduct.DataBind();
        }
    }
}