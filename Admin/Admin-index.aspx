<%@ Page Title="Add New Car • Admin" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Admin-index.aspx.cs" Inherits="_Default" %>
<asp:Content runat="server" ContentPlaceHolderID="MainPlaceholder">

    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="style2.css">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
         <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- jQuery Custom Scroller CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 131px;
        }
        .auto-style3 {
            height: 26px;
            width: 131px;
        }
        .auto-style4 {
            width: 215px;
            height: 55px;
        }
    .auto-style9 {
        height: 27px;
        width: 131px;
    }
    .auto-style10 {
        height: 27px;
    }
    </style>

    <div class="container">

        <h1 class="text-center"><small>Add New Car • Car Rental</small></h1>
        <h3><small>Add New Car</small></h3>

        <table class="w-100">
        <tr>
            <td class="auto-style2">Type of Car</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="215px">
                    <asp:ListItem>(select type)</asp:ListItem>
                    <asp:ListItem>Hatchback</asp:ListItem>
                    <asp:ListItem>MPV</asp:ListItem>
                    <asp:ListItem>Sedan</asp:ListItem>
                    <asp:ListItem>SUV</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Transimission</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="215px">
                    <asp:ListItem>(select transmission)</asp:ListItem>
                    <asp:ListItem>Automatic</asp:ListItem>
                    <asp:ListItem>Manual</asp:ListItem>
                    <asp:ListItem>Semi-Automatic</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Manufacturer</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Width="215px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Car Model</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Description</td>
            <td class="auto-style1">
                <asp:Textbox id="TextArea1" runat="server" TextMode="MultiLine" class="auto-style4" cols="20" name="S1"></asp:Textbox></td>
        </tr>
        <tr>
            <td class="auto-style3">Fuel</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="215px">
                    <asp:ListItem>(select fuel)</asp:ListItem>
                    <asp:ListItem>Diesel</asp:ListItem>
                    <asp:ListItem>Petrol</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Car Seats</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="215px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Rate per Day</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Availability</td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Text="Available"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Cars]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Submit" Width="215px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
      </table>
    </div>
   
</asp:Content>

