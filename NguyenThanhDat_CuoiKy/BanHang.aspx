<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="BanHang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.BanHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>

    <div class="col-md-12 col-md-offset-8" style="margin-left: 0">
        <h3>Đăng Ký Cửa Hàng</h3>
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
            <asp:TextBox ID="DiaChiCH" CssClass="form-control" placeholder="Địa Chỉ Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group row">
            <h4 class="col-lg-4">Thêm hình ảnh cửa hàng:</h4>
            <asp:FileUpload CssClass="btn btn-primary btn-file col-lg-" ID="MyFile" runat="server" />&nbsp;<br />
        </div>
        <div class="form-group">
            &nbsp;&nbsp;&nbsp;<asp:Button ID="btnScreenIMG" CssClass="btn btn-lg btn-info" runat="server" Text="Xem Hình"  />&nbsp;
            <asp:Image CssClass="col-lg-3" ID="ImgScreen" runat="server" Height="100px" Width="100px" Visible="false" />&nbsp;
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtTenDNCH" CssClass="form-control" placeholder="Tên Đăng Nhập Cửa Hàng" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="mật khẩu Đăng nhập Cửa Hàng" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtRePwd" CssClass="form-control" placeholder="nhập lại mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-success" runat="server" Text="Thêm Cửa hàng" />
        </div>
    </div>
</asp:Content>
