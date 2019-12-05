<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/ShowProduct.css" rel="stylesheet" id="bootstrap-css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="row justify-content-center">
        <div class="col-12 col-md-10 col-lg-8">
            <link href="css/others/Search.css" rel="stylesheet" />
            <link href="css/font-awesome.min.css" rel="stylesheet" />
            <div class="card-body row no-gutters align-items-center">
                <div class="col-auto">
                    <i class="fa fa-fw" aria-hidden="true" title="Copy to use search"></i>
                </div>
                <!--end of col-->
                <div class="col">
                    <asp:TextBox ID="txtSearch" CssClass="form-control form-control-lg form-control-borderless" placeholder="Tìm kiếm sản phẩm" runat="server"></asp:TextBox>
                </div>
                <!--end of col-->
                <div class="col-auto">
                    <asp:Button ID="ntnSearch" runat="server" CssClass="btn btn-lg btn-success" Text="Search" OnClick="ntnSearch_Click" />
                </div>
                <!--end of col-->
            </div>
        </div>
        <!--end of col-->
    </div>
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
