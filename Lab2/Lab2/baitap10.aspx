<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap10.aspx.cs" Inherits="Lab2.baitap10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border:1px solid #ff0000;width:500px;">
            <div style="text-align:center;color:#ff0000;width:100%;height:40px;font-weight:bold;border-bottom:1px dashed #ff0000;background-color:#ffd800">Chọn các sản phẩm bạn thích</div>
            <div style="display:flex;background-color:#f9ffb5">
                <div style="width:45%; border-right:1px solid #ff0000">
                    <div style="color:#ff6a00; border-bottom:1px dashed #ff0000;text-align:center;padding:10px 0">Danh sách sản phẩm</div>
                    <div style="display:flex;flex-direction:column">
                        <div>
                        <asp:CheckBox ID="cktraicay" AutoPostBack="true" runat="server" Text="Kẹo trái cây thập cẩm" OnCheckedChanged="cktraicay_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="ckkeonho" AutoPostBack="true" runat="server" Text="Kẹo nho" OnCheckedChanged="ckkeonho_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="ckkeotao" AutoPostBack="true" runat="server" Text="Kẹo táo" OnCheckedChanged="ckkeotao_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="cksocalatao" AutoPostBack="true" runat="server" Text="Sôcôla táo" OnCheckedChanged="cksocalatao_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="cksocaladp" AutoPostBack="true" runat="server" Text="Kẹo Sôcôla đậu phộng" OnCheckedChanged="cksocaladp_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="ckcoffeesua" AutoPostBack="true" runat="server" Text="Kẹo coffee sữa" OnCheckedChanged="ckcoffeesua_CheckedChanged"/></div>
                        <div>
                        <asp:CheckBox ID="cksocalatc" AutoPostBack="true" runat="server" Text="Sôcôla thập cẩm có nhân" OnCheckedChanged="cksocalatc_CheckedChanged" /></div>
                        
                    </div>
                </div>
                <div style="width:20%; border-right:1px solid #ff0000">
                    <div style="color:#ff6a00; border-bottom:1px dashed #ff0000;text-align:center;padding:10px 0">Số lượng</div>
                    <div style="text-align:center;color:#ff0000">
                        <asp:Label ID="lblsoluong" runat="server" Text="<b>0</b> sản phẩm"></asp:Label></div>
                </div>
                <div style="width:35%">
                    <div style="color:#ff6a00; border-bottom:1px dashed #ff0000;text-align:center;padding:10px 0">Sản phẩm được chọn</div>
                    <div style="padding:10px">
                        <asp:ListBox ID="lbketqua" Width="100%" Height="100%" runat="server"></asp:ListBox>
                    </div>
                </div>
            </div>
            <div style="display:flex;justify-content:center;align-items:center;height:40px;background-color:#ff6a00">
                <asp:Button ID="btnchonlai" runat="server" Text="Bắt đầu chọn lại" style="height:20px" OnClick="btnchonlai_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
