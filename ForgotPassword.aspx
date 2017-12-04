<%@ Page Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="OnlineVideoStreaming.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    
    <link href="UserLoginPage.css" rel="stylesheet" />
   
             <div class="box">
            <%--<div class="content">--%>
               <h1>Forgot Password</h1>
                <table>
                <tr>
                  <td>
                       <asp:Label ID="lblEmailId" runat="server" Text="Email Id:"></asp:Label>
                        </td>
                        
                            
                        
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="EmailIdRequired" runat="server" controltovalidate="txtEmail" errormessage="Email Id is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>

                        <td>

                        </td>
                        <td>
                            <asp:button CssClass="btn" id="btnLogin" runat="server"  text="Reset Password" OnClick="SendEmail"></asp:button>
                        </td>
                    </tr>
                </table>
                             <asp:Label ID="lblMessage" runat="server" />
                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                   </div>
</asp:Content>
