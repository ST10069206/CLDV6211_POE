<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Rentals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Rentals</title>
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
                    <h2>Rentals</h2>
                    <h3>Table of Contents</h3>
                </div>
                <div class="profileContentWrapper textCenter">
                    <a href="#add_Rental">Add A Rental</a>
                    <br />
                    <a href="#all_Rentals">View All Rentals</a>
                    <br /> 
                    </div>


            <h3 id="add_Rental">Add A Rental</h3>
            <h5>Enter the details of the rental</h5>
            
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
                    <th>Rental Fee</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddRentalFee" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Start Date</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddStartDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>End Date</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddEndDate" runat="server"></asp:TextBox></td>
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


            <h3 id="all_Rentals">View All Rentals</h3>
            <h5>Click view to display all the rentals</h5>
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
