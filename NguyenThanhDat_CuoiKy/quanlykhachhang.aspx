<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="quanlykhachhang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.quanlykhachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="well well-lg">
        <h4>Quản Lý Đơn Hàng Dịch Vụ</h4>
        <br />

        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting">
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="Mã KH" />
                   <asp:BoundField DataField="TenKH" HeaderText="Tên Kh" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh KH" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                <asp:BoundField DataField="SoDT" HeaderText="SDT" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="TenDN" HeaderText="Tên Đăng Nhập" />
                <asp:BoundField DataField="MatKhau" HeaderText="mật khẩu" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
