<%@ Page Title="My Bookings • Car Rentals" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="My-Bookings.aspx.cs" Inherits="My_Bookings" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/scrolling-nav.js"></script>
    <script src="Scripts/jquery-easing/jquery.easing.min.js"></script>
    <link href="Content/style-2.css" rel="stylesheet" />

    <header class="text-white banner-img-3">
        <div class="container text-center">
            <h1>My Bookings</h1>
        </div>
    </header>
        <form runat="server">
            <div class="container text-center">
                <div class="center_div">
    <asp:GridView ID="GridView1"  runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rented Car">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Car_Model") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pick-up Date">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("User_PickUp") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Drop-off Date"><ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("User_DropOff") %>'></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number of Days">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("User_NumDays") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rent per Day">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("User_RentPerDay") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
                    </div>
                </div>
            </form>

</asp:Content>

