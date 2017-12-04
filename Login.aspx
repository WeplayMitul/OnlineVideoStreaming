<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineVideoStreaming.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <div class='signup'>
    <a href="UserRegistration.aspx">Sign Up</a>&nbsp; <a class='login' href="WebCam/Captureimage.aspx">Go ive</a>
</div>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    
    <link href="UserLoginPage.css" rel="stylesheet" />
   
             <div class="box">
            <%--<div class="content">--%>
               <h1>Login</h1>
                <table>
                <tr>
                  <td>
                       <asp:Label ID="lblEmailId" runat="server" Text="Email Id"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtemailId" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="EmailIdRequired" runat="server" controltovalidate="txtemailId" errormessage="Email Id is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                  <td>
                       <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
                              <asp:requiredfieldvalidator id="PasswordIsRequired" runat="server" controltovalidate="txtPwd" errormessage="Password is required." SetFocusOnError="True" ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    </table>
                 <asp:button CssClass="btn" id="btnLogin" runat="server"  text="Log In" OnClick="btnLogin_Click"></asp:button>
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserRegistration.aspx">New User</asp:HyperLink>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                </div>
</asp:Content>
