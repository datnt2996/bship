<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="CHQLSanPham.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.CHQLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="well well-lg">
        <h4>Quản Lý Sản Phẩm Của Bạn</h4>
        <asp:Button ID="btnCreate" CssClass="btn btn-primary" runat="server" Text="Thêm Sản Phẩm Mới" PostBackUrl="~/ThemSanPhamCH.aspx" /><br /><br />

        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False"  OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting" CellSpacing="5" PageSize="5" >
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã Sp" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sp" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="DonGiaSP" HeaderText="Giá SP" />
                <asp:BoundField DataField="HinhMinhHoaSP" HeaderText="HinhSP" />
                <asp:BoundField DataField="MoTaSP" HeaderText="Mật khẩu" />
                <asp:BoundField DataField="NgayCapNhat" HeaderText="NgayCN" />
                <asp:BoundField DataField="SoLuongban" HeaderText="Lượng Bán" />
                <asp:BoundField DataField="SoLanXem" HeaderText="Lượt Xem" />
                <asp:BoundField DataField="MoTaSP" HeaderText="Mô Tả" />
                <asp:HyperLinkField DataNavigateUrlFields="MaSP" DataNavigateUrlFormatString="~/ChiTietSanPham.aspx?MaSP={0}" DataTextFormatString="{0}" HeaderText="Xem" Text="link" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" >
<ControlStyle CssClass="btn btn-lg btn-success"></ControlStyle>
                </asp:CommandField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
