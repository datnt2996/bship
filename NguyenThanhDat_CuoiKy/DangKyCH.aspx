<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="DangKyCH.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.DangKyCH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="well well-lg section-padding-100-50" style="padding-left:10%; padding-right:10%">

        <h3 class="text-center">Đăng Ký Cửa Hàng</h3>
        <p class="text-center">Miễn Phí 10 ngày đầu</p>
        <div class="form-group">
            <asp:TextBox ID="txtTenCH" CssClass="form-control" placeholder="Tên Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtChuCH" CssClass="form-control" placeholder="Tên Chủ Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtSDT" CssClass="form-control" placeholder="SDT Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtDiaChiCH" CssClass="form-control" placeholder="Địa Chỉ Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group row">
            <h4 class="col-lg-4">Thêm hình ảnh cửa hàng:</h4>
            <asp:FileUpload CssClass="btn btn-primary btn-file col-lg-" ID="MyFile" runat="server" />&nbsp;<br />
        </div>
        <div class="form-group">
            &nbsp;&nbsp;&nbsp;<asp:Button ID="btnScreenIMG" CssClass="btn btn-lg btn-info" runat="server" Text="Xem Hình" OnClick="btnScreenIMG_Click" />&nbsp;
            <asp:Image CssClass="col-lg-3" ID="ImgScreen" runat="server" Height="100px" Width ="100px" Visible="false"/>&nbsp;
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtTenDNCH" CssClass="form-control" placeholder="Tên Đăng Nhập Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="mật khẩu Đăng nhập Cửa Hàng" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TtxtRepwd" CssClass="form-control" placeholder="Nhập lại mật khẩu Đăng nhập Cửa Hàng" TextMode="Password" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Button ID="btnDkyCH" CssClass="btn btn-lg btn-success" runat="server" Text="Đăng Ký Cửa hàng" OnClick="Button1_Click" />
        </div>
        <div class="form-group">
            <asp:Button ID="btnQLSPCH" CssClass="btn btn-lg btn-success" runat="server" Text="Quản Lý Sản Phẩm Cửa hàng" Visible="false" PostBackUrl="~/CHQLSanPham.aspx" />
            <a href="DangNhapCuaHang.aspx">Bạn đã có cửa hàng? Đăng nhập ngay</a>
        </div>
        <asp:Label ID="lblTB" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
