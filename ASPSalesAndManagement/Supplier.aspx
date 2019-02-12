<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="ASPSalesAndManagement.Supplier1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script>
        src = "https://code.jquery.com/jquery-3.3.1.min.js"
</script>
    <div class="container">
  <div class="row">
    <div class="col-md-12 diagram">
       
        <%--<asp:GridView ID="GridView1" runat="server" BackColor="White"  EnableViewState="False"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="UserId" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
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
               <asp:TemplateField HeaderText="Full Name" >

                    <ItemTemplate>
                        <asp:Label ID="lblUserId" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                    </ItemTemplate>
                   
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Full Name" >

                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtuserName" runat="server" Text='<%# Eval("UserName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email Address" >
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" >
                    <ItemTemplate>
                        <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" >
                    <ItemTemplate>
                        <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="imgbtnEdit" ImageUrl="~/Images/edit.ico" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" runat="server"  />
                       
                        <asp:ImageButton ID="ImageButton2" ImageUrl="~/Images/delete.png" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" runat="server"  />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ID="imgUpdate" ImageUrl="~/Images/save.jpg" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" runat="server"  />
                        <asp:ImageButton ID="imgCancel" ImageUrl="~/Images/cancel.png" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" runat="server"  />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>--%>

        <br />
        <input type="button" id="btninfo" class="btn btn-success" value="Supplier List"/>
        <table id="tblsupplier" class="table table-bordered">
            <thead >
                <tr>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    
   
    
  </div>
</div>

  <script>
        
        $(document).ready(function () {
            $('#btninfo').click(function () {
                debugger;
                
                //$.ajax({
                //    url: 'UserService.asmx/GetAllUserbyRole',
                //    //contentType: 'application/json;charset=utf-8',
                //   // data: /*JSON.stringify(*/{ userId: id },
                //    method: 'post',
                //    dataType: 'json',
                //    success: function (data) {
                //        var suppliertable = $("#tblsupplier tbody")
                //        suppliertable.empty();
                //        $(data).each(function (index, supp) {
                //            suppliertable.append('<tr><td>' + supp.UserName + '</td><td>' + supp.Email + '</td><td>' + supp.PhoneNumber + '</td><td>' + supp.Address+'</td></tr>');
                //        });
                        


                //    },
                //    error: function (err) {
                //        alert(err);
                //    }
                //});
                 $.ajax({
                    type: 'GET',
                    url: "http://localhost:53146/api/user",
                    //contentType: 'application/json;charset=utf-8',
                   // data: /*JSON.stringify(*/{ userId: id },
                    //method: 'post',
                    dataType: 'json',
                    success: function (data) {
                        var suppliertable = $("#tblsupplier tbody")
                        suppliertable.empty();
                        $(data).each(function (index, supp) {
                            suppliertable.append('<tr><td>' + supp.UserName + '</td><td>' + supp.Email + '</td><td>' + supp.PhoneNumber + '</td><td>' + supp.Address+'</td></tr>');
                        });
                        


                    },
                    error: function (err) {
                        alert(err);
                    }
                });
            });
        });
    </script>  
    
    
</asp:Content>
