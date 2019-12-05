using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    
    public partial class Default : System.Web.UI.Page
    {
        XLDL con = new XLDL();
        string[] a = { "Dĩ An", "Thuận An", "Tp.Thủ Dầu Một", "Bến Cát", "Tân Uyên", "Bầu bàng", "Dầu Tiếng" };
        string[] menu = { "Tiết Kiệm( 12- 24h)", "Nhanh( 1- 3h)" };
        string[] mass = { "Dưới 1kg ", "1 - 3 kg", "3 - 5 kg", "5 - 10 kg", "10 - 15kg", "15 - 25kg", "25 - 50kg" };
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select top 5 * from SANPHAM S, CUAHANG H where S.MaCH = H.MaCH";
            string queryCH = "Select * From CUAHANG";
            if (!IsPostBack)
            {
                rptDataCH.DataSource = con.getData(queryCH);
                rptDataCH.DataBind();
                dtlProduce.DataSource = con.GetDataSet(query);
                dtlProduce.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            float Price;
            int kc = Math.Abs(Convert.ToInt16(ddlrecipients.SelectedItem.Value) - Convert.ToInt16(ddldestination.SelectedItem.Value));
            if (Convert.ToInt16(ddlrecipients.SelectedItem.Value) == a.Length || Convert.ToInt16(ddldestination.SelectedItem.Value) == a.Length ||
                Convert.ToInt16(ddlMass.SelectedItem.Value) == mass.Length || Convert.ToInt16(DdlMenu.SelectedItem.Value) == menu.Length)
            {
                lblNtf.Visible = true; lblNtf.Text = "Vui lòng chọn đầy đủ để có thể tính giá";
                return;
            }
            if (kc == 0)
                Price = (kc * 1000 + 15000) *(1 + Convert.ToInt16(DdlMenu.SelectedItem.Value));
            else
                Price = (kc * 1000 + 15000) *(2 + Convert.ToInt16(DdlMenu.SelectedItem.Value));

            Price *= (float)(Convert.ToInt16(ddlMass.SelectedItem.Value) + 1) / 2;
            string notification = "Giá Ship hàng từ " + ddlrecipients.SelectedItem.Text + " đến " + ddldestination.SelectedItem.Text + " Với " + DdlMenu.SelectedItem.Text + " và nặng " + ddlMass.SelectedItem.Text + " Là: " + Price;
            //Response.Write("<script> alert('Giá Ship hàng từ "+ ddlrecipients.SelectedItem.Text+" đến "+ ddldestination.SelectedItem.Text + " Là: " +"'); </script>");
            lblNtf.Visible = true; lblNtf.Text = notification;
        }
    }
}