



<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 10/19/2018
  Time: 12:19 AM
  To change this template use File | Settings | File Templates.
--%>
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
          rel="stylesheet">

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

    <script>




        function submitclick()
        {
            alert("in submit click");
            var firebaseRef=firebase.database().ref();
            firebaseRef.child("hello").set("hi");
            firebaseRef.child("hamza").set("hi");
            adduser();
        }



        function signup()
        {
            var email=document.getElementById("email").value;
            var password=document.getElementById("psw").value;
            var check=0;
            var fb=firebase.auth();
            fb.createUserWithEmailAndPassword(email, password).catch(function(error) {
                // Handle Errors here.
                check=1;
                var errorCode = error.code;
                var errorMessage = error.message;
                alert(errorMessage);
                document.getElementById("form1").action="signup.jsp";
                document.getElementById("form1").submit();

                // ...
            });

            if(check.match(0))
            {
                document.getElementById("form1").action="Login.jsp";
                document.getElementById("form1").submit();
            }

        }



        function adduser()
        {
            alert("in addd user");
            var firebaseRef=firebase.database().ref();
            var userref=firebaseRef.child("user").push();
            userref.child("name").set("hamza");
            userref.child("email").set("hamza@gmail.com");
            userref.child("password").set("pakistan");

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
                    <li><a href="Login.jsp" role="button" id="loginbtn" class="btn login"
                                                data-toggle="modal">Login</a></li>
                </ul>
            </nav><!-- #nav-menu-container -->
        </div>
    </header><!-- #header -->



<form id="form1" method="post"></form>




    <div class="panel panel-primary" style="margin:20px; margin-top: 5%;margin-bottom: 5%">
        <div class="panel-heading">
            <h3 class="panel-title">Registration Form</h3> </div>
        <div class="panel-body">
                <div class="col-md-12 col-sm-12">
<%--                    <div class="form-group col-md-6 col-sm-6">
                        <label for="name">Name* </label>
                        <input type="text" class="form-control input-sm" id="name" name="uname" placeholder="" required> </div>--%>
                    <div class="form-group col-md-6 col-sm-6">
                        <label for="email">Email*</label>
                        <input type="email" class="form-control input-sm" id="email" name="email" placeholder="" required> </div>
<%--                    <div class="form-group col-md-6 col-sm-6">
                        <label for="ucontact">Mobile*</label>
                        <input type="text" class="form-control input-sm" id="ucontact" name="ucontact" placeholder="" required> </div>
                    <div class="form-group col-md-6 col-sm-6">
                        <label for="ucity">City*</label>
                        <input type="text" class="form-control input-sm" id="ucity" name="ucity" placeholder="" required> </div>--%>
                    <div class="form-group col-md-6 col-sm-6">
                        <label for="psw">Password</label>
                        <input type="password" class="form-control input-sm" id="psw" name="psw" placeholder="" required> </div>
                </div>
                <%--<div class="col-md-12 col-sm-12" id="deceased">
                    <div class="form-group col-md-3 col-sm-3">
                        <label for="ugender">Gender*</label>
                        <input type="text" class="form-control input-sm" id="ugender" name="ugender" placeholder="" required> </div>
                    <div class="form-group col-md-3 col-sm-3">
                        <label for="udob">DOB*</label>
                        <input type="date" class="form-control input-sm" id="udob" name="udob" placeholder="" required><label> Format (DD/MM/YYYY )</label> </div>
                    <div class="form-group col-md-6 col-sm-6">
                        <label for="cpassword">Confirm Password</label>
                        <input type="password" class="form-control input-sm" id="cpassword" name="cpassword" placeholder="" required>
                    </div>
                </div>--%>
                <div class="col-md-12 col-sm-12">
                    <div class="form-group">
                        <button id="submitform" onclick="signup()" class="btn btn-primary">Signup</button> </div>
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
                        <input type="password" class="form-control form-control-lg" id="pwd1" required=""
                               autocomplete="new-password">
                        <div class="invalid-feedback">Enter your password too!</div>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="rememberMe">
                        <label class="custom-control-label" for="rememberMe">Remember me on this computer</label>
                    </div>
                    <div class="form-group py-4">
                        <button class="btn btn-outline-secondary btn-lg">Cancel</button>
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

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>
