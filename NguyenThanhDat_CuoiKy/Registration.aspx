<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />

    <link href="../css/metisMenu.min.css" rel="stylesheet" />

    <link href="../css/startmin.css" rel="stylesheet" />

    <link href="css/responsive/responsive.css" rel="stylesheet" />

    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div style="background-image: url(img/bg-img/hero-1.jpg); height: 1000px; width: 100%">

        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h2 class="panel-title">ĐĂNG KÝ KHÁCH HÀNG</h2>
                </div>
                <div class="panel-body">
                    <fieldset>
                        <div class="form-group">
                            <asp:TextBox ID="txtHten" CssClass="form-control" placeholder="Họ và tên" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="rd1" runat="server" ErrorMessage="Bạn chưa nhập họ tên" ControlToValidate="txtHten">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtAdr" CssClass="form-control" placeholder="Địa Chỉ" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="rd2" runat="server" ErrorMessage="Bạn chưa nhập Địa chỉ" ControlToValidate="txtAdr">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtNumPhone" CssClass="form-control" placeholder="Số Điện Thoại" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Bạn chưa nhập Số điện thoại" ControlToValidate="txtNumPhone">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtUser" CssClass="form-control" placeholder="Tên Đăng Nhập" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Bạn chưa nhập tên đăng nhập" ControlToValidate="txtUser">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Bạn chưa nhập mật khẩu" ControlToValidate="txtPwd">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group row">
                            <h4 class="col-12">Ngày Sinh:</h4>
                            <div class="col-4">
                                <label>Ngày:</label><asp:DropDownList CssClass="custom-select" ID="drsNgay" runat="server"></asp:DropDownList></div>
                            <div class="col-4">
                                <label>&nbsp;Tháng&nbsp; </label>
                                <asp:DropDownList CssClass="custom-select" ID="drsThang" runat="server"></asp:DropDownList></div>
                            <div class="col-4">
                                <label>&nbsp;Năm &nbsp;</label><asp:DropDownList CssClass="custom-select" ID="ddlYear" runat="server"></asp:DropDownList></div>
                            <%--<asp:TextBox ID="txtBirtD" CssClass="form-control" placeholder="Ngày Sinh" runat="server" TextMode="DateTime"></asp:TextBox>--%>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Bạn chưa nhập ngày sinh" ControlToValidate="txtBirtD">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <h4>Giới tính:</h4>
                            <label>
                                <asp:RadioButton ID="rdoNam" runat="server" Text="Nam" Checked="True" GroupName="GT" />
                                &nbsp;&nbsp;<asp:RadioButton ID="rdoNu" runat="server" Text="Nữ" GroupName="GT" />
                            </label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="email" runat="server" TextMode="Email"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Bạn chưa nhập email" ControlToValidate="txtEmail">(*)</asp:RegularExpressionValidator>--%>
                        </div>
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Capcha.aspx" Width="186px" />
                        <br />
                        Enter Verifaction Code  <asp:TextBox runat="server" CssClass="form-control" ID="txtVerificationCode"></asp:TextBox> 
                        <br />
                        <asp:Label runat="server" CssClass="alert alert-warning" ID="lblCaptchaMessage" Visible="false"></asp:Label>
                        <br /><br />
                    </fieldset>
                    <asp:Button ID="btnOK" CssClass="btn btn-lg btn-success" runat="server" Text="Đăng Ký" OnClick="btnOK_Click1"></asp:Button>&nbsp;
                        <a href="login.aspx">
                            <asp:Label ID="btnkdk" runat="server" Text="Bạn đã có tài khoản?"></asp:Label></a>
                    <br />
                    <br />
                    <asp:Label ID="lblNtf" CssClass="alert alert-warning" runat="server" Visible="False"></asp:Label>
                    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server"/>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
