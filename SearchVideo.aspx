<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="SearchVideo.aspx.cs" Inherits="OnlineVideoStreaming.SearchVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center><link href="UserLoginPage.css" rel="stylesheet" />
            
    <asp:DataList ID="DataList1" runat="server" DataKeyField="vId" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False" Width="377px" BackColor="White" BorderStyle="Outset">
        <ItemTemplate>
            <br />
            
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("videoName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("videoAuthor") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("addVideo") %>' ></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                       <%-- <asp:Label ID="Label3" runat="server" Text='<%# Eval("videoCategory") %>'></asp:Label>--%>
                        <asp:Button ID="Button1" runat="server" Text="Like" CssClass="btn" Height="30px" Width="100px"></asp:Button>&nbsp&nbsp<asp:Button ID="Button2" runat="server" Text="Subscribe" Cssclass="btn" BackColor="Red" Height="30px" Width="110px"></asp:Button>
                    </td>
                </tr>
             
                
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBLiveStreamingConnectionString %>" SelectCommand="SELECT * FROM [tblVideoAdd]"></asp:SqlDataSource>
       </center>
</asp:Content>
