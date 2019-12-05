using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class ThanhToan : System.Web.UI.Page
    {
        protected Double Sum = 0;
        DataTable dtl;
        protected Double Price;
        int Dv = 1;
        XLDL cn = new XLDL();
        string[] a = { "Tp.Thủ Dầu Một", "Dĩ An", "Thuận An", "Bến Cát", "Tân Uyên", "Bầu bàng", "Dầu Tiếng" };
        string[] menu = { "Tiết Kiệm( 12- 24h)", "Nhanh( 1- 3h)" };
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < a.Length; i++)
                ddlrecipients.Items.Insert(0, new ListItem(a[i], (i).ToString()));
            for (int i = 0; i < menu.Length; i++)
                DdlMenu.Items.Insert(0, new ListItem(menu[i], (i).ToString()));
            if (Session["UserName"] == null)
            {
                Response.Write("<script> alert('bạn chưa đăng nhập!!!!')</script>");
                Response.Redirect("~/Login.aspx");
            }
            string str = "SELECT TenKH,MaKH FROM KHACHHANG WHERE TenDN = '" + Session["UserName"] + "'";
            dtl = cn.getData(str);
            lbltenKH.Text = dtl.Rows[0][0].ToString();
            if (Session["GioHang"] != null)
            {
                DataTable dt = (DataTable)Session["GioHang"];
                GvData.DataSource = dt;
                GvData.DataBind();
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Sum += Convert.ToDouble(dt.Rows[i]["ThanhTien"].ToString());
                }
            }
            else
            {
                lblTB.Text = "Giỏ Hàng Của Bạn Đang Trống!!!";
            }
        }

        protected void DdlMenu_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlMenu.SelectedItem.Value.ToString() == "0") Dv =0;
            Price = 8000 + (7000 * Convert.ToInt32(ddlrecipients.SelectedItem.Value.ToString())) * (Dv + 1);
            lblGiaGH.Text = "Giá Giao Hàng: " + Price;
        }

        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                DataTable dt = (DataTable)Session["GioHang"];
                //try
                //{
                //    for (int i = 0; i < dt.Rows.Count; i++)
                //    {
                //        cn.exel("INSERT INTO [dbo].[CTDonHang]([MaSP],[SoLuong],[DonGia],[ThanhTien])"
                //                        + "VALUES('" + dt.Rows[0][0].ToString() + "'"
                //                        + "," + dt.Rows[0][3].ToString()
                //                        + ",'" + dt.Rows[0][2].ToString() + "'"
                //                        + ",'" + dt.Rows[0][4].ToString() + "')");
                //    }
                //    lblerror1.Text += " !!!Thêm CTDT TC !   ";
                //}
                //catch (Exception ex)
                //{
                //    lblerror1.Text += " ^-^ Lỗi:" + ex;
                //}
                if (txtAddress.Text==""||txtNguoiNhan.Text==""||txtPhone.Text=="")
                {
                    lblXN.Text = "Vui lòng Nhập đầy đủ thông tin!!!";
                    return;
                }
                
                string time = Convert.ToDateTime(DateTime.Now).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
                
                string query = "INSERT INTO [dbo].[DONBANHANG]([MaKH],[NgayDH],[TriGia],[TenNguoiNhan],[DiaChiNhan],[SDTNguoiNhan],[MaDV])" +
                                 "VALUES('" + dtl.Rows[0][1].ToString() +"'"+
                                       ",'" + time + "'" +
                                       ",'" +(Price+Sum)+"'" +
                                       ",N'"+txtNguoiNhan.Text+"'" +
                                       ",N'"+txtAddress.Text+"'" +
                                       ",'"+txtPhone.Text+"'" +
                                       ","+(Dv+1)+")";
                try
                {
                    cn.exel(query);
                    lblerror2.Text += "  ^:^ Thêm Đơn Hàng Thành Công";
                    btnXacNhan.Visible = false;
                    btnTiepTucTT.Visible = true;
                }
                catch(Exception E)
                {
                    lblerror2.Text += "  ^_^ Lỗi: " + E;
                    lblerror1.Text = query;
                }
            }
        }

        protected void btnTiepTucTT_Click(object sender, EventArgs e)
        {
            Session["TriGia"] = (Price + Sum).ToString();
            Response.Redirect("ChonKieuThanhToan.aspx");
        }
    }
}