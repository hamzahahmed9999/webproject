<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
&ndash;%&gt;--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Travelo</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="img/logo.png" rel="icon">


    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">




    <!-- Firebase App is always required and must be first -->
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-app.js"></script>

    <!-- Add additional services that you want to use -->
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-firestore.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-messaging.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-functions.js"></script>

    <!-- Comment out (or don't include) services that you don't want to use -->
    <!-- <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase-storage.js"></script> -->




    <script>
        var config = {
            // ...
        };
        firebase.initializeApp(config);
    </script>


    <script src="https://www.gstatic.com/firebasejs/5.5.5/firebase.js"></script>
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyARkmKBzlLLsiSX4JaY6jlL-We9W7OTzgI",
            authDomain: "webproject-21d98.firebaseapp.com",
            databaseURL: "https://webproject-21d98.firebaseio.com",
            projectId: "webproject-21d98",
            storageBucket: "webproject-21d98.appspot.com",
            messagingSenderId: "561170802443"
        };
        firebase.initializeApp(config);

    </script>



    <script type="text/javascript">
        $(document).ready(function(){
            $('#givereview').click(function () {
                alert("Hello! I am an alert box!!");
                var review=$('#reviewarea').val();
                $.ajax({
                    type:'POST',
                    data:{review:review},
                    url:'ratingservlet',
                    success:function (result) {
                        $('#result1').html(result);
                    }

                });
            });
        });




        function sendrating1(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var rating1="?rating=1";
            var type="type=rating";
            var areaid="&areaid="+area;
            xhttp.open("POST", "/ratingservlet"+rating1+"&"+type+areaid, true);
            xhttp.send();
        }


        function sendrating2(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating2="?rating=2";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating2+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating3(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating3="?rating=3";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating3+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating4(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating4="?rating=4";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating4+"&"+type+areaid, true);
            xhttp.send();
        }

        function sendrating5(area) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {


                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="&areaid="+area;
            var rating5="?rating=5";
            var type="type=rating";
            xhttp.open("POST", "/ratingservlet"+rating5+"&"+type+areaid, true);
            xhttp.send();
        }


        function addwishlist(area) {
            alert("in wish list");

            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange=function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("result1").innerHTML = xhttp.responseText;
                }
            };
            var areaid="?areaid="+area;
            alert(areaid);
            xhttp.open("POST", "/ratingservlet"+areaid+"&type=wish", true);
            xhttp.send();
        }


    </script>
</head>

<body id="body">

<div id="insideBody">
    <!--==========================
Top Bar
============================-->
    <section id="topbar" class="d-none d-lg-block">
        <div class="container clearfix">
            <div class="contact-info float-left">
                <i class="fa fa-envelope-o"></i> <a href="mailto:Travelo@example.com">Team@Travelo.com</a>
                <i class="fa fa-phone"></i> +92 3341731677
            </div>
            <div class="social-links float-right">
                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>
        </div>
    </section>

    <!--==========================
