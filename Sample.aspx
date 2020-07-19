<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample.aspx.cs" Inherits="Sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Rental System</title>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/polaroid.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Sample Car Lists</h3>
            <p>This is a test of Car Lists</p>
            <p>
                
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Car_Type:
                        <asp:Label ID="Car_TypeLabel" runat="server" Text='<%# Eval("Car_Type") %>' />
                        <br />
                        Car_Transmission:
                        <asp:Label ID="Car_TransmissionLabel" runat="server" Text='<%# Eval("Car_Transmission") %>' />
                        <br />
                        Car_Manufacturer:
                        <asp:Label ID="Car_ManufacturerLabel" runat="server" Text='<%# Eval("Car_Manufacturer") %>' />
                        <br />
                        Car_Model:
                        <asp:Label ID="Car_ModelLabel" runat="server" Text='<%# Eval("Car_Model") %>' />
                        <br />
                        Car_Description:
                        <asp:Label ID="Car_DescriptionLabel" runat="server" Text='<%# Eval("Car_Description") %>' />
                        <br />
                        Car_Fuel:
                        <asp:Label ID="Car_FuelLabel" runat="server" Text='<%# Eval("Car_Fuel") %>' />
                        <br />
                        Car_Image:
                        <asp:Label ID="Car_ImageLabel" runat="server" Text='<%# Eval("Car_Image") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Cars]"></asp:SqlDataSource>
            </p>
        </div>
    </form>
</body>
</html>
