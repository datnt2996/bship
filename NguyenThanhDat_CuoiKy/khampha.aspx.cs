using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class khampha : System.Web.UI.Page
    {
        XLDL cn = new XLDL();
        int maDV=1; string maKH;
        string[] a = { "Dĩ An", "Thuận An", "Tp.Thủ Dầu Một", "Bến Cát", "Tân Uyên", "Bầu bàng", "Dầu Tiếng" };
        string[] menu = { "Tiết Kiệm( 12- 24h)", "Nhanh( 1- 3h)" };
        string[] mass = { "Dưới 1kg ", "1 - 3 kg", "3 - 5 kg", "5 - 10 kg", "10 - 15kg", "15 - 25kg", "25 - 50kg" };
        private float Price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"]==null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
            {
                for (int i = 0; i < a.Length; i++)
                {
                    ddlrecipients.Items.Insert(0, new ListItem(a[i], (i).ToString()));
                    ddldestination.Items.Insert(0, new ListItem(a[i], (i).ToString()));
                }
                for (int i = 0; i < mass.Length; i++)
                {
                    ddlMass.Items.Insert(0, new ListItem(mass[i], (i).ToString()));
                }
                ddlrecipients.Items.Insert(0, new ListItem("Nơi Giao hàng", a.Length.ToString()));
                ddldestination.Items.Insert(0, new ListItem("Nơi Nhận hàng", a.Length.ToString()));

                for (int i = 0; i < menu.Length; i++)
                    DdlMenu.Items.Insert(0, new ListItem(menu[i], (i).ToString()));
                DdlMenu.Items.Insert(0, new ListItem("Hình Thức GH", menu.Length.ToString()));
                ddlMass.Items.Insert(0, new ListItem("Trọng Lượng", mass.Length.ToString()));
            }
        }

        protected void btnPrice_Click(object sender, EventArgs e)
        {
            if (!txtVerificationCode.Text.ToLower().Equals(Session["CaptchaVerify"].ToString()))
            {
                lblCaptchaMessage.Visible = true;
                lblCaptchaMessage.Text = "Vui lòng nhập đúng mã Captcha !";
                lblCaptchaMessage.ForeColor = System.Drawing.Color.Red;
                
            }  
            else  
            {

                lblCaptchaMessage.Visible = false;
                if (Convert.ToInt16(ddlrecipients.SelectedItem.Value) == a.Length || Convert.ToInt16(ddldestination.SelectedItem.Value) == a.Length ||
                Convert.ToInt16(ddlMass.SelectedItem.Value) == mass.Length || Convert.ToInt16(DdlMenu.SelectedItem.Value) == menu.Length ||
                txtAdressRec.Text == "" || txtAdressDes.Text == "" || TxtInfget.Text == "" || txtInfSet.Text == "" || txtNumPhone.Text == "" ||
                txtNumPhoneLH.Text == "")
                {
                    lblNtf.Visible = true; lblNtf.Text = "Vui lòng chọn đầy đủ để có thể sử dụng dịch vụ!!!";
                    return;
                }
                int kc = Math.Abs(Convert.ToInt16(ddlrecipients.SelectedItem.Value) - Convert.ToInt16(ddldestination.SelectedItem.Value));

                if (kc == 0)
                    Price = (kc * 1000 + 15000) * (1 + Convert.ToInt16(DdlMenu.SelectedItem.Value));
                else
                    Price = (kc * 1000 + 15000) * (2 + Convert.ToInt16(DdlMenu.SelectedItem.Value));

                Price *= (float)(Convert.ToInt16(ddlMass.SelectedItem.Value) + 1) / 2;
                string dcGH, dcNH, TenNG, TenNN, SDTNG, SDTNN;
                dcGH = txtAdressRec.Text + " - " + ddldestination.SelectedItem.Text;
                dcNH = txtAdressRec.Text + " - " + ddlrecipients.SelectedItem.Text;
                TenNG = TxtInfget.Text;
                TenNN = txtInfSet.Text;
                SDTNG = txtNumPhone.Text;
                SDTNN = txtNumPhoneLH.Text;
                DataTable dt = cn.getData("SELECT [MaKH] FROM [dbo].[KHACHHANG] where TenDN = '" + Session["UserName"].ToString() + "'");
                maKH = dt.Rows[0][0].ToString();
                if (Convert.ToInt32(DdlMenu.SelectedItem.Value) == 0) maDV = 2;
                string str = "INSERT INTO [dbo].[DONHANG]([MaDV],[MaKH],[DCGiaoHang],[TenNguoiGui],[SDTNguoiNhan],[TenNguoiNH],[DCNhanHang],[SDTNhanHang],[DonGia]) " +
                    "VALUES(" + maDV + "," + maKH + ",N'" +dcGH +  "',N'"+TenNG+"','"+SDTNG + "',N'"+TenNN + "',N'"+dcNH + "','" + SDTNN + "',"+Price+")";
                try
                {
                    cn.exel(str);
                    lblNtf.Text = "Đăng ký giao hàng thành công";
                    lblNtf.Visible = true;
                    Session["TriGia"] = Price;
                    Response.Redirect("ChonKieuThanhToan.aspx");
                }
                catch(Exception ex){
                    lblNtf.Text = "Lỗi: "+ ex.Message;
                    lblNtf.Visible = true;
                }
            }
        }
    }
}