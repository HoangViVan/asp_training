<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap9.aspx.cs" Inherits="Lab2.baitap9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="border:1px solid #ba00ae;width:500px">
                <div style="text-decoration:underline;text-align:center;color:#fff; cursor:pointer; display:flex; align-items:center; background-color:#ba00ae;height:50px">
                    <div style="width:50%">
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Onclickviewupdate" ForeColor="White">Update tập tin</asp:LinkButton>
                        </div>
                    <div style="width:50%">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Onclickviewxemtin" ForeColor="White">Xem các tập tin được update</asp:LinkButton>
                    </div>
                </div>
                <div>
                    <div style="height:80px;width:100%; display:flex;justify-content:center; align-items:center;flex-direction:column">
                        <asp:MultiView ID="MultiView1" runat="server">
                                        <asp:View ID="View1" runat="server">
                                            <asp:FileUpload ID="FileUpload1" Width="100%" Height="20px" runat="server" /><br />
                                            <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                                        </asp:View> 
                            <asp:View ID="View2" runat="server">
                                <asp:ListBox ID="lbxketqua" runat="server" Width="100%"></asp:ListBox>                            
                            </asp:View>
                                    </asp:MultiView>
                    </div>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
