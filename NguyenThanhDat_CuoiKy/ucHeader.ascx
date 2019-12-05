<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="NguyenThanhDat_CuoiKy.ucHeader" %>
<div id="preloader">
    <div class="dorne-load"></div>
</div>

<!-- ***** Search Form Area ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header_area" id="header">
    <div class="container-fluid h-100">
        <div class="row h-100">
            <div class="col-12 h-100">
                <nav class="h-100 navbar navbar-expand-lg">
                    <a class="navbar-brand" href="Default.aspx">
                        <img width="130px" src="demo.png"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dorneNav" aria-controls="dorneNav" aria-expanded="false" aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
                    <!-- Nav -->
                    <div class="collapse navbar-collapse" id="dorneNav">
                        <ul class="navbar-nav mr-auto" id="dorneMenu">
                            <li class="nav-item">
                                <a class="nav-link" href="Default.aspx">Trang Chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="khampha.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dịch Vụ Giao Hàng <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Default.aspx">Trang Chủ</a>
                                    <a class="dropdown-item" href="khampha.aspx">Giao hàng</a>
                                    <a class="dropdown-item" href="SanPham.aspx">Sản Phẩm</a>
                                    <a class="dropdown-item" href="BanHang.aspx">Cửa hàng</a>
                                    <a class="dropdown-item" href="LienHe.aspx">Liên Hệ</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="SanPham.aspx" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mua Hàng <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                    <a class="dropdown-item" href="Default.aspx">Trang chủ</a>
                                    <a class="dropdown-item" href="khampha.aspx">Giao Hàng</a>
                                    <a class="dropdown-item" href="SanPham.aspx">Sản Phẩm</a>
                                    <a class="dropdown-item" href="BanHang.aspx">Cửa hàng</a>
                                    <a class="dropdown-item" href="LienHe.aspx">Liên Hệ</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="LienHe.aspx">Liên Hệ</a>
                            </li>
                        </ul>

                        <!-- Signin btn -->
                        <div class="dorne-signin-btn nav navbar-right">
                            <a href="login.aspx">
                                <asp:Label ID="lblDN" runat="server" Text="Đăng nhập hoặc đăng ký"></asp:Label></a>
                            <a href="login.aspx">
                                <asp:Label ID="lblLout" runat="server" Text="Đăng Xuất" Visible="False"></asp:Label></a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
