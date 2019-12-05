<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="quanlycuahang.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.quanlydonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well well-lg">
        <h4>Quản Lý Cửa Hàng</h4>
        <asp:Button ID="btnCreate" CssClass="btn btn-primary" runat="server" Text="Thêm Cửa Hàng Mới" PostBackUrl="~/AddCH.aspx" /><br />
        <br />

        <asp:GridView CssClass="table table-striped table-bordered table-hover dataTable" ID="GvData" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GvData_PageIndexChanging" OnRowCancelingEdit="GvData_RowCancelingEdit" OnRowDeleting="GvData_RowDeleting" OnRowEditing="GvData_RowEditing" OnRowUpdating="GvData_RowUpdating" OnSorting="GvData_Sorting">
            <Columns>
                <asp:BoundField DataField="MaCH" HeaderText="Mã CH" />
                <asp:BoundField DataField="TenCH" HeaderText="Tên CH" />
                <asp:BoundField DataField="ChuCH" HeaderText="Chủ CH" />
                <asp:BoundField DataField="SdtCH" HeaderText="Số Điện Thoại" />
                <asp:BoundField DataField="DiaChiCH" HeaderText="Địa chỉ" />
                <asp:BoundField DataField="TenDNCH" HeaderText="Tên ĐN" />
                <asp:BoundField DataField="MatKhauCH" HeaderText="Mật khẩu" />
                <asp:BoundField DataField="ThanhToan" HeaderText="Thanh toán" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-lg btn-success" DeleteText="Xóa" EditText="Sửa" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
