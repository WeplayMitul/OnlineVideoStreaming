<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserImage.aspx.cs" Inherits="OnlineVideoStreaming.UserImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
     
<body>
    <form id="form1" runat="server">
    <div>
  
        <link href="m1.css" rel="stylesheet" />
        <link href="m2.css" rel="stylesheet" />
      
    <div id='header_bg'>
         <a class="signup" >
             <%--<asp:DropDownList ID="ddSearch" runat="server" width="250" Height="35px" style="margin-left: 0px">
                                <asp:ListItem></asp:ListItem>
                                 <asp:ListItem>Advertisement</asp:ListItem>
                                <asp:ListItem>Animation</asp:ListItem>
                                <asp:ListItem>Auto and Vehicles</asp:ListItem>
                                <asp:ListItem>Comedy</asp:ListItem>
                                <asp:ListItem>Dance</asp:ListItem>
                                <asp:ListItem>Education</asp:ListItem>
                                <asp:ListItem>Entertainment</asp:ListItem>
                                <asp:ListItem>Film Trailer</asp:ListItem>
                                 <asp:ListItem>Gaming</asp:ListItem>
                                 <asp:ListItem>Music</asp:ListItem>
                                 <asp:ListItem>News & Politics</asp:ListItem>
                                 <asp:ListItem>Science & Technology</asp:ListItem>
                                 <asp:ListItem>Study</asp:ListItem>
             </asp:DropDownList> --%>
             <%--<asp:TextBox ID="txtSearch" runat="server" Height="21px" style="margin-left: 0px" Width="443px" CssClass="field" ></asp:TextBox>--%>&nbsp&nbsp<%--<asp:Button ID="btnSearch" runat="server" Text="Search" Height="34px" Width="90px" OnClick="btnSearch_Click1" />--%>&nbsp&nbsp<%--<img src="images/search.png" width="30" height="30" /> --%>&nbsp 
             &nbsp<%--<asp:ImageButton ID="imgbtnsearch" runat="server" src="images/search.png" width="44px" Height="31px" /> --%>&nbsp;&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp<asp:Label ID="lblFname" runat="server" Text="Label" Visible="false"></asp:Label><%--<asp:Label ID="lblLname" runat="server" Text="Label"></asp:Label>--%>   <asp:Button ID="Button1" runat="server" Text="Upload Video" CssClass="login" Height="37px" OnClick="Button1_Click1"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
  <div id='header-wrapper'>
      <b:section class='header' id='header' maxwidgets='' showaddelement='no'>
        <b:widget id='Header1' locked='true' title='Blog Tube (Header)' type='Header'>
          <b:includable id='main'></div>
        </div>
    
         <center>
             
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
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("videoCategory") %>'></asp:Label>
                    </td>
                </tr
               
            
                <tr>
                    <td>
                        <asp:LinkButton ID="lnkDelete" runat="server" OnCommand="lnkDelete_Command"  CommandArgument='<%# Eval("vId") %>'>Delete</asp:LinkButton>
                    </td>
                </tr>
        </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBLiveStreamingConnectionString %>" SelectCommand="SELECT * FROM [tblVideosAdd]"></asp:SqlDataSource>
       </center>
          </form>
</body>
</html>
