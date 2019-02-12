<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ASPSalesAndManagement.EditProduct"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
  <div class="row">
    <div class="col-md-6 diagram">
        <img src="Images/logo.jpg" />
    </div>
    <div class="col-md-6 login" >
 
	    <div class="form-group">
			<label><b>Edit Product</b></label>
		</div>
        <div class="form-group">
			<label for="email">Product Name</label>
             <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Name is required" ForeColor="Red" ControlToValidate="txtName" ></asp:RequiredFieldValidator>
              
		</div>
		<div class="form-group">
			<label for="Description">Description</label>
            <textarea id="txtDescription" TextMode="multiline" cols="20" rows="2" Class="form-control" runat="server"></textarea>
        </div>
		<div class="form-group">
			<label for="Quantity">Quantity</label>
            <asp:TextBox ID="txtQuantity" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter quantity" ForeColor="Red" ControlToValidate="txtQuantity" ></asp:RequiredFieldValidator>
		</div>
		<div class="form-group">
			<label for="price">Unit Price</label>
            <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter quantity" ForeColor="Red" ControlToValidate="txtUnitPrice" ></asp:RequiredFieldValidator>
		</div>
        <div class="form-group">
			<label for="supplier">Supplier Name</label>
  
            <asp:DropDownList ID="ddlSupplier" runat="server" CssClass="form-control">
                
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Userrole is required" InitialValue="1" ForeColor="red" ControlToValidate="ddlSupplier"> </asp:RequiredFieldValidator>
		</div>
		<div class="form-group">
			<label for="Category">Category</label>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Userrole is required" InitialValue="0" ForeColor="red" ControlToValidate="ddlCategory"> </asp:RequiredFieldValidator>
		</div>
		<br />
        <asp:Button ID="Save" runat="server" CssClass="btn btn-success" Text="Button" OnClick="Save_Click" />
        <asp:Label ID="lblEdit" runat="server" Text=""></asp:Label>
        <%--<asp:Button ID="Create" CssClass="btn btn-success" runat="server" Text="Button" OnClick="Create_Click" />--%>
          <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />--%>
    </div>
    
  </div>
</div>
</asp:Content>
