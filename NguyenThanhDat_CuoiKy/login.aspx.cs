using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class login : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string tenDn = txtUser.Text, mk = txtPwd.Text;
            string str = "select * From KHACHHANG where TenDN = '" + tenDn + "' and MatKhau = '" + mk + "'";
            DataTable dt = con.getData(str);
            if (dt.Rows.Count > 0)
            {
                Session["UserName"] = dt.Rows[0][7].ToString();
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblNtf.Visible = true;
                lblNtf.Text = "Sai Tên Tài Khoản Và Mật Khẩu!!!";
            }
        }
        
    }
}