using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class CHQLSanPham : System.Web.UI.Page
    {
        XLDL cn = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserNameStore"] == null)
                Response.Redirect("DangNhapCuaHang.aspx");
            if (!IsPostBack)
            {
                GvData.DataSource = cn.getData("Select * From CUAHANG C,SANPHAM where C.MaCH = SANPHAM.MaCH and C.TenDNCH = '" + Session["UserNameStore"].ToString()+"'");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Ascending;
            }
        }
        protected void GvData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvData.PageIndex = e.NewPageIndex;
            GvData.DataSource = cn.getData("Select * From CUAHANG C,SANPHAM where C.MaCH = SANPHAM.MaCH and C.TenDNCH = '" + Session["UserNameStore"].ToString() + "'");
            GvData.DataBind();
        }

        protected void GvData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GvData.EditIndex = -1;
            dtb();
        }
        protected void GvData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GvData.Rows[e.RowIndex];
            //Response.Write("<script> alert('" + (GVdata.Rows[e.RowIndex].Cells[0]).Text.ToString() + "')</script>");
            int MaCH = Convert.ToInt32((GvData.Rows[e.RowIndex].Cells[0]).Text.ToString());


            try
            {
                cn.exel("delete FROM SanPham where MaSP='" + MaCH + "'");

            }
            catch { }
            dtb();
        }

        protected void GvData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GvData.EditIndex = e.NewEditIndex;
            dtb();
        }

        private void dtb()
        {
            SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cnen"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * From CUAHANG C,SANPHAM where C.MaCH = SANPHAM.MaCH and C.TenDNCH = '" + Session["UserNameStore"].ToString() + "'", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GvData.DataSource = ds;
                GvData.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GvData.DataSource = ds;
                GvData.DataBind();
                int columncount = GvData.Rows[0].Cells.Count;
                GvData.Rows[0].Cells.Clear();
                GvData.Rows[0].Cells.Add(new TableCell());
                GvData.Rows[0].Cells[0].ColumnSpan = columncount;
                GvData.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void GvData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int MaSP = Convert.ToInt32((GvData.Rows[e.RowIndex].Cells[0].Controls[0] as TextBox).Text.ToString());
            string TenSP = (GvData.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox).Text;
            string Soluong = (GvData.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string GiaSP = (GvData.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string HinhSP = (GvData.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string MatK = (GvData.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
            string NgayCN = (GvData.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            string SoLuongBan = (GvData.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            string SoLuongXem = (GvData.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            string Mota = (GvData.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text;
            GvData.EditIndex = -1;
            string str = "UPDATE [dbo].[SANPHAM] SET [MaSP] ='" +MaSP+"'" +
                          ",[TenSP] =N'" + TenSP + "'" +
                          ",[SoLuong] =" + Soluong +
                          ",[DonGiaSP] =" + GiaSP+
                          ",[HinhMinhHoaSP] = '" + HinhSP + "'" +
                          ",[MoTaSP] = N'" + Mota + "'" +
                          ",[NgayCapNhat] = '" + NgayCN + "'" +
                          ",[SoLuongban] = " + SoLuongBan +
                          ",[SoLanXem] =" + SoLuongXem +
                            "WHERE MaSP = '"+MaSP+"'";
            try
            {
                cn.exel(str);
            }
            catch (Exception ex){
                Response.Write("<script>alert('Lỗi: " + ex + "';)</script>");
            }
            GvData.EditIndex = -1;
            dtb();
        }

        protected void GvData_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["SortDirection"].ToString() == "Ascending")
            {
                GvData.DataSource = cn.getData("Select * From CUAHANG C,SANPHAM where C.MaCH = SANPHAM.MaCH and C.TenDNCH = '" + Session["UserNameStore"].ToString() + "' order by " + e.SortExpression + " asc");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Descending;
            }
            else
            {
                GvData.DataSource = cn.getData("Select * From CUAHANG C,SANPHAM where C.MaCH = SANPHAM.MaCH and C.TenDNCH = '" + Session["UserNameStore"].ToString() + "' order by " + e.SortExpression + " desc");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Ascending;
            }
        }
    }
}