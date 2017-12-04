<%@ Page Title="" Language="C#" MasterPageFile="~/LiveStreaming.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="OnlineVideoStreaming.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class='signup'>
        <a class='login' href="Login.aspx">Login</a> <a class='login' href="WebCam/Captureimage.aspx">Go ive</a>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="RegistrationPage.css" rel="stylesheet" />
   
        <div class="box">
            <div class="content">
<h1>Create your We Play Account </h1>
                
                <table>
                    <tr>
                        <td>
                      <asp:Label ID="lblFname" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtFname" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="FnameIsRequired" runat="server" controltovalidate="txtFname" errormessage="First Name is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
               
                <tr>
                        <td>
                       <asp:Label ID="lblMname" runat="server" Text="Middle Name"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtMname" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="MiddleNameRequired" runat="server" controltovalidate="txtMname" errormessage="Middle Name is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
               <tr>
                  <td>
                       <asp:Label ID="lblLname" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="LastNameRequired" runat="server" controltovalidate="txtLname" errormessage="Last Name is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                  <td>
                       <asp:Label ID="lblMobNo" runat="server" Text="Mobile Number"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobNo" runat="server" CssClass="field"></asp:TextBox>
                              <asp:requiredfieldvalidator id="MobNoRequired" runat="server" controltovalidate="txtMobNo" errormessage="Mobile No is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="User Profile"></asp:Label>
                        </td>
                    <td>
:
                    </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="field"/>
                          <asp:RequiredFieldValidator  ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1"
             ErrorMessage="Choose a Image!"></asp:RequiredFieldValidator>    
                        </td>
                    </tr>
                    <tr>
                  <td>
                       <asp:Label ID="lblEmailId" runat="server" Text="Email Id"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmailId" runat="server" CssClass="field"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req4" runat="server" ControlToValidate="txtEmailId" Text="Email Id is required" />
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="eg. you@domain.com" ControlToValidate="txtEmailId"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              <%--<asp:requiredfieldvalidator id="EmailIdRequired" runat="server" controltovalidate="txtEmailId" errormessage="Email Id is required." ></asp:requiredfieldvalidator>--%>
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
                              <asp:requiredfieldvalidator id="PasswordIsRequired" runat="server" controltovalidate="txtPwd" errormessage="Password is required." SetFocusOnError="True" Display="Dynamic"></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                    <tr>
                  <td>
                       <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" ></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
                             <asp:requiredfieldvalidator id="ConfirmPasswordIsRequire" runat="server" controltovalidate="txtConfirmPassword" errormessage="Confirm Password is required." ></asp:requiredfieldvalidator>
                              <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPassword" ErrorMessage="Your passwords do not match up!" Display="Dynamic" />
                        </td>
                    </tr>
                  
                  <td>
                       <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rbtnGender" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal" >
                               
                                <asp:ListItem Text="Male">Male</asp:ListItem>
                                <asp:ListItem Text="Female">Female</asp:ListItem> 
                            </asp:RadioButtonList>
                              <asp:RequiredFieldValidator 
            ID="ReqiredFieldValidator1"
            runat="server"
            ControlToValidate="rbtnGender"
            ErrorMessage="Please Choose your Gender">
        </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    
                    <tr>
                  <td>
                       <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="field"></asp:TextBox>
                             <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" controltovalidate="txtAddress" errormessage="Address is required." ></asp:requiredfieldvalidator>
                           
                        </td>
                    </tr>
                    <tr>
                  <td>
                       <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                        </td> 
                        <td>
                            :
                        </td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="field"></asp:TextBox>
                             <asp:requiredfieldvalidator id="CityIsRequired" runat="server" controltovalidate="txtCity" errormessage="City is required." ></asp:requiredfieldvalidator>
                        </td>
                    </tr>
                   <tr>
                  <td>
                       <asp:Label ID="Label1" runat="server" Text="Country"></asp:Label>
                        </td> 
                        <td>
                            :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddCountry" runat="server" CssClass="field">
                                 <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                             <asp:ListItem>Afghanistan</asp:ListItem>
                                  <asp:ListItem>Australia</asp:ListItem>
                             <asp:ListItem>United Kingdom</asp:ListItem>
                            </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddCountry"
                ErrorMessage="Please Choose Country Name" InitialValue="--Select--"></asp:RequiredFieldValidator>
           
                        </td>
                    </tr>
                 

                    </table>
                  <asp:button CssClass="btn" id="btnSubmit" runat="server" text="Submit" OnClick="btnSubmit_Click"></asp:button>
                
                    
        </div>
    
     </div>
</asp:Content>
