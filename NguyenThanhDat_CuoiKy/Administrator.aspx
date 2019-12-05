<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <h4>Quản Lý Đơn Hàng Dịch Vụ</h4>
        <br />

        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting">
            <Columns>
                <asp:BoundField DataField="MaDH" HeaderText="Mã ĐH" />
                <asp:BoundField DataField="MaDV" HeaderText="Mã DV" />
                <asp:BoundField DataField="MaKH" HeaderText="Mã KH" />
                <asp:BoundField DataField="DCGiaoHang" HeaderText="DC Người Giao" />
                <asp:BoundField DataField="TenNguoiGui" HeaderText="Tên Người Giao" />
                <asp:BoundField DataField="SDTNguoiNhan" HeaderText="SDT Người Giao" />
                <asp:BoundField DataField="TenNguoiNH" HeaderText="Tên Người Nhận" />
                <asp:BoundField DataField="DCNhanhang" HeaderText="ĐC Người Nhận" />
                <asp:BoundField DataField="SDTNhanHang" HeaderText="SĐT Người Nhận" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" />
                <asp:BoundField DataField="HTThanhToan" HeaderText="HT Thanh Toán" />

                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
