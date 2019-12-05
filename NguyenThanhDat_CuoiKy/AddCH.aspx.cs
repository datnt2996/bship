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
    public partial class AddCH : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("DangNhapCuaHang.aspx");
            string query = "Select MaSP,SANPHAM.MaCH From SANPHAM, CUAHANG Where SANPHAM.MaCH = CUAHANG.MaCH AND CUAHANG.TenDNCH='" + Session["UserNameStore"].ToString() + "'";
            dt = con.getData(query);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string time = Convert.ToDateTime(DateTime.Now).ToString("yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);
            DataTable dtb = con.getData("Select Count(*) From SANPHAM, CUAHANG Where SANPHAM.MaCH = CUAHANG.MaCH AND CUAHANG.TenDNCH = '" + Session["UserNameStore"].ToString() + "'");
            string MaSP = (Convert.ToInt32(dt.Rows[0][1].ToString()) + Convert.ToInt32(dtb.Rows[0][0].ToString())).ToString();
            string query = "INSERT INTO [dbo].[CUAHANG]([TenCH],[ChuCH],[SdtCH],[DiaChiCH],[TenDNCH],[Image],[MatKhauCH])"+
                             "VALUES(N'"+txtTenCH.Text+"'" +
                                   ",N'" + txtChuCH.Text +"'"+
                                   ",'" + txtSDT.Text +"'"+
                                   ",N'" + DiaChiCH.Text +"'"+
                                   ",'" + txtTenDNCH.Text +"'"+
                                   ",'" +MyFile.FileName+ "'" +
                                   ",'" +txtPwd.Text+"')";
            try
            {
                con.exel(query);
                lblTB.Text = "Thêm Thành Công";
            }
            catch (Exception ex) { lblTB.Text = " ^_^ Lỗi: " + ex; }
        }
    }
}