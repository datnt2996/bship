<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div><br />
    <div class="container">
        <asp:GridView ID="GvData" CssClass="table table-striped table-bordered table-hover dataTable" DataKeyNames="MaSP" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã Sp" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sp" />
                <asp:BoundField DataField="DonGiaSP" HeaderText="Đơn Giá Sp" />
                <asp:TemplateField HeaderText="Số Lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="TxtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
            </Columns>
        </asp:GridView>
        <br /><asp:Label ID="lblNtf" CssClass="alert alert-warning" runat="server" Visible="False"></asp:Label><br /><br />
        <div class="container row">
            <div class="col-3">
                <asp:Button ID="btnCtn" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Tiếp Tục Mua" PostBackUrl="~/SanPham.aspx"></asp:Button></div>
            <div class="col-3">
                <asp:Button ID="btnDelete" CssClass="btn btn-lg btn-danger btn-block" runat="server" Text="Xóa Giỏ Hàng" OnClick="btnDelete_Click"></asp:Button></div>
            <div class="col-3">
                <asp:Button ID="btnUpdate" CssClass="btn btn-lg btn-info btn-block" runat="server" Text="Cập Nhật" OnClick="btnUpdate_Click"></asp:Button></div>
            <div class="col-3">
                <asp:Button ID="btnTT" CssClass="btn btn-lg btn-success btn-block" runat="server"  Text="Thanh Toán" PostBackUrl="~/ThanhToan.aspx"></asp:Button></div>
        </div>
        <br />
    </div>
</asp:Content>
