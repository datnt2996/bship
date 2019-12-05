<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/productDetail.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="container-fluid align-content-center row">
        <div style="margin-left: 5%">

            <div class="card">
                <div class="row">
                    <asp:Repeater ID="dtlProduct" runat="server">
                        <ItemTemplate>
                            <aside class="col-sm-5 border-right">
                                <article class="gallery-wrap">
                                    <div class="img-big-wrap">
                                        <div>
                                            <a href="#">
                                                <asp:Image CssClass="pic-1" ID="Image1" runat="server" ImageUrl='<%# Bind("HinhMinhHoaSP","~/img/Proceduce/{0}") %>' />
                                            </a>
                                        </div>
                                    </div>
                            </aside>
                            <aside class="col-sm-7">
                                <article class="card-body p-5">
                                    <h3 class="title mb-3"><%# Eval("TenSP") %></h3>
                                    <p class="price-detail-wrap">
                                        <span class="price h3 text-warning">
                                            <span class="currency"></span><span class="num"><%#String.Format("Giá: {0:## ### } vnđ",Eval("DonGiaSP"))  %></span>
                                        </span>
                                    </p>
                                    <dl class="item-property">
                                        <dt>Mô tả sản phẩm</dt>
                                        <dd>
                                            <p>
                                                <%# Eval("MoTaSP") %>
                                            </p>
                                        </dd>
                                    </dl>
                                    <div class="rating">
                                        <dt>Đánh Giá</dt>
                                        <div class="stars">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                        <dt>Số Lần Xem</dt>
                                        <span class="review-no"><%# Eval("SoLanXem") + " Rewiew" %> </span>
                                    </div>
                                    <dl class="param param-feature">
                                        <dt>Cửa Hàng</dt>
                                        <dd><%# Eval("TenCH") %></dd>
                                    </dl>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <dl class="param param-inline">
                                                <dt>Số Lượng: </dt>
                                                <dd>
                                                    <asp:TextBox ID="txtSoLuong" CssClass="form-control col-6" runat="server"></asp:TextBox>
                                                </dd>
                                            </dl>

                                        </div>
                                        <!-- col.// -->
                                        <div class="col-sm-7">
                                            <dl class="param param-inline">
                                                <dt>Size: </dt>
                                                <dd>
                                                    <label class="form-check form-check-inline">
                                                        <asp:RadioButton ID="RadioButton1" CssClass="form-check-input col-1" GroupName="SizeTS" runat="server" />
                                                        <span class="form-check-label">S</span><br />
                                                    </label>
                                                    <label class="form-check form-check-inline">
                                                        <asp:RadioButton ID="RadioButton2" CssClass="form-check-input col-1" GroupName="SizeTS" runat="server" />
                                                        <span class="form-check-label">M</span>
                                                    </label>
                                                    <label class="form-check form-check-inline">
                                                        <asp:RadioButton ID="RadioButton3" CssClass="form-check-input col-1" GroupName="SizeTS" runat="server" />
                                                        <span class="form-check-label">L</span>
                                                    </label>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <hr>
                                    <a href='<%#"GioHang.aspx?MaSP=" + Eval("MaSP") %>' class="btn btn-lg btn-outline-primary text-uppercase">Thêm Vào Giỏ Hàng </a>
                                </article>
                                <!-- card-body.// -->
                            </aside>

                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="col-12 row">
                        <div class="col-5">
                            <h3>Đánh Giá Sản Phẩm:</h3>
                            <span class="fa fa-star" id="star1" onclick="add(this,1)"></span>
                            <span class="fa fa-star" id="star2" onclick="add(this,2)"></span>
                            <span class="fa fa-star" id="star3" onclick="add(this,3)"></span>
                            <span class="fa fa-star" id="star4" onclick="add(this,4)"></span>
                            <span class="fa fa-star" id="star5" onclick="add(this,5)"></span>
                        </div>
                        <div class="col-5">
                            <h3>Nhận Xét Sản Phẩm:</h3>
                            <asp:TextBox runat="server" ID="txtCmt" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSubmitCmt" OnClick="btnSubmit_Click" runat="server" Text="Gửi" CssClass="btn btn-lg btn-outline-primary text-uppercase col-2" />
                        <asp:Label ID="lblTB" runat="server"></asp:Label>

                        <asp:Repeater ID="rptNhanXet" runat="server">
                            <ItemTemplate>
                                <link href="css/others/cmt.css" rel="stylesheet" />
                                <div class="container row" style="margin-top:10px">
                                    <div class="col-sm-1">
                                        <div class="thumbnail">
                                            <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                                        </div>
                                        <!-- /thumbnail -->
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <strong><%# Eval("TenKH") %></strong> <span style="font-size:15px" class="text-muted">Khách hàng</span>
                                            </div>
                                            <div class="panel-body">
                                                <%# Eval("NoiDung") %>
                                            </div>
                                            <!-- /panel-body -->
                                        </div>
                                        <!-- /panel panel-default -->
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <script>
                            function add(ths, sno) {
                                for (var i = 1; i <= 5; i++) {
                                    var cur = document.getElementById("star" + i)
                                    cur.className = "fa fa-star"
                                }
                                for (var i = 1; i <= sno; i++) {
                                    var cur = document.getElementById("star" + i)
                                    if (cur.className == "fa fa-star") {
                                        cur.className = "fa fa-star checked"
                                    }
                                }
                            }
                        </script>
                    </div>
                    <!-- col.// -->
                </div>
                <!-- row.// -->
            </div>

        </div>
        <%-- Sản Phẩm Cùng Cửa Hàng --%>
        <h3 class="h3">Sản Phẩm Cùng Cửa Hàng</h3>
        <section class="dorne-features-destinations-area">
            <div class="container-fluid">
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
                                            </div>
                                            <div class="feature-favourite">
                                                <a href='<%# "ChiTietSanPham.aspx?MaSP=" + Eval("MaSP") %>'><i class="fa fa-heart-o" aria-hidden="true"></i></a>
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
        <%-- Sản Phẩm Tương Tự --%>
        <link href="css/ShowProduct.css" rel="stylesheet" />
        <section class="dorne-listing-destinations-area section-padding-100-50" style="margin-left: 12%">
            <div class="container-fluid">
                <h3 class="h3">Sản Phẩm Tương Tự</h3>
                <div class="row">
                    <asp:Repeater ID="rptSPTT" runat="server">
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
    </div>
</asp:Content>
