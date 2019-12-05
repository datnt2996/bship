using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class DangNhapCuaHang : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserNameStore"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenDn = txtUser.Text, mk = txtPwd.Text;
            string str = "select TenDNCH,NgayDK,ThanhToan From CUAHANG where TenDNCH = '" + tenDn + "' and MatKhauCH = '" + mk + "'";
            DataTable dt = con.getData(str);
            if (dt.Rows.Count > 0)
            {
                DateTime time = DateTime.Now;
                DateTime timeDk = Convert.ToDateTime(dt.Rows[0][1].ToString());
                System.TimeSpan diff2 = time -timeDk;
                if (diff2.Days >= 10 && !dt.Rows[0][2].ToString().Equals("True"))
                {
                    Response.Write("<script> alert('Bạn phải thanh toán dịch vụ để có thể tiếp tục');</script>");
                }
                else
                {
                    Session["UserNameStore"] = dt.Rows[0][0].ToString();
                    Response.Redirect("~/CHQLSanPham.aspx");
                }
            }
            else
            {
                lblNtf.Visible = true;
                lblNtf.Text = "Sai Tên Tài Khoản Và Mật Khẩu!!!";
            }
        }
    }
}