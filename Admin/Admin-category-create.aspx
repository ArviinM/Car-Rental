<%@ Page Title="Add New Manufacturer • Admin" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="Admin-category-create.aspx.cs" Inherits="Admin_Default" %>
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
        .auto-style10 {
            height: 26px;
            width: 295px;
        }
        .auto-style11 {
            width: 295px;
        }
    .auto-style12 {
        width: 140px;
        height: 26px;
    }
    .auto-style13 {
        width: 140px;
    }
    .auto-style14 {
        margin-left: 21;
    }
    </style>
        <div class="container">

            <h1 class="text-center"><small>Manufacturer • Car Rental</small></h1>
        <h3><small>Add New Manufacturer </small></h3>

        <table class="w-100">
            <tr>
                <td class="auto-style12">New Manufacturer</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click" Text="Save" Width="75px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
