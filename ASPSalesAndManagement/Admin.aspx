<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ASPSalesAndManagement.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script>
        src = "https://code.jquery.com/jquery-3.3.1.min.js"
</script>
    <div style="padding-top:80px;">
     Id: <input type="text" id="textId" style="width:100px" />
    <input type="button" id="getUser" style="width:100px" class="btn btn-primary" value="Get User" />
    </div>
    
    <table class="table table-bordered">
        

        <tr>
            <td>UserId</td>
            <td><input type="text" id="txtUserID" class="form-control" /></td>
        </tr>
        <tr>
            <td>UserName</td>
            <td><input type="text" id="txtUserName" class="form-control" /></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="text" id="txtPassword" class="form-control" /></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" id="txtEmail" class="form-control" /></td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td><input type="text" id="txtPhoneNumber" class="form-control" /></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" id="txtAddress" class="form-control" /></td>
        </tr>
        <tr>
            <td>User Role</td>
            <td><input type="text" id="txtUserrole" class="form-control" /></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" id="txtGender" class="form-control" /></td>
        </tr>

    </table>



    <script>
        
        $(document).ready(function () {
            $('#getUser').click(function () {
                debugger;
                var id = $('#textId').val();
                //$.ajax({
                //    url: 'UserService.asmx/GetUserById',
                //    //contentType: 'application/json;charset=utf-8',
                //    data: /*JSON.stringify(*/{ userId: id },
                //    method: 'post',
                //    dataType: 'json',
                //    success: function (data) {
                //        var xmldata = $(data);
                //        $('#txtUserID').val(data.UserId);
                //        $('#txtUserName').val(data.UserName);
                //        $('#txtPassword').val(data.Password);
                //        $('#txtEmail').val(data.Email);
                //        $('#txtPhoneNumber').val(data.PhoneNumber);
                //        $('#txtAddress').val(data.Address);
                //        $('#txtUserrole').val(data.UserRole);
                //        $('#txtGender').val(data.Gender);


                //    },
                //    error: function (err) {
                //        alert(err);
                //    }
                //});
                 $.ajax({
                    type: 'GET',
                    url: "http://localhost:53146/api/user",
                    //contentType: 'application/json;charset=utf-8',
                    data: /*JSON.stringify(*/{ id: id },
                    //method: 'post',
                    dataType: 'json',
                    success: function (data) {
                        var xmldata = $(data);
                        $('#txtUserID').val(data.UserId);
                        $('#txtUserName').val(data.UserName);
                        $('#txtPassword').val(data.Password);
                        $('#txtEmail').val(data.Email);
                        $('#txtPhoneNumber').val(data.PhoneNumber);
                        $('#txtAddress').val(data.Address);
                        $('#txtUserrole').val(data.UserroleId);
                        $('#txtGender').val(data.Gender);


                    },
                    error: function (err) {
                        alert(err);
                    }
                });
            });
        });
    </script>

</asp:Content>
