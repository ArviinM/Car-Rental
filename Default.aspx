<%@ Page Title="Car Lists • Car Rentals" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/polaroid.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
        <script src="Scripts/scrolling-nav.js"></script>
        <script src="Scripts/jquery-easing/jquery.easing.min.js"></script>
        <link href="Content/style-2.css" rel="stylesheet" />

    <header class="text-white banner-img">
    <div class="container text-center">
      <h1>Car Lists</h1>
      <p class="lead">Scroll Down to check out our latest Cars!</p>
    </div>
    </header>

            <h1 class="text-center"><small>Car Lists</small></h1>
            <section>
                <div class="container">
                    <div class="row">
                        <div class="polaroid-images">
            <asp:Repeater ID="d1" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                    
                        
                             <a href="Car-Desc.aspx?id=<%#Eval("id") %>"><img src="../<%#Eval("Car_Image") %>" />
                                <h3><%#Eval("Car_Model") %></h3>
                                <p>Manufacturer:<%#Eval("Car_Manufacturer") %><br>Seats: <%#Eval("Car_Seats") %><br>Fuel: <%#Eval("Car_Fuel") %><br>Availability: <%#Eval("Car_Availability") %><br>Rate Per Day: ₱<%#Eval("Car_RateDay") %></p>
                            </a>
                        

                </ItemTemplate>
                <FooterTemplate>

                </FooterTemplate>

            </asp:Repeater>
                         </div>
                    </div>
                </div>
            </section>
</asp:Content>
