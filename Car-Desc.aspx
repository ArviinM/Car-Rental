
<%@ Page Title="Car View • Car Rentals" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="Car-Desc.aspx.cs" Inherits="Car_Desc" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <script src="Scripts/bootstrap.bundle.min.js"></script>
        <script src="Scripts/scrolling-nav.js"></script>
        <script src="Scripts/jquery-easing/jquery.easing.min.js"></script>
        <link href="Content/style-2.css" rel="stylesheet" />

            <header class="text-white banner-img">
                <div class="container text-center">
                <h1>Car Description</h1>
                </div>
            </header>


        <asp:Repeater ID="d1" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                    <div class="container text-center">
                        <img class="img-fluid" src="../<%#Eval("Car_Image") %>" />
                        <h3><%#Eval("Car_Model") %></h3>
                        <p class="lead">Manufacturer:<%#Eval("Car_Manufacturer") %><br>Seats: <%#Eval("Car_Seats") %><br>Fuel: <%#Eval("Car_Fuel") %><br>Rate Per Day: ₱<%#Eval("Car_RateDay") %></p>
                        <p><%#Eval("Car_Description") %></p>
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>

                </FooterTemplate>

            </asp:Repeater>
</asp:Content>
