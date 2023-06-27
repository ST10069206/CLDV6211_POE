<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inspectors.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Inspectors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Inspectors</title>
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
                    <h2>Inspectors</h2>
                    <h3>Table of Contents</h3>
                    </div>
                <div class="profileContentWrapper textCenter">
                    <a href="#add_Inspector">Add an Inspector</a>
                    <br />
                    <a href="#update_Inspector">Update Inspector</a>
                    <br />
                    <a href="#delete_Inspector">Delete an Inspector</a>
                    <br />
                    <a href="#all_Inspectors">View All Inspectors</a>
                    <br />
                </div>
            
            
            <h3 id="add_Inspector">Add an Inspector</h3>
            <h5>Enter the details of the Inspector</h5>
            
            <table style="width: 100%;">
                <tr>
                    <th>InspectorNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddInspectorNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Name</th>
                     <td>&nbsp;<asp:TextBox ID="txtAddInspectorName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Email</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddInspectorEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Mobile</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddInspectorMobile" runat="server"></asp:TextBox></td>
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


            <h3 id="update_Inspector">Update Inspector</h3>
            <h5>Enter the Inspector details for the Inspector you would like to update</h5>
            <br />
             <table style="width: 100%;">
                <tr>
                    <th>InspectorNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateInspectorNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Name</th>
                     <td>&nbsp;<asp:TextBox ID="txtUpdateInspectorName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Inspector Email</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateInspectorEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>InspectorMobile</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateInspectorMobile" runat="server"></asp:TextBox></td>
                </tr>
               <tr>
                   <td></td> 
                   <td><asp:Button ID="btnClear2" runat="server" Text="Clear" OnClick="btnClear2_Click" /> 
                   &nbsp; &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /> </td>
                </tr>
            </table>
            <a href="#top_of_page">Go to top</a>
            <br />


            <h3 id="delete_Inspector">Delete an Inspector</h3>
            <h5>Enter in the Inspector Number of the Inspector you would like to delete</h5>
            <br />
            <table>
                <tr>
                    <th>InspectorNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtDeleteInspectorNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                   <td></td> 
                   <td><asp:Button ID="btnClear3" runat="server" Text="Clear" OnClick="btnClear3_Click" /> 
                   &nbsp; &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" /> </td>
                </tr>
            </table>
            <br />
            <a href="#top_of_page">Go to top</a>
            <br />
           

            <br />
            <h3 id="all_Inspectors">View All Inspectors</h3>
            <h5>Click view to display all the cars</h5>
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
