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
    public partial class ThemSanPhamCH : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserNameStore"] == null)
                Response.Redirect("DangNhapCuaHang.aspx");
            string query = "Select MaSP,SANPHAM.MaCH From SANPHAM, CUAHANG Where SANPHAM.MaCH = CUAHANG.MaCH AND CUAHANG.TenDNCH='" + Session["UserNameStore"].ToString()+"'";
            dt = con.getData(query);
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
                string fileName = "~/img/SanPham/" + MyFile.FileName;
                string filePath = MapPath(fileName);
                MyFile.SaveAs(filePath);
                ImgScreen.Visible = true;
                ImgScreen.ImageUrl = fileName;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string time = Convert.ToDateTime(DateTime.Now).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
            DataTable dtb = con.getData("Select Count(*) From SANPHAM, CUAHANG Where SANPHAM.MaCH = CUAHANG.MaCH AND CUAHANG.TenDNCH = '" + Session["UserNameStore"].ToString() + "'");
            string MaSP = (Convert.ToInt32(dt.Rows[0][1].ToString()) + Convert.ToInt32(dtb.Rows[0][0].ToString())).ToString();
            string query = "INSERT INTO [dbo].[SANPHAM]([MaSP],[TenSP],[SoLuong],[DonGiaSP],[MaCH],[HinhMinhHoaSP],[MoTaSP],[NgayCapNhat],[SoLuongban],[SoLanXem])" +
            "VALUES('" + MaSP+"'"+
           ",N'" + txtTenSP.Text +"'"+
           "," + txtSoLuongSP.Text +
           "," + txtDonGia.Text +
           ",'" + dt.Rows[0][1].ToString()+"'"+
           ",'" + MyFile.FileName +"'"+
           ",N'" + CKEditorControl1.Text +"'" +
           ",'" +time + "'"+
           ", 0, 0)";
            try
            {
                con.exel(query);
                lblTB.Text = "Thêm Thành Công";
            }
            catch (Exception ex){ lblTB.Text = " ^_^ Lỗi: " + ex; }
        }
    }
}