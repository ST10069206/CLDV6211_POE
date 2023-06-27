<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="navWrapper">
                <div class="leftSide">
                     <div class=" logo-wrapper">
                        <br /><br />
                        <img src="cars.jpg" alt="" />
                    </div>
                    <h1>The Ride You Rent</h1>
                </div>
            </div>
             <div class="profileContentWrapper">
                <div class="heading">
                    <h2>Login</h2>
                </div>
                <div  
                    class="profileContentWrapper textCenter">
                    <asp:Label ID="lblMessage" runat="server" Text="Enter details to login"></asp:Label>

                    <br /><br />
                    <asp:Label ID="lblInstructorName" runat="server" Text="Instructor Name:"></asp:Label>
                    &nbsp; &nbsp;
                    <asp:TextBox ID="txtInspectorName" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblInspectorNum" runat="server" Text="Inspector Number:"></asp:Label>
                    &nbsp; 
                    <asp:TextBox ID="txtInspectorNumber" runat="server"></asp:TextBox>
                    <br /><br />
                    <asp:Button ID="btnExit" runat="server" Text="Exit" Font-Size="Medium" OnClick="btnExit_Click" />
                    &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Font-Size="Medium" OnClick="btnLogin_Click" />
                 </div>
                 </div>
        </div>
    </form>
</body>
</html>
