<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ASPSalesAndManagement.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fliud">
        <div class="row" style="margin-top: 55px;">

            <asp:Button ID="Button2" runat="server" Text="Create Product" Class="btn btn-success" OnClick="Button2_Click" />
        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowEditing="GridView1_RowEditing" DataKeyNames="ProductId" >
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnEdit" ImageUrl="~/Images/edit.ico" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" runat="server" />
                                <%-- <asp:Button ID="Button1" runat="server" Text="Edit" CommandName="Edit" />--%>
                                <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/delete.png" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" runat="server" />
                            </ItemTemplate>
                            <%--<EditItemTemplate>
                                <asp:ImageButton ID="imgUpdate" ImageUrl="~/Images/save.jpg" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" runat="server" />
                                <asp:ImageButton ID="imgCancel" ImageUrl="~/Images/cancel.png" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" runat="server" />
                            </EditItemTemplate>--%>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </div>
        </div>
        <asp:Label ID="lblProduct" runat="server" Text="Label"></asp:Label>

    </div>

</asp:Content>
