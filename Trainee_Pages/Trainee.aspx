<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trainee.aspx.cs" Inherits="Trainee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div style="text-align:center; padding-top:30px; margin-bottom:-30px;">
         <img src="/img/sec.png" alt="Logo"/>
    </div>
    
  <form runat="server">
    <div class="wrapper">
        <div class="title">
          Attendance record  
        </div>
        <div class="form">
           <div class="inputfield">
              <label style="float:right">Name</label>
              <input type="text" class="input" value="Faris Hariri" readonly="true" id="nameBox" method="get" runat="server"/>
           </div>  
            <div class="inputfield">
              <label>ID</label>
              <input type="number" class="input" value="1112331390" readonly="true" id="idBox" method="get" runat="server"/>
           </div>  
           <div class="inputfield">
              <label>Advisor</label>
              <input type="text" class="input" value="Abdulrahman Alghamdi" readonly="true" id="adminBox" method="get" runat="server"/>
           </div>  
          <div class="inputfield">
            <asp:button type="submit" runat="server" OnClick="SignInButton" Text="Sign-in" class="btn signIn" style="background-color:#6CD057;" />
          </div>
         <div class="inputfield">
            <asp:button type="submit" runat="server" OnClick="SignOutButton" text="Sign-out" class="btn" style="background-color:#DE3A3A;"/>
        </div>
        </div>
    </div>
  </form> 

    
</body>

</html>
