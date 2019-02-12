<%@ Page Title="" Language="C#" MasterPageFile="~/Secondary.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ASPSalesAndManagement.Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        src = "https://code.jquery.com/jquery-3.3.1.min.js"
    </script>
    <div class="container">
        <div class="row">
            <div class="col-md-6 diagram">
                <img src="Images/logo.jpg" />
            </div>
            <div class="col-md-6 login">

                <div class="form-group">
                    <label><b>Create a New Account</b></label>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <%--<input type="text" id="txtEmaial" class="form-control" />--%>
                    <%--<asp:TextBox ID="txtEmail" Name="Email" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>--%>
                    <input type="text" id="txtEmail" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="email">Username:</label>
                    <%--<asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>--%>
                    <input type="text" id="txtUsername" class="form-control" />
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1UserName" runat="server" ErrorMessage="UserName is required" ForeColor="red" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>--%>
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <%--<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>--%>
                    <input type="password" id="txtPassword" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="pwd">Confirm Password:</label>
                    <%--<asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" ClientIDMode="Static"></asp:TextBox>--%>
                    <input type="password" id="txtConfirmPassword" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="pwd">User Role</label>
                    <select class="form-control" id="dropdown">
                        <option value="1">Select Your Role</option>
                        <option value="2">Supplier</option>
                        <option value="3">User</option>

                    </select>

                </div>
                <div class="form-group">
                    <label for="pwd">Phone Number</label>
                    <input type="text" id="txtPhoneNumber" class="form-control" />
                    <%--<asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>--%>

                    <div class="form-group">
                        <label for="pwd">Address:</label>
                        <input type="text" id="txtAddress" class="form-control" />
                        <%--<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ClientIDMode="Static"></asp:TextBox>--%>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" id="rbdMale" name="optradio" checked>Male</label>
                        <label>
                            <input type="radio" id="rbdFemale" name="optradio">Female</label>
                    </div>
                    <input type="button" id="btnTest" value="SignUp" class="btn btn-success" />

                    <%--<asp:Button ID="btnTest" runat="server" Text="SignUp" CssClass="btn btn-success" ClientIDMode="Static" OnClick="Button1_Click" />--%>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

                </div>

            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            //////////////////////////////////
            //var pass_err = true;
            //var phone_err = true;
            //var email_err = true;
            //var user_name_err = true;
            //var add_err = true;

            //function btnSubmitenable() {

            //    $('[id$=btnTest]').removeAttr('disabled');;

            //}

            //function btnSubmitdisable() {
            //    $('[id$=btnTest]').attr('disabled', 'true');
            //}

            //$('input[type="text"], input[type="password"]').each(function () {
            //    //focusfunction(this);
            //    $(this).focus(function () {
            //        $(this).css("background-color", "#d9edf7");
            //    });
            //});

            ////////////////////////////////////
            //$('#txtConfirmPassword').blur(function () {
            //    passwordCheck();
            //});
            //function passwordCheck() {
            //    var password = $('#txtPassword').val();
            //    var confirm = $('#txtConfirmPassword').val();
            //    var text = $('#txtConfirmPassword').val();

            //    if (password == confirm && text != "") {
            //        $('#txtConfirmPassword').css("background-color", "white");
            //        $('#txtPassword').css("background-color", "white");
            //    } else {
            //        $('#txtConfirmPassword').css("background-color", "pink").val('').attr("placeholder", "Please confirm Password");
            //        $('#txtPassword').css("background-color", "pink").val('');
            //        // btnSubmitdisable();
            //        pass_err = false;
            //    }
            //}

            ////////////////////////////////////////
            //$("#txtEmail").blur(function () {
            //    emailcheck(this);
            //});
            //function emailcheck(email) {
            //    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            //    if (regex.test($(email).val())) {
            //        $(email).css("background-color", "white");

            //    } else {
            //        $(email).css("background-color", "pink").val('').attr("placeholder", "Email is not valid");
            //        // btnSubmitdisable();
            //        email_err = false;


            //    }
            //}


            ////////////////////////////////////////
            //$('#txtPhoneNumber').blur(function () {
            //    phonevalidation(this);
            //});
            //function phonevalidation(phone) {
            //    var chech = $(phone).val();
            //    var phoneNumberPattern = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
            //    if (phoneNumberPattern.test(chech)) {
            //        $(phone).css("background-color", "white");
            //    } else {
            //        $(phone).css("background-color", "pink").val('').attr("placeholder", "Phone bumber is not valid");
            //        phone_err = false;
            //    }
            //}

            ////////////////////////////////////
            //$("#txtUsername").blur(function () {
            //    usernamevalidation();
            //});
            //function usernamevalidation() {
            //    $("#txtUsername").blur(function () {
            //        if ($("#txtUsername").val() != "") {
            //            $("#txtUsername").css("background-color", "white");
            //            $("span").remove();
            //        }
            //        else {
            //            $("#txtUsername").css("background-color", "pink").val('').after('<span style="position: absolute; color: red" >Field is required</span>');
            //            //btnSubmitdisable();
            //            user_name_err = false;
            //        }

            //    });
            //}
            //$("#txtUsername,#txtAddress").each(function () {
            //    $(this).blur(function () {
            //        if ($(this).val() != "") {
            //            $(this).css("background-color", "white");
            //            $("span").remove();
            //        }
            //        else {
            //            $(this).css("background-color", "pink").val('').after('<span style="position: absolute; color: red" >Field is required</span>');
            //            btnSubmitdisable();
            //        }

            //    });
            //});
            ///////////////////////////////////////////////////////////
            $("#btnTest").click(function () {
                var employee = {};
                
                employee.email = $("#txtEmail").val();
                employee.password = $("#txtPassword").val();
                employee.username = $("#txtUsername").val();
                
           
                employee.phonenumber = $("#txtPhoneNumber").val();
                employee.address = $("#txtAddress").val();
                employee.UserRole = $("#dropdown option:selected").val();
                if ($("#rbdMale").prop("checked")) {
                    employee.Gender = "Male";
                } else {
                    employee.Gender = "Female";
                }
                //$.each(employee, function (index, value) {
                //    alert(value);
                //});
                //$.ajax({

                //    url: 'UserService.asmx/CreateUser',
                //    method: 'post',
                //    contentType: 'application/json;charset=utf-8',
                //    data: '{user:' + JSON.stringify(employee) + '}',

                //    success: function () {

                //        alert("SIgnup Successful");
                //    },
                //    error: function (err) {
                //        //Alert.alert(  JSON.stringify(err)  );
                //        console.log(err);
                //        console.log(err.responseText);
                //        alert(err.responseText);
                //    }
                //});
                //$.getJSON("/api/Post? user=" + JSON.stringify(employee), function () {
                //    $("#txtUsername").val("successful");
                //});
                
                var myjson = JSON.stringify(employee);
                alert(myjson);


                 $.ajax({

                   
                    url: 'http://localhost:53146/api/user/PostUser',
                    method: 'POST',
                    contentType: 'application/json;charset=utf-8',
                    //data: '{user:' + JSON.stringify(employee) + '}',
                     data :JSON.stringify(employee),
                    //data:myjson,
                    datatype: 'json',
                    success: function () {

                        alert("signup successful");
                    },
                    error: function (err) {
                        //alert.alert(  json.stringify(err));
                        console.log(err);
                        console.log(err.responsetext);
                        alert(err.responsetext);
                    }
                });
                

                //var pass_err = true;
                //var phone_err = true;
                //var email_err = true;
                //var user_name_err = true;
                //passwordCheck();
                //emailcheck();
                //phonevalidation();
                //usernamevalidation();

                //if ((pass_err == true) && (phone_err == true) && (email_err == true) && (user_name_err == true)) {

                //    return true;

                //} else {
                //    return false;
                //}
                

            });
            ///////////////////////////////////////////////////////////
        });
    </script>
</asp:Content>
