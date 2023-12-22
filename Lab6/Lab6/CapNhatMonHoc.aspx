<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CapNhatMonHoc.aspx.cs" Inherits="Lab6.CapNhatMonHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">DANH SÁCH MÔN HỌC</div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="Label1" runat="server" Text="Mã môn học: "></asp:Label>
        <asp:TextBox ID="txtmamonhoc" runat="server"></asp:TextBox>
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="Label2" runat="server" Text="Tên môn học: "></asp:Label>
        <asp:TextBox ID="txttenmonhoc" runat="server"></asp:TextBox>
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:GridView ID="grvcnmh" runat="server" Width="300" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grvcnmh_SelectedIndexChanged" OnPageIndexChanging="grvcnmh_PageIndexChanging" PageIndex="3" AllowPaging="True" PageSize="3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="lblthongbao" runat="server" Text="Thông báo"></asp:Label>
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
        <asp:Button ID="btnluu" runat="server" Text="Lưu" OnClick="btnluu_Click" />
        <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
        <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
    </div>
    
</asp:Content>
