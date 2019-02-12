<%@ Page Title="" Language="C#" MasterPageFile="~/Secondary.Master" AutoEventWireup="true" CodeBehind="ProductDescription.aspx.cs" Inherits="ASPSalesAndManagement.ProductDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-10">
                    <asp:DataList ID="datalist" runat="server" OnSelectedIndexChanged="datalist_SelectedIndexChanged" Width="980">
                        <ItemTemplate>
                            <div class="col-md-6 " style="background-color: #d9edf7;">
                                <img src='<%# Eval("ImageUrl") %>' style="width: 100%" />
                            </div>
                            <div class="col-md-6">
                                <div class="caption" style="padding-top: 75px">
                                    <p><b><%# Eval("Description") %></b></p>
                                    <hr>
                                    <p>Price<span style="color: red">$<%# Eval("Price") %></span></p>

                                </div>
                                <div>
                                    <label for="sel1">Size:</label>
                                </div>
                                <div class="form-group">

                                    <select id="sel1" style="background-color: #ADB1B8">
                                        <option style="background-color: white">Choose your Size</option>
                                        <option style="background-color: white">9</option>
                                        <option style="background-color: white">10</option>
                                        <option style="background-color: white">11</option>
                                    </select>
                                </div>

                                <div>
                                    <ul>
                                        <br />
                                        <br />
                                        <li>Zipper closure</li>
                                        <li>Jacket: | Textured Solid | Notch Lapel | Side Pockets | Chest Pockets | Vested |</li>
                                        <li>Flat Front Pants With Adjustable Elastic Waist</li>
                                        <li>For Best Fitting Please to Our Size Chart</li>
                                        <li>This Set Comes Complete With Shirt, Vest, And Tie</li>
                                    </ul>
                                </div>


                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-2">
                    <div>
                        <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Add to Cart" OnClick="Button1_Click" Style="margin-top: 110px;" />
                    </div>
                    <br />
                    <div>
                        <div>
                            <label for="sel1">Quantity:</label>
                        </div>
                        <div>
                            <input type="text" id="txtName" runat="server" />
                        </div>
                    </div>
                </div>
            </div>





        </div>

        <%--<button type="button" class="btn btn-success"   style="margin-top: 10px; height: 19px;">Add to cart</button>--%>
    </div>

</asp:Content>
