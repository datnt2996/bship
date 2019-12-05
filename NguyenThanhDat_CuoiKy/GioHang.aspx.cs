using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class GioHang : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        int ma;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] == null)
            {
                lblNtf.Visible = true;
                lblNtf.Text = "Giỏ Hàng Của Bạn Đang Trống";
            }
            if (Session["GioHang"] != null) { lblNtf.Visible = false; CapNhat(); }
            if (Request.QueryString["MaSP"] != null)
            {
                ma = Convert.ToInt32(Request.QueryString["MaSP"].ToString());

                string str = "Select TenSP,DonGiaSP From SANPHAM where MaSP = " + ma;

                DataTable dt = con.getData(str);

                string ten = dt.Rows[0][0].ToString();

                float dongia = float.Parse(dt.Rows[0][1].ToString());

                int SoLuong = 1;

                ThemVaoGioHang(ma, ten, dongia, SoLuong);
            }
            if (!IsPostBack) binDT();
            
        }

        private void binDT()
        {
            if (Session["GioHang"] != null) CapNhat();
            GvData.DataSource = (DataTable)Session["Giohang"];
            GvData.DataBind();
        }

        private void ThemVaoGioHang(int ma, string ten, float dongia, int soLuong)
        {
            DataTable dt;
            if (Session["GioHang"] == null)
            {
                dt = new DataTable();
                dt.Columns.Add("MaSP");
                dt.Columns.Add("TenSP");
                dt.Columns.Add("DonGiaSP");
                dt.Columns.Add("SoLuong");
                dt.Columns.Add("ThanhTien");
            }
            else
                dt = (DataTable)Session["GioHang"];
            int dong = SpCoTrongGioHang(ma, dt);
            if (dong != -1)
            {
                dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + soLuong;
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["MaSP"] = ma;
                dr["TenSP"] = ten;
                dr["DonGiaSP"] = dongia;
                dr["SoLuong"] = soLuong;
                dr["ThanhTien"] = dongia * soLuong;
                dt.Rows.Add(dr);
            }
            Session["GioHang"] = dt;
        }

        private int SpCoTrongGioHang(int ma, DataTable dt)
        {
            int dong = -1;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (Convert.ToInt32(dt.Rows[i]["MaSP"].ToString()) == ma)
                {
                    dong = i;
                    break;
                }
            }
            return dong;
        }
        protected void GVGH_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Xoa")
            {
                int chiso = Convert.ToInt32(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["GioHang"] = dt;
                    Response.Redirect("~/GioHang.aspx");
                }
                catch { Response.Redirect("~/GioHang.aspx"); }
            }
        }
        private void CapNhat()
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in GvData.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(GvData.DataKeys[r.DataItemIndex].Value.ToString().Trim()) == dr["MaSP"].ToString().Trim())
                    {
                        TextBox t = (TextBox)r.Cells[3].FindControl("TxtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                        {
                            dt.Rows.Remove(dr);
                        }
                        else
                        {
                            dr["SoLuong"] = t.Text;
                            dr["ThanhTien"] = int.Parse(dr["SoLuong"].ToString()) * float.Parse(dr["DonGiaSP"].ToString());
                        }
                        break;
                    }
                }
            }
            Session["GioHang"] = dt;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Session["GioHang"] = null;
            Response.Redirect("~/GioHang.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (GridViewRow r in GvData.Rows)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    if (Convert.ToString(GvData.DataKeys[r.DataItemIndex].Value) == dr["MaSP"].ToString())
                    {
                        TextBox t = (TextBox)r.Cells[3].FindControl("TxtSoLuong");
                        if (Convert.ToInt32(t.Text) <= 0)
                        {
                            dt.Rows.Remove(dr);
                        }
                        else
                        {
                            dr["SoLuong"] = t.Text;
                            dr["ThanhTien"] = int.Parse(dr["SoLuong"].ToString()) * float.Parse(dr["DonGiaSP"].ToString());
                        }
                        break;
                    }
                }
            }
            Session["GioHang"] = dt;
            Response.Redirect("~/GioHang.aspx");
        }
    }
}