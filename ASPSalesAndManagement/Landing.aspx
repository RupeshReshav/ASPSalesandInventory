<%@ Page Title="" Language="C#" MasterPageFile="~/Secondary.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="ASPSalesAndManagement.Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
            
            <asp:DataList ID="datalist" runat="server" RepeatColumns="4" Width="1190">
                <ItemTemplate>
                    
                    <div class="row col-md-12" style="background-color:#d9edf7;">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <a href='<%# String.Format("ProductDescription.aspx?id={0}",Eval("ProductId")) %>''>
                               
                                    <div>
                                       <img src='<%# Eval("ImageUrl") %>' style="width:100%"/>
                                    </div>
                                    <div class="caption">
                                        <p><%# Eval("Description") %></p>
                                        <p>$<%# Eval("Price") %></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </div>
</asp:Content>
