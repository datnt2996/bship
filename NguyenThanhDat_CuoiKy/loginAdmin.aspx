<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.loginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập Quản Trị B.Ship</title>
    <link rel="icon" href="flaicon.png" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->

    <link href="../css/metisMenu.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="../css/startmin.css" rel="stylesheet" />
    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet" />

    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 500px; width: 50%;">
            <div class="col-md-12 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">ĐĂNG NHẬP</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <asp:TextBox ID="txtUser" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnOK" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Đăng nhập" OnClick="btnOK_Click"></asp:Button>
                        <br />
                        <asp:Label ID="lblNtf" CssClass="alert alert-warning" runat="server" Visible="False"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
