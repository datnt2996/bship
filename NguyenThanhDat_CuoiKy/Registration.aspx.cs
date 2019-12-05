using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    
    public partial class Registration : System.Web.UI.Page
    {
        XLDL cn = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                for(int i=1;i<=31;i++)
                    drsNgay.Items.Insert(0, new ListItem(i.ToString(),i.ToString()));
                for (int i = 1; i <= 12; i++)
                    drsThang.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
                for (int i = 1950; i <= DateTime.Now.Year; i++)
                    ddlYear.Items.Insert(0, new ListItem(i.ToString(), i.ToString()));
            }
            
        }
        protected void btnOK_Click1(object sender, EventArgs e)
        {
            if (!txtVerificationCode.Text.ToLower().Equals(Session["CaptchaVerify"].ToString()))
            {
                lblCaptchaMessage.Visible = true;
                lblCaptchaMessage.Text = "Vui lòng nhập đúng mã Captcha !";
                lblCaptchaMessage.ForeColor = System.Drawing.Color.Red;
                return; 
            }
            lblNtf.Visible = true;
            string BDay = ddlYear.SelectedItem.Value+"-"+ drsThang.SelectedItem.Value+"-"+ drsNgay.SelectedItem.Value;
            int ck = 0;
            if (rdoNam.Checked) ck = 1;
            string str = "INSERT INTO[dbo].[KHACHHANG]([TenKH],[NgaySinh],[GioiTinh],[DiaChi],[SoDT],[Email],[TenDN],[MatKhau]) " +
                           "VALUES(N'" + txtHten.Text + "','" + BDay + "'," + ck + ",N'" + txtAdr.Text + "','" + txtNumPhone.Text + "','" + txtEmail.Text + "','" + txtUser.Text + "','" + txtPwd.Text + "')";
            Response.Write("<script>alert('Sql: " + str + "');</script>");
            string st = "select * From KHACHHANG where TenDN = '"+txtUser.Text+"'";
            DataTable dt = cn.getData(st);
            //Label1.Text = str;
            if(dt.Rows.Count>0)
            {
                lblNtf.Text = " Tên đăng nhập đã tồn tại";
            }
            else
            {
                if(txtHten.Text==""|| txtAdr.Text=="" || txtNumPhone.Text == "" || txtUser.Text == "" || txtPwd.Text == "" || txtEmail.Text =="")
                {
                    lblNtf.Text = " Vui lòng nhập đầy đủ thông tin!";
                }
                else
                {
                   
                    try
                    {
                        cn.exel(str);
                        lblNtf.Text = "Đăng ký thành công";
                    }
                    catch
                    {
                        lblNtf.Text = "Đăng ký ko thành công";
                    }
                }
            }
        }
    }
}