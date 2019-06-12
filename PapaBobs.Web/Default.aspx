<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PapaBobs.Web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="page-header">
            <h1>Papa Bob's Pizza</h1>
            <p class="lead">Pizza to Code By</p>
        </div>
        <hr />
        <div class="form-group">
            <label>Size:</label>
        <asp:DropDownList ID="sizeDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="recalculateTotalCost">
            <asp:ListItem Text="Choose One..." Value="" Selected="True" />
            <asp:ListItem Text="Small (12 inch - $12)" Value="Small" />
            <asp:ListItem Text="Medium (14 inch - $14)" Value="Medium" />
            <asp:ListItem Text="Large (16 inch - $16)" Value="Large" />
        </asp:DropDownList>

        </div>
        <div class="form-group">
            <label>Crust</label>
        <asp:DropDownList ID="crustDropDownList" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="recalculateTotalCost">
            <asp:ListItem Text="Choose One..." Value="" Selected="True" /> 
            <asp:ListItem Text="Regular" Value="Regular" />
            <asp:ListItem Text="Thin" Value="Thin" />
            <asp:ListItem Text="Thick" Value="Thick" />

        </asp:DropDownList>
        </div>
        <div class="checkbox"><label><asp:CheckBox ID="sausageCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="recalculateTotalCost"/> Sausage</label></div>
        <div class="checkbox"><label><asp:CheckBox ID="pepperoniCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="recalculateTotalCost"/> Pepperoni</label></div>
        <div class="checkbox"><label><asp:CheckBox ID="onionsCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="recalculateTotalCost"/> Onions</label></div>
        <div class="checkbox"><label><asp:CheckBox ID="greenPepperCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="recalculateTotalCost"/>Green Peppers</label></div>

        <div class="form-group">
            <label>Name</label>
            <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Address</label>
            <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>ZIP</label>
            <asp:TextBox ID="zipTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Phone</label>
            <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>





       
        
        
        

        <h3>Payment</h3>
        <div class="radio"><label><asp:RadioButton ID="cashRadioButton" runat="server" GroupName="pmtType" Checked="true"/> Cash</label></div>
        <div class="radio"><label><asp:RadioButton ID="creditRadioButton" runat="server" GroupName="pmtType" /> CreditCard</label></div>

        <h3>Deliver To:</h3>


        <asp:Button ID="orderButton" runat="server" Text="Button" CssClass="btn btn-lg btn-primary" OnClick="orderButton_click" />
        <p>&nbsp</p>
        <asp:Label ID="validationLabel" runat="server" Text="Label" CssClass="bg-danger" Visible="false"> </asp:Label>
        <h3>Total Cost:</h3><asp:Label ID="totalLabel" runat="server" Text=""></asp:Label>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    </div>
    </form>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
