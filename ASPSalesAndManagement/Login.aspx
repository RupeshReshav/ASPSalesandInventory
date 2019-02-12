<%@ Page Title="" Language="C#" MasterPageFile="~/Secondary.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPSalesAndManagement.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        src = "https://code.jquery.com/jquery-3.3.1.min.js"
    </script>
    <div class="container">
        <div class="col-md-6 diagram">
            <img src="Images/logo.jpg" />


        </div>
        <div class="col-md-6 login">

            <div class="form-group">
                <label><b>SIMS</b></label>
            </div>
            <div class="form-group">
                <p id="demo1" style="color: red"></p>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                <asp:textbox id="txtUserName" runat="server" cssclass="form-control"></asp:textbox>
                <%--<input type="text" id="txtUserName" class="form-control" />--%>

            </div>
            <div class="form-group">
                <p id="demo2" style="color: red"></p>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:textbox id="txtPassword" runat="server" textmode="password" cssclass="form-control"></asp:textbox>
                <%--<input type="password" id="txtPassword" class="form-control" />--%>
            </div>
            <div class="col-md-12 form-group" style="display: inline">
                <div class="checkbox col-md-6">
                    <label>
                        <input type="checkbox">
                        Remember me</label>
                </div>
                <div class="col-md-6" style="padding-top: 8px">

                    <a href="C:\Users\shahr\Desktop\Project\Signup.html">Signup</a>
                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="btn btn-success"/>
            <%--<input type="button" id="btnLogin" class="btn btn-success" value="Login" />--%>

        </div>
       <%-- <table id="tblsupplier" class="table table-bordered">
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>--%>
    </div>

   <%-- <script>
        $(document).ready(function () {
            //////////////////////////////////////////////////////
            $('#btnLogin').click(function () {
                var uerName = $('#txtUserName').val();
                var password = $('#txtPassword').val();
                $.ajax({
                    type: 'GET',
                    url: "http://localhost:53146/api/user",
                    //contentType: 'application/json;charset=utf-8',
                    data: /*JSON.stringify(*/{ username: uerName, password: password },
                    //method: 'post',
                    dataType: 'jsonp',
                    success: function (data) {
                        //var suppliertable = $("#tblsupplier tbody")
                        //suppliertable.empty();
                        var data12;
                        url: 'Login.aspx/GetUserName',
                        $(data).each(function (index, supp) {
                            data12 = supp.UserroleId;
                                //data: '{userrole:Supp.UserroleId}',\
                              
                            //suppliertable.append('<tr><td>' + supp.UserName + '</td><td>' + supp.Email + '</td><td>' + supp.PhoneNumber + '</td><td>' + supp.Address + '</td></tr>');
                            });
                        $.post(url, data12, function (data) {
                        });


                    },
                    error: function (err) {
                        alert(err);
                    }
                });
            });



            ///////////////////////////////////////////////////////



            ///////////////////////////////////////////////////////
        });
    </script>--%>
</asp:Content>
