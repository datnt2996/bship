using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class DangKyCH : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool CheckFileType(string fileName)
        {

            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }

        protected void btnScreenIMG_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && MyFile.HasFile && CheckFileType(MyFile.FileName))
            {
                string fileName = "~/img/CuaHang/" + MyFile.FileName;
                string filePath = MapPath(fileName);
                MyFile.SaveAs(filePath);
                ImgScreen.Visible = true;
                ImgScreen.ImageUrl = fileName;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (MyFile.FileName == null || txtChuCH.Text == "" || txtTenCH.Text == "" || txtSDT.Text == "" || txtPwd.Text == "" || txtTenDNCH.Text == "" || txtDiaChiCH.Text == "")
            {
                lblTB.Text = "Vui Lòng Nhập đầy đủ thông tin";
                return;
            }
            if (Page.IsValid && MyFile.HasFile && CheckFileType(MyFile.FileName))
            {
                string fileName = "~/img/CuaHang/" + MyFile.FileName;
                string filePath = MapPath(fileName);
                MyFile.SaveAs(filePath);
                ImgScreen.Visible = true;
                ImgScreen.ImageUrl = fileName;
            }
            string time = Convert.ToDateTime(DateTime.Now).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);

            string query = "INSERT INTO [dbo].[CUAHANG]([TenCH],[ChuCH],[SdtCH],[DiaChiCH],[TenDNCH],[Image],[MatKhauCH],[NgayDK])" +
                " VALUES(N'" + txtTenCH.Text + "'" +
               ",N'" + txtChuCH.Text + "'" +
               ",'" + txtSDT.Text + "'" +
               ",N'" + txtDiaChiCH.Text + "'" +
               ",'" + txtTenDNCH.Text + "'" +
               ",'" + MyFile.FileName + "'" +
               ",'" + txtPwd.Text +"','"+time+ "')";
            
            if(!txtPwd.Text.Equals(TtxtRepwd.Text)) 
            {
                lblTB.Text = "Nhập Lại Mật Khẩu Không Đúng!!!";
                return;
            }
            DataTable dt = con.getData("Select * From CUAHANG where TenDNCH = '" + txtTenDNCH.Text + "'");
            if (dt.Rows.Count > 0)
            {
                lblTB.Text = "Tên Đăng Nhập Đã Tổn Tại";
                return;
            }
            try
            {
                Session["UserNameStore"] = txtTenDNCH.Text;
                con.exel(query);
                lblTB.Text = "Đăng Ký Thành Công";
                btnDkyCH.Visible = false;
                btnQLSPCH.Visible = true;
            }
            catch(Exception ex)
            {
                lblTB.Text = "^_^ Lỗi: " + ex;
            }
        }
    }
}