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
    public partial class quanlysanpham : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GvData.DataSource = con.getData("Select * From [SANPHAM]");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Ascending;
            }
        }

        protected void GvData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GvData.PageIndex = e.NewPageIndex;
            GvData.DataSource = con.getData("Select * From [SANPHAM]");
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
                con.exel("delete FROM [SANPHAM] where MaCH='" + MaCH + "'");

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
            SqlCommand cmd = new SqlCommand("Select * from [SANPHAM]", cn);
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
            string SoLuong = (GvData.Rows[e.RowIndex].Cells[2].Controls[0] as TextBox).Text;
            string DonGiaSP = (GvData.Rows[e.RowIndex].Cells[3].Controls[0] as TextBox).Text;
            string MaCH = (GvData.Rows[e.RowIndex].Cells[4].Controls[0] as TextBox).Text;
            string HinhMinhHoaSP = (GvData.Rows[e.RowIndex].Cells[5].Controls[0] as TextBox).Text;
            string MoTaSP = (GvData.Rows[e.RowIndex].Cells[6].Controls[0] as TextBox).Text;
            string NgayCapNhat = (GvData.Rows[e.RowIndex].Cells[7].Controls[0] as TextBox).Text;
            string SoLuongban = (GvData.Rows[e.RowIndex].Cells[8].Controls[0] as TextBox).Text;
            string SoLanXem = (GvData.Rows[e.RowIndex].Cells[9].Controls[0] as TextBox).Text;
            
            GvData.EditIndex = -1;

            string query = "UPDATE [dbo].[SANPHAM]"+
                           "SET[TenSP] = N'" +TenSP + "'" +
                              ",[SoLuong] = " + SoLuong +
                              ",[DonGiaSP] = " + DonGiaSP +
                              ",[MaCH] =" +MaCH +
                              ",[HinhMinhHoaSP] = '"+HinhMinhHoaSP+"'" +
                              ",[MoTaSP] =N'"+MoTaSP+"'" +
                              ",[NgayCapNhat] = '"+NgayCapNhat+"'" +
                              ",[SoLuongban] =" +SoLuongban +
                              ",[SoLanXem] = " +SoLanXem +
                         "WHERE MaSP='" + MaSP + "'";
            con.exel(query);
            GvData.EditIndex = -1;
            dtb();
        }

        protected void GvData_Sorting(object sender, GridViewSortEventArgs e)
        {
            if (ViewState["SortDirection"].ToString() == "Ascending")
            {
                GvData.DataSource = con.getData("SELECT * FROM [SANPHAM] order by " + e.SortExpression + " asc");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Descending;
            }
            else
            {
                GvData.DataSource = con.getData("SELECT * FROM [SANPHAM] order by " + e.SortExpression + " desc");
                GvData.DataBind();
                ViewState["SortDirection"] = SortDirection.Ascending;
            }
        }
    }
}