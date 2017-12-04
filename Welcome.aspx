<%--<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="OnlineVideoStreaming.Welcome" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="UploadVideoPg.css" rel="stylesheet" />
      <div class="box">
            <div class="content">
               <h1>WELCOME</h1>
              <table>
                  <tr>
                      <td>&nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  <asp:Label ID="lblMsg" runat="server" Text="Thanks for creating We Play Account Use it to Upload to Video on We Play. "></asp:Label></td> 
                  </tr>
              </table>
                 <asp:button CssClass="btn" id="btnCountinue" runat="server"  text="Countinue"></asp:button>
        </div>
  
  

       
    </div>
</asp:Content>
