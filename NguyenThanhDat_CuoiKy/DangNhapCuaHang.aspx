<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="DangNhapCuaHang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.DangNhapCuaHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div style="height: 500px; width: 50%;">
        <div class="col-md-12 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">ĐĂNG NHẬP CỬA HÀNG</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">  
                        <asp:TextBox ID="txtUser" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="row">
                        <asp:Button ID="btnOK" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Đăng nhập" OnClick="Button1_Click"></asp:Button>
                        <br />
                        <a href="DangKyCH.aspx">
                            <asp:Label ID="lblDK" runat="server">Bạn chưa có tài khoản?</asp:Label></a>
                    </div>
                    <br />
                    <asp:Label ID="lblNtf" CssClass="alert alert-warning" runat="server" Visible="False"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
