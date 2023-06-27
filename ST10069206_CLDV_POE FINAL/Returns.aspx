<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Returns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Returns</title>
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
                    <h1 id="top_of_page">The Ride You Rent</h1>
                </div>
            <div class="rightSide">
                    <div class="navLinkWrapperA navLinkWrapper">
                        <a href="Home.aspx">Home</a>
                        &nbsp; &nbsp;
                        <a href="Main.aspx">Main</a>
                    </div>
                </div>
                </div>
            <div class="profileContentWrapper">
                <div class="heading">
                    <h1>Returns</h1>
                    <h2>Table of Contents</h2>
                </div>
                <div class="profileContentWrapper textCenter">
                    <a href="#add_Return">Add A Return</a>
                    <br />
                    <a href="#all_Returns">View All Returns</a>
                    <br />
                </div>

            <h3 id="add_Return">Add A Return</h3>
            <h5>Enter the details of the Return</h5>
            
            <table style="width: 100%;">
                <tr>
                    <th>CarNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddCarNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Name</th>
                     <td>&nbsp;<asp:TextBox ID="txtAddInspectorName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Name</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddDriverName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Return Date</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddReturnDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Elapsed Time</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddElapsedTime" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                   <td></td> 
                    <td><asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /> 
                        &nbsp;&nbsp;<asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" /></td>
                </tr>

            </table>
            <br />
            <br />
             <a href="#top_of_page">Go to top</a>
            <br />
            <br />


            <h3 id="all_Returns">View All Returns</h3>
            <h5>Click view to display all the Returns</h5>
            <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
            &nbsp; &nbsp; <asp:Button ID="btnHide" runat="server" Text="Hide" OnClick="btnHide_Click" />
            <br /> <br />
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
            <br />
            <a href="#top_of_page">Go to top</a>
            <br />
        </div>
            </div>
    </form>
</body>
</html>
