<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="OnlineVideoStreaming.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"   type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#usr").click(function () {
                $("#usrr").animate({
                    height: 'toggle'
                });
            });
        });
   </script>
</head>
<body>
<link href="UserLogincss.css" rel="stylesheet" />
    <form id="form1" runat="server">
    <div>
     <div>
    <h1>Welcome  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>       </h1>
<%--=-=-=-=-=-=-=-=-=-=-=-=-=- User Panel -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==---%>                    
 <div class="CP_Head_Usr" id="Usr_Panel" runat="server" >                    
     <div id="usr">
       <!-- User Icon  -->
<asp:Image ID="Image1" runat="server" class="img_thumb" AlternateText="UserIcon"/>                         
  <h4 class="h4"><asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
   <b id="b2" class="CP_Head_down_icon"></b>
  </h4>                    
</div>
 <div id="usrr" class="CP_Head_Usr_Pan">
   <div class="CP_Head_Pan_topdiv">
     <center>  
       <!-- User Image  -->
      <asp:Image ID="Image2" runat="server" AlternateText="UserImage"/>
     <h5><asp:Label ID="Label3" runat="server" Text="User Email"></asp:Label></h5>
    </center>
  </div>
<div class="CP_Head_Pan_btmdiv">
  <asp:Button ID="Profile1" runat="server" Text="Profile" CssClass="Profile" OnClick="Profile1_Click" />
  <asp:Button ID="Logout" runat="server" Text="Logout" CssClass="Logout" OnClick="Logout_Click1" />
</div>
 </div>               
</div>  
    </div>
    </form>
</body>
</html>
