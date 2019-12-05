<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="headerAdmin.ascx.cs" Inherits="NguyenThanhDat_CuoiKy.headerAdmin" %>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="Default.aspx">B.Ship</a>
    </div>

    <ul class="nav navbar-nav navbar-left navbar-top-links">
        <li><a href="Default.aspx"><i class="fa fa-home fa-fw"></i>Trang Chủ</a></li>
    </ul>

    <ul class="nav navbar-right navbar-top-links">

        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>
                <asp:Label ID="lblAdmUser" runat="server" Text="UserName"></asp:Label>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                </li>
                <li class="divider"></li>
                <li><a href="loginAdmin.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                </li>
            </ul>
        </li>
    </ul>

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">

                <li>
                    <a href="Adminstator.aspx" class="active"><i class="fa fa-dashboard fa-fw"></i>Quản Lý Đơn Hàng</a>
                </li>
                <li>
                    <a href="quanlycuahang.aspx"><i class="fa fa-bar-chart-o fa-fw"></i>Quản Lý Cửa Hàng</a>
                </li>
                <li>
                    <a href="quanlysanpham.aspx"><i class="fa fa-table fa-fw"></i>Quản Lý Sản Phẩm</a>
                </li>
                <li>
                    <a href="quanlykhachhang.aspx"><i class="fa fa-edit fa-fw"></i>Quản Lý Khách Hàng</a>
                </li>
                <li>
                    <a href="quanlykhachhang.aspx"><i class="fa fa-wrench fa-fw"></i>Quản Lý Đơn Hàng Sản Phẩm</a>
                </li>
                <li>
                    <a href="ChangeLogo.aspx"><i class="fa fa-sitemap fa-fw"></i>Quản Lý Giao Diện</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
