using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        XLDL con = new XLDL();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["MaSP"] != null)
            {
                string queryUpdate = "UPDATE [dbo].[SANPHAM] SET [SoLanXem] = [SoLanXem]+1 WHERE  MaSP = '"+ Request.QueryString["MaSP"].ToString() + "'";
                con.exel(queryUpdate);
                string queryCH = "select top 6 * from SANPHAM where MaCH = (Select MaCH From SanPham where MaSP = '"+ Request.QueryString["MaSP"].ToString() + "')";
                string query = "select * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH and MaSP = '" + Request.QueryString["MaSP"].ToString()+"'";
                dtlProduct.DataSource = con.GetDataSet(query);
                dtlProduct.DataBind();
                dtlProduce.DataSource = con.GetDataSet(queryCH);
                dtlProduce.DataBind();
                string querySPTT = "select top 4 * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH ";
                rptSPTT.DataSource = con.getData(querySPTT);
                rptSPTT.DataBind();
                string queryNX = "Select TenKH,NoiDung From NHANXET,KHACHHANG " +
                    "where NHANXET.MaKH = KHACHHANG.MaKH and MaSP = '" + Request.QueryString["MaSP"].ToString() + "'";
                rptNhanXet.DataSource = con.getData(queryNX);
                rptNhanXet.DataBind();
            }
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                string MaKH = (con.getData("Select MaKH From KHACHHANG Where TenDN='" + Session["UserName"].ToString() + "'")).Rows[0][0].ToString();
                string query = "INSERT INTO [dbo].[NHANXET]([MaSP],[NoiDung],[MaKH],[DanhGia])" +
                                 "VALUES('" + Request.QueryString["MaSP"].ToString() + "'" +
                                       ",N'" + txtCmt.Text + "'" +
                                       "," + MaKH +
                                       ",'')";
                try
                {
                    con.exel(query);
                }
                catch (Exception ex)
                {
                    Response.Write("<script> alert('Lỗi: " + ex + "');</script>");
                }
                string queryNX = "Select TenKH,NoiDung From NHANXET,KHACHHANG " +
                       "where NHANXET.MaKH = KHACHHANG.MaKH and MaSP = '" + Request.QueryString["MaSP"].ToString() + "'";
                rptNhanXet.DataSource = con.getData(queryNX);
                rptNhanXet.DataBind();
            }
            else
            {
                lblTB.Text = "Bạn phải đăng nhập để sử dụng chức năng này";
                Response.Write("<script> alert('Bạn phải đăng nhập để sử dụng chức năng này');</script>");
            }
        }
    }
}