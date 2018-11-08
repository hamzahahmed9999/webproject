<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.Serializable" %>
<%--
  Created by IntelliJ IDEA.
  User: Hamza Shah
  Date: 6/5/2018
  Time: 3:49 PM
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
</head>

<body id="body">
<form id="form2" method="post" path="Login.jsp"></form>

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
    <form id="form1" method="post"></form>
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
                        <li><button href="javascript:{}" id="submitbtnlogout" onclick="logout()" class="btn signup">Logout</button></li>
                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
    </header><!-- #header -->




    <h2 style="text-align: center;margin-top: 100px">Your Diary</h2>

    <hr>

    <div class="container">
        <div class="row">






            <div class="col-sm-9">


                <div class="container-fluid">
                    <form id="form3" method="post" action="Postshow.jsp">
                        <div class="row" id="group" style="border-top: 1px solid #E5E5E5;margin-bottom: 10px">

                            <div class="col-sm-4" style="padding: 10px">
                                <img src="http://i.stack.imgur.com/25Rl3.jpg" class="img-rounded" alt="Cinq Tre" width="100%" height="50%">
                            </div>
                            <div class="col-sm-4" style="border-right: 1px solid #a6a6a6;margin-top: 2%;margin-bottom: 2%;width: 100%">
                                <h3 style="font-family: 'Roboto Mono', monospace;">Place</h3>
                                <h3 style="text-align: right"><b>Description</b>   </h3>
                                <li href="javascript:{}" onclick="openthis()"><button href="javascript:{}" class="btn btn-success btn-lg reviewLink" id="submit_btn_" >More</button></li>
                            </div>

                            <div class="col-sm-4" style="margin-top: 5%">
                                <p><b>Location :</b> Paris</p>
                            </div>


                            <!--</ng-container>-->
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-12" class="pagination" style="margin-top: 5%">

                            <nav>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                                    <li class="page-item"><a href="#" class="page-link">6</a></li>
                                    <li class="page-item"><a href="#" class="page-link">7</a></li>
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
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

                Designed by <a >Hamza Ahmed</a>
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




<script type="text/javascript">

    function openthis()
    {
        alert("hello");
        document.getElementById("form3").action="Postshow.jsp";
        document.getElementById("form3").submit();
        document.getElementById("submit_btn_").submit();

    };

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

    function openprofile()
    {
        document.getElementById(ID).action="/Use?id="+id+"&type=show";
        document.getElementById(btnid).submit();
    }




</script>


<!-- Template Main Javascript File -->
<script src="js/main.js"></script>

</body>

</html>
