<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="ViewUploadVideo.aspx.cs" Inherits="OnlineVideoStreaming.ViewUploadVideo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <div class='signup'>
        <a href="changePWD.aspx"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></a>
        <a href="Login.aspx">Logout</a>

    </div>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <center>
      
    
    <br />
      
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
                         
                 <asp:ImageButton ID="ImageButton1" runat="server" Height="35px"  src="images/like.png" OnClick="ImageButton1_Click"></asp:ImageButton><asp:Label ID="Like" runat="server" Text="Like" ></asp:Label>&nbsp&nbsp<asp:Button ID="Button3" runat="server" Text="Subscribe" Cssclass="btn" BackColor="Red" Height="30px" Width="110px" OnClick="Button2_Click"></asp:Button>
                   
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBLiveStreamingConnectionString %>" SelectCommand="SELECT * FROM [tblVideosAdd]"></asp:SqlDataSource>
       </center>
   
</asp:Content>
