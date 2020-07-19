<%@ Page Title="Car Lists • Car Rentals" Language="C#" MasterPageFile="User.master" AutoEventWireup="true" CodeFile="Book-Form.aspx.cs" Inherits="Book_Form" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/polaroid.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
        <script src="Scripts/scrolling-nav.js"></script>
        <script src="Scripts/jquery-easing/jquery.easing.min.js"></script>
        <link href="Content/style-2.css" rel="stylesheet" />

    
    <style type="text/css">
        .auto-style3 {
            margin-right: 14;
        }
        .auto-style6 {
            height: 29px;
            width: 1071px;
        }
        .auto-style9 {
            height: 26px;
            width: 1071px;
        }
        .auto-style10 {
            width: 300px;
        }
        .auto-style14 {
            width: 908px;
        }
        .auto-style15 {
            width: 908px;
            height: 29px;
        }
        .auto-style16 {
            width: 908px;
            height: 26px;
        }
        .auto-style17 {
            width: 577px;
        }
        .auto-style18 {
            width: 577px;
            height: 29px;
        }
        .auto-style19 {
            width: 577px;
            height: 26px;
        }
    </style>

    <header class="text-white banner-img">
    <div class="container text-center">
      <h1>Rent a Car</h1>
      <p class="lead">Fill up the form below, to book and reserve your chosen car!</p>  
    </div>
    </header>
        <br />
        <form runat="server">
        <div class="container">
            <h3 class="text-center"><small>Fill up the form below</small></h3>
                    <br />
            <div class="row">
            <div class="center_div">
            <table class="w-100">
                <tr>
                    <td class="auto-style17">Select your Car:</td>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="80%" CssClass="auto-style3" OnSelectedIndexChanged="SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="9pt" Style="color: red; background-color: transparent" Text="Car Not Available" Visible="False" Width="119px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Pick Up Date:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox1" runat="server" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/cal.gif" OnClick="ImageButton1_Click"/>
                    </td>
                    <td class="auto-style10">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="54px" OnSelectionChanged="Calendar1_SelectionChanged" TabIndex="31" Visible="False" Width="20px">
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        </asp:Calendar>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">Drop Off Date:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/cal.gif" OnClick="ImageButton2_Click"/>
                    </td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1"
                        Font-Bold="True" Font-Italic="True" Font-Size="8pt" OnServerValidate="CustomValidator1_ServerValidate1"
                        Width="125px"></asp:CustomValidator><br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="Please Enter Correct Date!" Visible="False"></asp:Label>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="50px" OnSelectionChanged="Calendar2_SelectionChanged" TabIndex="32" Visible="False" Width="15px">
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        </asp:Calendar>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Number of Days:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox3" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">Full Name:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox4" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style19">Phone Number:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox5" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style19">Email Address:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox6" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style17">Address:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox7" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Rent Per Day:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox8" runat="server" Width="80%"></asp:TextBox>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="80%" class="btn bg-primary text-white btn-md" OnClick="Button1_Click"/>
                    </td>
                    <td class="auto-style10">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_Cars]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
        </div>
        </div>
        </form>
        <br />
    <br />
</asp:Content>
