<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="ChonKieuThanhToan.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.ChonKieuThanhToan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div><br />
    <h1 class="text-center">Thanh Toán trị Giá: <%=Price %></h1>
    <div class="container-fluid row">
        <div class="col-6 btn btn-block">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/bg-img/ThanhToanKhiNhanHang.jpg" Height="400px" />
            <h2>Thanh Toán Khi Nhận Hàng</h2>
        </div>
        <div class="col-6 btn btn-block">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/bg-img/ThanhToanTrucTuyen.png" Height="400px" />
            <h2>Thanh Toán Trực Tuyến</h2>
        </div>
    </div>
    <br />
</asp:Content>
