using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class ucHeader : System.Web.UI.UserControl
    {
        XLDL xn = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"]!=null)
            {
                string STR = "SELECT [TenKH] FROM[dbo].[KHACHHANG] WHERE[TenDN] ='" + Session["UserName"].ToString() + "'";
                lblDN.Text = xn.getData(STR).Rows[0][0].ToString();
                lblLout.Visible = true;
            }
        }
    }
}