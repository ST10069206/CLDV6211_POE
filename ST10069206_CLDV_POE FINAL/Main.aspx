<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ST10069206_CLDV_POE_FINAL.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css"/>
    <title>Main </title>
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
            <div class="rightSide">
                    <div class="navLinkWrapperA navLinkWrapper">
                        <a href="Home.aspx">Home</a>
                    </div>
                </div>
                </div>
            <div class="profileContentWrapper">
                <div class="heading">
                    <h2>Main</h2>
                    <h3>This is the main page. Select the table you would like to edit/view</h3>
                </div>
                 <div class="profileContentWrapper textCenter">
                    <a href="Cars.aspx">Cars</a>
                     <br /><br />
                    <a href="Inspectors.aspx">Inspectors</a>
                     <br /><br />
                    <a href="Drivers.aspx">Drivers</a>
                     <br /><br />
                    <a href="Rentals.aspx">Rentals</a>
                     <br /><br />
                    <a href="Returns.aspx">Returns</a>
                 </div>
            </div>
            </div>
    </form>
</body>
</html>
