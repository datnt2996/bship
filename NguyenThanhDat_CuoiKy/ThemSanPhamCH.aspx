<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="ThemSanPhamCH.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.ThemSanPhamCH" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="container-fluid">
        <h3 class="text-center">Thêm Sản Phẩm</h3>
        <div class="form-group">
            <asp:TextBox ID="txtTenSP" CssClass="form-control" placeholder="Tên Sản Phẩm" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSoLuongSP" CssClass="form-control" TextMode="Number" placeholder="Số Lượng Sản Phẩm" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtDonGia" CssClass="form-control" TextMode="Number" placeholder="Giá Sản Phẩm" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group row">
            <h4 class="col-lg-4">Thêm hình ảnh Sản Phẩm:</h4>
            <asp:FileUpload CssClass="btn btn-primary btn-file col-lg-" ID="MyFile" runat="server" />&nbsp;<br />
        </div>
        <div class="form-group">
            &nbsp;&nbsp;&nbsp;<asp:Button ID="btnScreenIMG" CssClass="btn btn-lg btn-info" runat="server" Text="Xem Hình" OnClick="btnScreenIMG_Click"  />&nbsp;
            <asp:Image CssClass="col-lg-3" ID="ImgScreen" runat="server" Height="100px" Width ="100px" Visible="false"/>&nbsp;
        </div>
        <div class="form-group">
            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-success" runat="server" Text="Thêm Sản Phẩm" OnClick="Button1_Click" />
        </div>  
        <asp:Label ID="lblTB" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
