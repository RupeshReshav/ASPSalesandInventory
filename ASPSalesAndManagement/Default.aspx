<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPSalesAndManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        src = "https://code.jquery.com/jquery-3.3.1.min.js"
    </script>
    <div class="container-fluid">

        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 91vh">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" style="height: 91vh">
                <div class="item active" style="height: 91vh">
                    <img src="Images/First.jpg" style="width: 100%; height: 99vh" />
                </div>

                <div class="item">
                    <img src="Images/second.jpg" style="width: 100%; height: 99vh" />
                </div>

                <div class="item">
                    <img src="Images/Third.jpg" style="width: 100%; height: 99vh" />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div id="section1" class="container-fluid text-center">
        <h1>we've got what you need!</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img  src="Images/fruits.jpg" style="width: 100%" />
                        <div class="caption">
                            <p>Fresh fruits</p>
                        </div>
                    </a>


                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img src="Images/vegetables.jpg" style="width: 100%" />
                        <div class="caption">
                            <p>Fresh vegetables</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img src="Images/grocery.jpg" style="width: 100%" />
                        <div class="caption">
                            <p>Daily groceries</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img src="Images/shoes1.jpg" style="width: 100%" />
                        <div class="caption">
                            <p>Stylish shoes</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img src="Images/shirts.jpg" id="image1" style="width: 100%" />
                        <div class="caption">
                            <p>Cotton shirts</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a>
                        <img src="Images/sari.jpg" style="width: 100%" />
                        <div class="caption">
                            <p>Indian dress</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

    </div>

    <div id="section2" class="container-fluid text-center">
        <h4>SERVICES</h4>
        <h4>What we offer</h4>
        `
  <br>
        <div class="row slideanim">
            <div class="col-md-4">
                <span class="glyphicon glyphicon-list-alt logo-small"></span>
                <h4>Sales</h4>
                <p>All the grocery items</p>
            </div>
            <div class="col-md-4">
                <span class="glyphicon glyphicon-heart logo-small"></span>
                <h4>Fixed Price</h4>
                <p>Guarantee on price</p>
            </div>
            <div class="col-md-4">
                <span class="glyphicon glyphicon-lock logo-small"></span>
                <h4>Queries</h4>
                <p>You can contact any time you want..</p>
            </div>
        </div>
        <br>
        <br>
        <div class="row slideanim">
            <div class="col-md-4">
                <span class="glyphicon glyphicon-leaf logo-small"></span>
                <h4>Specual Request</h4>
                <p>You can request for special item..</p>
            </div>
            <div class="col-md-4">
                <span class="glyphicon glyphicon-certificate logo-small"></span>
                <h4>Complain</h4>
                <p>You have right to complain about any product..</p>
            </div>
            <div class="col-md-4">
                <span class="glyphicon glyphicon-wrench logo-small"></span>
                <h4>Rating</h4>
                <p>You will see rating on products..</p>
            </div>
        </div>
    </div>

    <div id="section3" class="container-fluid bg-grey">
        <h2 class="text-center">Let's Get In Touch</h2>
        <div class="row">
            <div class="col-sm-5">
                <p>Contact us and we'll get back to you within 24 hours.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span>Beaumont,Tx</p>
                <p><span class="glyphicon glyphicon-phone"></span>+1 4096650246</p>
                <p><span class="glyphicon glyphicon-envelope"></span>rs@gmail.com</p>
            </div>
            <div class="col-sm-7 slideanim">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <button class="btn btn-default pull-right" type="submit">Send</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            ////////////////////////////////////
            $('div.thumbnail').bind({
                mouseover: function () {

                    $(this).css({

                        'cursor': 'hand',
                        'border-color': 'red'
                    });
                },
                mouseout: function () {
                    $(this).css({
                        'cursor': 'default',
                        'border-color': 'white'
                    });
                },
                mousedown: function () {
                    $(this).fadeOut(1000).fadeIn(1000);
                }
            }, 'img');

            ///////////////////////////////////
            var str = ["Images/shirts.jpg", "Images/1.jpg", "Images/2.jpg", "Images/3.jpg", "Images/4.jpg"];
            var count = 0;
            $('#image1').bind('click', function () {
                if (count < str.length) {
                    $(this).attr('src', str[count]);
                    count++;
                }
                else {
                    $(this).attr('src', str[0]);
                    count = 0;
                }
                
            });


            ////////////////////////////////////
        });
    </script>
</asp:Content>
