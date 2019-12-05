using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NguyenThanhDat_CuoiKy
{
    public partial class ChangeLogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnScreenIMG_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && MyFile.HasFile && CheckFileType(MyFile.FileName))
            {
                string fileName = "~/img/Logo/" + "Logo.png";
                string filePath = MapPath(fileName);
                MyFile.SaveAs(filePath);
                ImgScreen.Visible = true;
                ImgScreen.ImageUrl = fileName;
            }
            else
            {
                lblNtf.Visible = true;
                lblNtf.Text = "Vui lòng chọn file hình ảnh!";
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
    }
}