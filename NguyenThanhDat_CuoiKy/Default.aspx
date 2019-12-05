<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="dorne-welcome-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-center">
                <div class="col-12 col-md-10">
                    <div class="hero-content">
                        <h2>Dịch Vụ Giao Hàng Nhanh</h2>
                        <h4>Dịch vụ phát triển mạnh mẽ trong tương lai</h4>
                    </div>
                    <!-- Hero Search Form -->
                    <div class="hero-search-form">
                        <!-- Tabs -->
                        <div class="nav nav-tabs" id="heroTab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-places-tab" data-toggle="tab" href="#nav-places" role="tab" aria-controls="nav-places" aria-selected="true">Xem Giá</a>
                        </div>
                        <!-- Tabs Content -->
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-places" role="tabpanel" aria-labelledby="nav-places-tab">
                                <h6>Bạn muốn sử dụng dịch của chúng tôi giao hàng?</h6>
                                <asp:DropDownList ID="ddlrecipients" CssClass="custom-select" runat="server"></asp:DropDownList>

                                <asp:DropDownList ID="ddldestination" CssClass="custom-select" runat="server">
                                </asp:DropDownList>

                                <asp:DropDownList ID="DdlMenu" CssClass="custom-select" runat="server">
                                </asp:DropDownList>

                                <asp:DropDownList ID="ddlMass" CssClass="custom-select" runat="server">
                                </asp:DropDownList>

                                <asp:Button CssClass="btn dorne-btn" ID="btnPrice" runat="server" Text="Định Giá" OnClick="Button1_Click"></asp:Button>
                                <br />
                                <br />
                                <asp:Label ID="lblNtf" CssClass="alert alert-info" runat="server" Visible="False"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Social Btn -->
        <div class="hero-social-btn">
            <div class="social-title d-flex align-items-center">
                <h6>kênh  mạng  xã  hội</h6>
                <span></span>
            </div>
            <div class="social-btns">
                <a href="#"><i class="fa fa-linkedin" aria-haspopup="true"></i></a>
                <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-haspopup="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-haspopup="true"></i></a>
            </div>
        </div>
    </section>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Catagory Area Start ***** -->
    <section class="dorne-catagory-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="all-catagories">
                        <div class="row">
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.2s">
                                    <div class="catagory-content">
                                        <img src="img/core-img/icon-1.png" alt="">
                                        <a href="#">
                                            <h6>Siêu thị</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.4s">
                                    <div class="catagory-content">
                                        <img src="img/core-img/icon-2.png" alt="">
                                        <a href="#">
                                            <h6>Cửa Hàng</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.6s">
                                    <div class="catagory-content">
                                        <img src="img/core-img/icon-3.png" alt="">
                                        <a href="#">
                                            <h6>Shop</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-sm-6 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="0.8s">
                                    <div class="catagory-content">
                                        <img src="img/core-img/icon-4.png" alt="">
                                        <a href="#">
                                            <h6>Đồ ăn Nhanh</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Catagory Area -->
                            <div class="col-12 col-md">
                                <div class="single-catagory-area wow fadeInUpBig" data-wow-delay="1s">
                                    <div class="catagory-content">
                                        <img src="img/core-img/icon-5.png" alt="">
                                        <a href="#">
                                            <h6>khác</h6>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Catagory Area End ***** -->

    <!-- ***** About Area Start ***** -->
    <section class="dorne-about-area section-padding-0-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="about-content text-center">
                        <a href="khampha.aspx">
                            <h2>Sử Dụng Dịch Vụ
                            <br>
                                <span>B.Ship</span></h2>
                        </a>
                        <p>
                            Dịch vụ giao hàng nhanh và phát triển giao hàng online
                        trên địa bàn tỉnh Bình Dương<br />
                            <h3><a href="DangKyCH.aspx">Hoặc bạn muốn liên hệ đăng ký cửa hàng?</a></h3>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** About Area End ***** -->

    <!-- ***** Editor Pick Area Start ***** -->
    <section class="dorne-editors-pick-area bg-img bg-overlay-9 section-padding-100" style="background-image: url(img/bg-img/hero-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>Hệ Thống Siêu Thị Phổ biến</h4>
                        <p>Hệ thống siêu thị cửa hàng trên địa bàn tỉnh</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.2s">
                        <img src="img/bg-img/AeonmailBD.jpg" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="#">Aeonmail BD</a>
                                <a href="#">1000 mặt hàng</a>
                            </div>
                            <div class="add-more">
                                <a href="#">+</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.4s">
                        <img src="img/bg-img/editor-2.jpg" height="150px" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="#">Lotte Mart</a>
                                <a href="#">943 mặt hàng</a>
                            </div>
                            <div class="add-more">
                                <a href="#">+</a>
                            </div>
                        </div>
                    </div>
                    <div class="single-editors-pick-area wow fadeInUp" data-wow-delay="0.6s">
                        <img src="img/bg-img/editor-3.jpg" alt="">
                        <div class="editors-pick-info">
                            <div class="places-total-destinations d-flex">
                                <a href="#">BigC BD</a>
                                <a href="#">600 Mặt hàng</a>
                            </div>
                            <div class="add-more">
                                <a href="#">+</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Editor Pick Area End ***** -->

    <!-- ***** Features Destinations Area Start ***** -->
    <section class="dorne-features-destinations-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading dark text-center">
                        <span></span>
                        <h4>Sản Phẩm Bán Chạy</h4>
                        <p>Sản phẩm được nhiều người mua </p>
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-12">

                    <div class="features-slides owl-carousel row">
                        <!-- Single Features Area -->
                        <asp:Repeater ID="dtlProduce" runat="server">
                            <ItemTemplate>
                                <div class="single-features-area">
                                    <asp:Image ID="Image1" ImageUrl='<%# Bind("HinhMinhHoaSP","~/img/Proceduce/{0}") %>' runat="server" />
                                    <div class="price-start">
                                        <p><%#String.Format("Giá: {0:## ### } vnđ",Eval("DonGiaSP"))  %></p>
                                    </div>
                                    <div class="feature-content d-flex align-items-center justify-content-between">
                                        <div class="feature-title">
                                            <h5><%# Eval("TenSP") %></h5>
                                            <p><%# Eval("TenCH") %></p>
                                        </div>
                                        <div class="feature-favourite">
                                            <a href=<%# "ChiTietSanPham.aspx?MaSP=" + Eval("MaSP") %>><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ***** Features Events Area Start ***** -->
    <section class="dorne-features-events-area bg-img bg-overlay-9 section-padding-100-50" style="background-image: url(img/bg-img/hero-3.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <span></span>
                        <h4>Cửa hàng phổ biến</h4>
                        <p>Cửa hàng uy tín chất lượng</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <asp:Repeater ID="rptDataCH" runat="server">
                    <ItemTemplate>
                        <div class="col-12 col-lg-6">
                            <div class="single-feature-events-area d-sm-flex align-items-center wow fadeInUpBig" data-wow-delay="0.2s">
                                <div class="feature-events-thumb">
                                    <asp:Image ID="Image2" ImageUrl='<%# Bind("Image","~/img/CuaHang/{0}") %>' runat="server" />
                                    <div class="date-map-area d-flex">
                                        <a href="#">Mua Hàng</a>
                                        <a href="#">
                                            <img src="img/core-img/map.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="feature-events-content">
                                    <h5><%# Eval("TenCH") %></h5>
                                    <h6><%# Eval("ChuCH") %></h6>
                                    <p><%# Eval("DiaChiCH") %></p>
                                </div>
                                <div class="feature-events-details-btn">
                                    <a href=<%# "SPTheoCuaHang.aspx?MaCH=" + Eval("MaCH") %>>+</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
    
    <div class="dorne-clients-area section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="clients-logo d-md-flex align-items-center justify-content-around">
                        <img class="col-2 align-items-center" src="flaicon.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
