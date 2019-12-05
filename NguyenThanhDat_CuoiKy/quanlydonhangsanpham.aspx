<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="quanlydonhangsanpham.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.quanlydonhangsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <h4>Quản Lý Đơn Hàng Dịch Vụ</h4>
        <br />
        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting">
            <Columns>
                <asp:BoundField DataField="SoDH" HeaderText="Số ĐH" />
                <asp:BoundField DataField="MaKH" HeaderText="Mã KH" />
                <asp:BoundField DataField="NgayDH" HeaderText="Ngày ĐH" />
                <asp:BoundField DataField="TriGia" HeaderText="Trị Giá" />
                <asp:BoundField DataField="TenNguoiNhan" HeaderText="Tên Người Nhận" />
                <asp:BoundField DataField="DiaChiNhan" HeaderText="Địa Chị" />
                <asp:BoundField DataField="SDTNguoiNhan" HeaderText="Điện thoại" />
                <asp:BoundField DataField="MaDV" HeaderText="Mã DV" />
                <asp:BoundField DataField="DaThanhToan" HeaderText="Đã Thanh Toán" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
