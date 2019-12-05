<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="quanlysanpham.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.quanlysanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <h4>Quản Lý Đơn Hàng Dịch Vụ</h4>
        <asp:Button ID="btnCreate" CssClass="btn btn-primary" runat="server" Text="Thêm Sản Phẩm Mới" PostBackUrl="~/AddProduct.aspx" /><br />
        <br />
        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting">
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã SP" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                <asp:BoundField DataField="DonGiaSP" HeaderText="Đơn Giá SP" />
                <asp:BoundField DataField="MaCH" HeaderText="mã CH" />
                <asp:BoundField DataField="HinhMinhHoaSP" HeaderText="Hình Minh Họa" />
                <asp:BoundField DataField="MoTaSP" HeaderText="Mô Tả" />
                <asp:BoundField DataField="NgayCapNhat" HeaderText="Ngày Cập Nhật" />
                <asp:BoundField DataField="SoLuongban" HeaderText="Số Lượng Bán" />
                <asp:BoundField DataField="SoLanXem" HeaderText="Số Lượng Xem" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
