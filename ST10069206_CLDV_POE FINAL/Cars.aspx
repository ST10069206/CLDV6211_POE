<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Cars" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Cars</title>
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
                    <h2 >Cars</h2>  
                    <h3>Table of Contents</h3>
                </div>
                <div class="profileContentWrapper textCenter">
                    <a href="#add_car">Add A Car</a>
                    <br />
                    <a href="#update_car">Update A Car</a>
                    <br />
                    <a href="#delete_car">Delete A Car</a>
                    <br />
                    <a href="#all_car">View All Cars</a>
                    <br />
                </div>


            <h3 id="add_car">Add A Car</h3>
            <h5>Enter the details of the car</h5>
            
            <table style="width: 100%;">
                <tr>
                    <th>CarNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddCarNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Car Make</th>
                     <td>&nbsp;<asp:TextBox ID="txtAddMake" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Model</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddModel" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Body Type</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddBodyType" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Kilmeteres Travelled</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddKmTravel" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Service Kilometers</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddKmService" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Available</th>
                    <td>&nbsp;<asp:TextBox ID="txtAddAvailable" runat="server"></asp:TextBox></td>
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


            <h3 id="update_car">Update A Car</h3>
            <h5>Enter the Car details for the car you would like to update</h5>
            <br />
             <table style="width: 100%;">
                <tr>
                    <th>CarNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateCarNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Car Make</th>
                     <td>&nbsp;<asp:TextBox ID="txtUpdateMake" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Model</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateModel" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Body Type</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateBodyType" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Kilmeteres Travelled</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateKmTravel" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Service Kilometers</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateServiceKm" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Available</th>
                    <td>&nbsp;<asp:TextBox ID="txtUpdateAvailable" runat="server"></asp:TextBox></td>
                </tr>
               <tr>
                   <td></td> 
                   <td><asp:Button ID="btnClear2" runat="server" Text="Clear" OnClick="btnClear2_Click" /> 
                   &nbsp; &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /> </td>
                </tr>
            </table>
            <a href="#top_of_page">Go to top</a>
            <br />


            <h3 id="delete_car">Delete A Car</h3>
            <h5>Enter in the Car Number of the car you would like to delete</h5>
            <br />
            <table>
                <tr>
                    <th>CarNo</th>
                    <td>&nbsp;<asp:TextBox ID="txtDeleteCarNo" runat="server"></asp:TextBox></td>
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
            <h3 id="all_car">View All Cars</h3>
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
