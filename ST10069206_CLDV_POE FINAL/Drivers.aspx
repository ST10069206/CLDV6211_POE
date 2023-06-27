<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Drivers.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Drivers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Drivers</title>
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
                    <h2>Drivers</h2>
                    <h3>Table of Contents</h3>
                </div>
                <div class="profileContentWrapper textCenter">
                    <a href="#add_Driver">Add a Driver</a>
                    <br />
                    <a href="#update_Driver">Update Drivers</a>
                    <br />
                    <a href="#delete_Driver">Delete a Driver</a>
                    <br />
                    <a href="#all_Drivers">View All Drivers</a>
                    <br />
                </div>


            <h3 id="add_Driver">Add a Driver</h3>
            <h5>Enter the details of the Driver</h5>
            
            <table style="width: 100%;">
                <tr>
                    <th>DriverName</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddDriverName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Address</th>
                     <td>&nbsp;<asp:TextBox ID="txtAddDriverAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Email</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddDriverEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Mobile</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddDriverMobile" runat="server"></asp:TextBox></td>
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


            <h3 id="update_Driver">Update Drivers</h3>
            <h5>Enter the Driver details for the Driver you would like to update</h5>
            <br />
             <table style="width: 100%;">
                <tr>
                    <th>DriverName</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateDriverName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>DriverAddress</th>
                     <td>&nbsp;<asp:TextBox ID="txtUpdateDriverAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Email</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateDriverEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Driver Mobile</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateDriverMobile" runat="server"></asp:TextBox></td>
                </tr>
               <tr>
                   <td></td> 
                   <td><asp:Button ID="btnClear2" runat="server" Text="Clear" OnClick="btnClear2_Click" /> 
                   &nbsp; &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /> </td>
                </tr>
            </table>
            <a href="#top_of_page">Go to top</a>
            <br />


            <h3 id="delete_Driver">Delete a Driver</h3>
            <h5>Enter in the Driver Name of the Driver you would like to delete</h5>
            <br />
            <table>
                <tr>
                    <th>DriverName</th>
                    <td>&nbsp;<asp:TextBox ID="txtDeleteDriverName" runat="server"></asp:TextBox></td>
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
            <h3 id="all_Drivers">View All Drivers</h3>
            <h5>Click view to display all the Drivers</h5>
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
