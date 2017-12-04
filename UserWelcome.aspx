<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="UserWelcome.aspx.cs" Inherits="OnlineVideoStreaming.UserWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
            <h1>   <asp:Label ID="lblMsg" runat="server" Text="Thanks for creating We Play Account."></asp:Label><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Countinue</asp:HyperLink></h1>
               
  </center>           
</asp:Content>
