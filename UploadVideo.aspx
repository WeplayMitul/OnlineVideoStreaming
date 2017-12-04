<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="UploadVideo.aspx.cs" Inherits="OnlineVideoStreaming.UploadVideo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="UploadVideoPg.css" rel="stylesheet" />
     <div class="box">
            <div class="content">
                     <table>
                    <tr>
                        <td>
                       <asp:Label ID="lblVname" runat="server" Text="Video Name"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtVname" runat="server" CssClass="field"></asp:TextBox>
                             <asp:requiredfieldvalidator id="FnameIsRequired" runat="server" controltovalidate="txtVname" errormessage="Video Name is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Video Author</td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtAname" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" controltovalidate="txtAname" errormessage="Author Name is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                       <asp:Label ID="lblAddVideo" runat="server" Text="Add Video"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="field" />
                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1"
             ErrorMessage="Choose a Video!"> </asp:RequiredFieldValidator>--%>    
                        </td>
                    </tr>
                    <tr>
                        <td>
                       <asp:Label ID="lblVideoCategory" runat="server" Text="Video Category"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:DropDownList ID="DDVideoCategory" runat="server" CssClass="field">
                                <asp:ListItem value="0">Select Video Category</asp:ListItem>
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
                         </asp:DropDownList>
                        <%--     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDVideoCategory"
                ErrorMessage="Please Choose Video Category" InitialValue="--Select--"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    
               </table>
             
               
        
     <asp:button CssClass="btn" id="btnSubmit" runat="server"  text="Submit" OnClick="btnSubmit_Click"></asp:button>
                

                <asp:Label ID="Label2" runat="server" Text="Label2" Visible="false"></asp:Label>
                 <asp:button CssClass="btn" id="btnUpload" runat="server"  text="View All Uploaded Video" OnClick="btnUpload_Click"></asp:button>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
               

    </div>
    </div>
</asp:Content>

