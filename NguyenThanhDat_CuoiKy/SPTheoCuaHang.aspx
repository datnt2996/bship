<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="SPTheoCuaHang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.SPTheoCuaHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ShowProduct.css" rel="stylesheet" id="bootstrap-css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <section class="dorne-listing-destinations-area section-padding-100-50">

        <div class="container">
            <h3 class="h3">Sản Phẩm </h3>
            <div class="row">
                <asp:Repeater ID="dtlProduct" runat="server">
                    <ItemTemplate>
                        <div class="col-md-̉3 col-sm-3 col-xs-12">
                            <div class="product-grid6">
                                <div class="product-image6">
                                    <a href="#">
                                        <asp:Image CssClass="pic-1" ID="Image1" runat="server" ImageUrl='<%# Bind("HinhMinhHoaSP","~/img/Proceduce/{0}") %>' />
                                    </a>
                                </div>
                                <div class="product-content">
                                    <h3 class="title"><a href="#"><%# Eval("TenSP") %></a></h3>
                                    <div class="price">
                                        <%#String.Format("Giá: {0:## ### } vnđ",Eval("DonGiaSP"))  %>
                                        <p><%# Eval("TenCH") %></p>
                                    </div>
                                </div>
                                <ul class="social">
                                    <li><a href='<%#"ChiTietSanPham.aspx?MaSP=" + Eval("MaSP")%>' data-tip="Xem Chi tiết"><i class="fa fa-search"></i></a></li>
                                    <li><a href='<%#"GioHang.aspx?MaSP=" + Eval("MaSP")%>' data-tip="Thêm Vào Giỏ Hàng"><i class="fa fa-shopping-bag"></i></a></li>
                                    <li><a href="#" data-tip="Thanh Toán"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
