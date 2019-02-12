<%@ Page Title="" Language="C#" MasterPageFile="~/Secondary.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ASPSalesAndManagement.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <%--<asp:DataList ID="datalist" runat="server">
                <ItemTemplate>
                    <div>

                    </div>
                    <div class="col-md-6 " style="margin-top:80px">
                        <img src='<%# Eval("ImageUrl") %>' />
                    </div>
                    <div class="col-md-6">
                        <div class="caption" style="padding-top: 75px">
                            <p><b><%# Eval("Description") %></b></p>
                            <hr>
                            <p>Price<span style="color: red">$<%# Eval("Price") %></span></p>

                        </div>
                    </div>
                       
                    
                   
                </ItemTemplate>
            </asp:DataList>--%>
            <br />
            <asp:Button ID="btnMore" class="btn btn-success" runat="server" Text="Add More Item" OnClick="btnMore_Click" />
            <asp:Button ID="btnCheckout" class="btn btn-success" runat="server" Text="Checkout" />
            <%--<button type="button" class="btn btn-success" style="margin-top: 10px">Add More Item</button>
            <button type="button" class="btn btn-success" style="margin-top: 10px">CheckOut</button>--%>


        </div>
    </div>
</asp:Content>
