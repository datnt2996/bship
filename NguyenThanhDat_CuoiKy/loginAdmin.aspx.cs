using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class loginAdmin : System.Web.UI.Page
    {
        XLDL cn = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserNameADM"] = null;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            string tenDn = txtUser.Text, mk = txtPwd.Text;
            string str = "select * From NHANVIEN where TenDNNV = '" + tenDn + "' and MatKhauNV = '" + mk + "'";
            DataTable dt = cn.getData(str);
            if (dt.Rows.Count > 0)
            {

                Session["UserNameADM"] = dt.Rows[0][4].ToString();
                Response.Redirect("Administrator.aspx");
            }
            else
            {
                lblNtf.Visible = true;
                lblNtf.Text = "Sai tên tài khoản hoặc mật khẩu";
            }
        }
    }
}