Header
============================-->
    <header id="header">
        <div class="container">

            <div id="logo" class="pull-left">
                <h1>
                    <a href="/">
                        <h3>Travelo</h3>
                    </a>

                </h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
            </div>

            <nav id="nav-menu-container">
                <ul class="nav-menu">

                    <li><a href="home.jsp" class="btn signup">Diary</a></li>
                    <li><a href="javascript:{}" onclick="logout()" class="btn signup">Logout</a></li>
                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </header><!-- #header -->

    <form id="form1"></form>

    <div class="container">
        <div class="row" style="margin: 2% 0%;">
            <div class="col-sm-12" style="box-shadow: 0px 2px 30px rgba(0,0,0,0.30);">

                <div class="container-fluid" id="plot">
                    <div class="row" style="display: block">
                        <div style="padding: 15px;">
                            <img class="col-sm-12" src="http://i.stack.imgur.com/25Rl3.jpg" height="300px">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Time Required to Explore</p>
                                </div>
                                <div class="col-sm-4">
                                    <p>Country</p>
                                </div>
                                <div class="col-sm-4">
                                    <p>Location</p>
                                </div>
                            </div>
                            <div class="row" id="PricingDetials">
                                <div class="col-sm-4">
                                    <h3 style="margin-top: 4%;">1 Day</h3>
                                </div>
                                <div class="col-sm-4">
                                    <h3 style="margin-top: 4%;">Paris</h3>

                                </div>
                                <div class="col-sm-4">
                                    <h3>Eifil Tower</h3>
                                </div>
                            </div>
                        </div>



                        <div class="col-sm-12">

                            <div class="reviewDiv">

                                <h2 style="font-weight: bold;">My Review</h2>
                                <p>This is a wonderful place for people who want to come with families and enjoy some private time with their loved ones </p>



                                <h2 style="font-weight: bold;margin-bottom: 0px;">Your Review</h2>
                                <label class="control-label" for="selected_rating">
                                    <span class="field-label-info"></span>
                                    <input type="hidden" id="selected_rating" name="selected_rating" value="" required="required">
                                </label>

                                <div class="row" id="ratingStar">

                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating1()" data-attr="1" id="rating-star-1">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating2()" data-attr="2" id="rating-star-2">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating3()" data-attr="3" id="rating-star-3">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating4()" data-attr="4" id="rating-star-4">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btnrating btn btn-default btn-lg" onclick="sendrating5()" data-attr="5" id="rating-star-5" style="margin-right: 5%;">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </button>

                                    <h2 class="bold rating-header" style="margin-bottom: 0px;">
                                        <span class="selected-rating">0</span><small> / 5</small>
                                    </h2>
                                    </button>


                                </div>

                                <button type="button" class=" btn btn-default btn-lg" onclick="addwishlist()" data-attr="5" id="wishlist" style="margin-right: 5%;">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </button>

                                <div><textarea id="reviewarea" name="reviewarea"  rows="4" style="width: 50%;"></textarea></div>
                                <div><input id="givereview" class="btn btn-success" style="margin-top:5px" onclick="sendreview()" type="button" value="Give Review"></div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>








    <!--==========================
Footer
============================-->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>2018</strong>. All Rights Reserved
            </div>
            <div class="credits">

                Designed by <a>Hamza Ahmed</a>
            </div>
        </div>
    </footer><!-- #footer -->

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</div>

<!--==========================
login modal
============================-->
<div id="loginModal" class="modal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 id="myModalLabel">Login</h3>
                <button type="button" id="closelogin" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <form class="form" role="form" autocomplete="off" id="formLogin" novalidate="" method="POST">
                    <div class="form-group">
                        <a href="" class="float-right">New user?</a>
                        <label for="uname1">Username</label>
                        <input type="text" class="form-control form-control-lg" name="uname1" id="uname1" required="">
                        <div class="invalid-feedback">Oops, you missed this one.</div>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control form-control-lg" id="pwd1" required="" autocomplete="new-password">
                        <div class="invalid-feedback">Enter your password too!</div>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="rememberMe">
                        <label class="custom-control-label" for="rememberMe">Remember me on this computer</label>
                    </div>
                    <div class="form-group py-4">
                        <button class="btn btn-outline-secondary btn-lg" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        <button type="submit" class="btn btn-success btn-lg float-right" id="btnLogin">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div><!-- #login -->


<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/jquery/jquery-migrate.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/superfish/hoverIntent.js"></script>
<script src="lib/superfish/superfish.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/magnific-popup/magnific-popup.min.js"></script>
<script src="lib/sticky/sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
<!-- Contact Form JavaScript File -->
<!--  <script src="contactform/contactform.js"></script>-->

<script>

    function sendreview(id) {
        alert("in review")
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange=function() {
            if (this.readyState == 4 && this.status == 200) {


                document.getElementById("").innerHTML = xhttp.responseText;
            }
        };

        alert("in review")
        var ra=document.getElementById("reviewarea").value;
        alert(ra);
        var reviewarea="?reviewarea="+ra;
        var areaid="&areaid="+id;
        var type="type=review";
        alert(reviewarea);
        alert(areaid);
        xhttp.open("POST", "/ratingservlet"+reviewarea+"&"+type+areaid, true);
        xhttp.send();
    }


    function logout()
    {
        var path="Login.jsp";

        firebase.auth().signOut().then(function() {
            document.getElementById("form1").action="Login.jsp";
            document.getElementById("form1").submit();
        }).catch(function(error) {
            // An error happened.
        });


    }

</script>



<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>
