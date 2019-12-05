<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenThanhDat.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="NguyenThanhDat_CuoiKy.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="fonts/Payment.css" rel="stylesheet" />
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero-1.jpg)"></div>
    <div class="row container">
        <div class="col-7">
            <br />
            Khách Hàng:
            <asp:Label ID="lbltenKH" runat="server" ForeColor="#CC0000"></asp:Label>
            &nbsp;<br />
            <h2>
                <asp:Label ID="lblTB" runat="server" Text=""></asp:Label>
            </h2>
            <br />
            Người Nhận:<br />
            <asp:TextBox ID="txtNguoiNhan" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
            Địa Chỉ:<br />
            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox><br />
            Chọn Địa điểm:<br />
            <asp:DropDownList ID="ddlrecipients" CssClass="custom-select col-12" runat="server">
            </asp:DropDownList><br />
            <br />
            Chọn Loại Giao Hàng:
            <br />
            <asp:DropDownList ID="DdlMenu" CssClass="custom-select col-12" runat="server" OnSelectedIndexChanged="DdlMenu_SelectedIndexChanged">
            </asp:DropDownList><br />
            <br />
            Điện Thoại:<br />
            <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server"></asp:TextBox><br />
            
            <asp:Button ID="btnXacNhan" CssClass="btn btn-success" runat="server" Text="Xác Nhận Thanh Toán" OnClick="btnXacNhan_Click" /><br />
            <asp:Button ID="btnTiepTucTT" CssClass="btn btn-success" runat="server" Text="Tiếp Tục Thanh Toán"  Visible="false" OnClick="btnTiepTucTT_Click"/><br />
            <asp:Label ID="lblXN" runat="server" ForeColor="Red"></asp:Label><br />
            <asp:Label ID="lblerror1" runat="server" ForeColor="Blue"></asp:Label><br />
            <asp:Label ID="lblerror2" runat="server" ForeColor="Green"></asp:Label><br />
        </div>
        <div class="col-5 align-content-center">
            <h3>Đơn Hàng Đã Mua</h3>
            <asp:GridView ID="GvData" CssClass="table table-striped table-bordered table-hover dataTable" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã Sp" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên Sp" />
                    <asp:BoundField DataField="DonGiaSP" HeaderText="Đơn Giá Sp" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" />
                </Columns>
            </asp:GridView>
            <h3 style="color: red">Giá Đơn Hàng : <%=Sum %> vnđ</h3>
            <br />
            <h2 style="color: red">Tổng : <%=Sum+Price %> vnđ</h2>
            <h3>
                <asp:Label ID="lblGiaGH" runat="server" ForeColor="Red"></asp:Label>
            </h3>
            <br />
        </div>

    </div>
</asp:Content>
