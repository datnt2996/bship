using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class headerAdmin : System.Web.UI.UserControl
    {
        XLDL cn = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserNameADM"] == null)
                Response.Redirect("loginAdmin.aspx");
            else
            {
                lblAdmUser.Text = cn.getData("Select TenNV From NHANVIEN Where TenDNNV = '" + Session["UserNameADM"].ToString() + "'").Rows[0][0].ToString();
            }
        }
    }
}