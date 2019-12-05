<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="khampha.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.khampha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)">
    </div>
    <div class="well well-lg">
        <div class="panel-heading">
            <h2 class="panel-title">Sử Dụng Dịch Vụ Giao Hàng</h2>
        </div>
        <div class="panel-body">
            <div class="tab-pane fade show active col-6" id="nav-places" role="tabpanel">
                <h6>Bạn muốn sử dụng dịch của chúng tôi giao hàng?</h6>
                <asp:TextBox ID="TxtInfget" CssClass="form-control" placeholder="Thông tin Liên Hệ" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="txtNumPhone" CssClass="form-control" placeholder="Số điện thoại của bạn" TextMode="Number" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="txtAdressRec" CssClass="form-control" placeholder="nơi nhận hàng" runat="server"></asp:TextBox><br />
                <asp:DropDownList ID="ddlrecipients" CssClass="custom-select col-12" runat="server">
                </asp:DropDownList><br />
                <br />
                <asp:TextBox ID="txtInfSet" CssClass="form-control" placeholder="Thông tin Liên Hệ người nhận" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="txtNumPhoneLH" CssClass="form-control" placeholder="Số điện thoại của người nhận" TextMode="Number" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="txtAdressDes" CssClass="form-control" placeholder="nơi giao hàng" runat="server"></asp:TextBox><br />
                <asp:DropDownList ID="ddldestination" CssClass="custom-select col-12" runat="server">
                </asp:DropDownList><br />
                <br />
                <asp:DropDownList ID="DdlMenu" CssClass="custom-select col-12" runat="server">
                </asp:DropDownList><br />
                <br />
                <asp:DropDownList ID="ddlMass" CssClass="custom-select col-12" runat="server">
                </asp:DropDownList><br />
                <br />
                <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Capcha.aspx" Width="186px" />
                <br />
                Nhập mã Captcha:<asp:TextBox runat="server" CssClass="form-control" ID="txtVerificationCode"></asp:TextBox>
                <br />
                <asp:Label runat="server" CssClass="alert alert-warning" ID="lblCaptchaMessage" Visible="false"></asp:Label>
                <br />
                <br />
                <asp:Button CssClass="btn dorne-btn" ID="btnPrice" runat="server" Text="Gọi giao hàng" OnClick="btnPrice_Click"></asp:Button>
                <br />
                <br />
                <asp:Label ID="lblNtf" runat="server" Visible="False"></asp:Label>
            </div>
        </div>
    </div>
    <script src="js/active.js"></script>
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/others/plugins.js"></script>

</asp:Content>
