<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ChangeLogo.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.ChangeLogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <div class="form-group">
            <h4>Thay đổi logo</h4><br />
            <asp:FileUpload CssClass="btn btn-primary btn-file"  ID="MyFile" runat="server" />
            <asp:Button ID="btnScreenIMG" CssClass="btn btn-lg btn-success" runat="server" Text="Xem Hình" OnClick="btnScreenIMG_Click" />
             <asp:Image ID="ImgScreen" runat="server" Height="100px" Width ="100px" Visible="false"/>
             <asp:Label ID="lblNtf" CssClass="alert alert-warning" runat="server" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>
