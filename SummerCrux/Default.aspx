<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SummerCrux.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<meta name="Crux - The Computing and Programming Club of BITS-Pilani, Hyderabad Campus" content="The Computing and Programming Club of BITS-Pilani, Hyderabad Campus" />
	<meta name="author" content="Sagar anand, President, Crux - The Computing and Programming Club of BITS-Pilani, Hyderabad Campus" />

	<title>CRUx - BITS-Pilani, Hyderabad Campus</title>

    <!-- for the favicon -->
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon" />

    <!-- for the jQuery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<!-- for the Scrolly jQuery plugin -->
	<script src="js/jquery.scrolly.min.js"></script>

	<!-- for all the custom javascript functions -->
	<script src="js/scripts.js"></script>

    <style type="text/css">

        @font-face {
	    	font-family: regularText;
	    	src: url('fonts/AlegreyaSansSC-Regular.ttf');
	    }

	    @font-face {
	    	font-family: boldText;
	    	src: url('fonts/AlegreyaSansSC-Bold.ttf');
	    }

	    @font-face {
	    	font-family: lightText;
	    	src: url('fonts/AlegreyaSansSC-Light.ttf');
	    }

	    @font-face {
	    	font-family: mediumText;
	    	src: url('fonts/AlegreyaSansSC-Medium.ttf');
	    }

        @font-face {
	    	font-family: writingText;
	    	src: url('fonts/SEGOEUIL.ttf');
	    }

        /*for the smallest phones*/ 
        @media (max-width:767px){
            .mainWrapper {
                margin: 12% 0 0 0%;
            }

            .navDiv {
	    	    margin: 2% 0 0 0%;
	    	    font-family: regularText;
	        }

            .aboutUs {
                margin: 4% 0 0 0%;
            }
        }   

        /*for the tablets and all*/
        @media (min-width:768px){
             .mainWrapper {
                margin: 6% 0 0 0%;
            }

             .navDiv {
	    	    margin: 2% 0 0 0%;
	    	    font-family: regularText;
	        }

             .aboutUs {
                margin: 2% 0 0 0%;
            }
        }

        /*for medium screens and desktops*/
        @media (min-width:992px){
             .mainWrapper {
                margin: 4% 0 0 0%;
            }

             .navDiv {
	    	    margin: 4% 0 0 0%;
	    	    font-family: regularText;
	        }

             .aboutUs {
                margin: 1% 0 0 0%;
            }
        }

        /*for large screens*/ 
        @media (min-width:1200px){
             .mainWrapper {
                margin: 4% 0 0 0%;
            }

             .navDiv {
	    	    margin: 4% 0 0 0%;
	    	    font-family: regularText;
	        }

             .aboutUs {
                margin: 1% 0 0 0%;
            }
        }

        /*this is for the styles applicable universally*/
        h1, h2, h3, h4, h5, h6 {
            font-family: writingText;
        }

        p {
            font-family: writingText;
            font-size: 1.2em;
        }

    </style>

    <script type="text/javascript">
        $(document).ready(function () {

            var alertMsg = $('#alertMsg').hide();
            //for the popup!
            var popup = $('#popup').hide(1);
            //button to hide the popup appearing!
            $('#btnExitPopup').on('click', function () {
                popup.fadeOut();
                return false;
            });

            // for the scrolling of the page on  clicking of the links using Scrolling jQuery plugin.
            $('.scrolly').scrolly();

            // for all the variable to all the divs.
            var aboutUsDiv = $('#aboutUsDiv').hide();
            var compCodingDiv = $('#compCodingDiv').hide();
            var webDevDiv = $('#webDevDiv').hide();
            var androidDiv = $('#androidDiv').hide();
            var windowsDiv = $('#windowsDiv').hide();
            var pythonDiv = $('#pythonDiv').hide();
            var haskellDiv = $('#haskellDiv').hide();
            var linuxDiv = $('#linuxDiv').hide();
            
            // for the triggering of the links on LHS.
            $('#about').on('click', function() {
                //changeActiveState(this);
                showDiv(aboutUsDiv);
                return false;
            });

            // for competitive coding.
            $('.coding').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(compCodingDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenCoding').trigger('click');
                }
                else {
                    $('#hiddenCoding').trigger('click');
                }
                return false;
            });

            // for Web Dev coding.
            $('.web').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(webDevDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenWeb').trigger('click');
                }
                else {
                    $('#hiddenWeb').trigger('click');
                }
                return false;
            });

            // for android Dev coding.
            $('.android').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(androidDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenAndroid').trigger('click');
                }
                else {
                    $('#hiddenAndroid').trigger('click');
                }
                return false;
            });

            // for Windows Dev coding.
            $('.windows').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(windowsDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenWindows').trigger('click');
                }
                else {
                    $('#hiddenWindows').trigger('click');
                }
                return false;
            });

            // for Python Dev coding.
            $('.python').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(pythonDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenPython').trigger('click');
                }
                else {
                    $('#hiddenPython').trigger('click');
                }
                return false;
            });

            // for Haskell Dev coding.
            $('.haskell').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(haskellDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenHaskell').trigger('click');
                }
                else {
                    $('#hiddenHaskell').trigger('click');
                }
                return false;
            });

            // for Linux Dev coding.
            $('.linux').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(linuxDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenlinux').trigger('click');
                }
                else {
                    $('#hiddenlinux').trigger('click');
                }
                return false;
            });

            // for the first trigger to about Us.
            $('#about').trigger('click');

        });
    </script>

</head>
<body id="bodyTop">
    <form id="form1" runat="server">

        <div id="alertMsg" class="alert alert-warning" role="alert">
		</div>

		<div id="popup" class="alert alert-danger" role="alert">
			  <button type="button" class="close" id="btnExitPopup" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		</div>

        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand hidden-sm hidden-xs" href="http://crux-hyd.azurewebsites.net">Crux - The Programming & Computing Club at BPHC</a>
                    <a class="navbar-brand hidden-lg hidden-sm" href="http://crux-hyd.azurewebsites.net">Crux - BPHC</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <%--<a href="http://crux.azurewebsites.net" >Your Feedback</a>--%>
                            <a href="#aboutUsDiv" class="scrolly" id="about">About Us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="main-wrapper" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mainWrapper">
            
            <!-- for the list group on the LHS -->
		    <div class="col-lg-2 col-md-2 col-sm-3 navDiv">

                <div class="list-group">
                    <a href="#" class="list-group-item coding scrolly">Competitive Coding</a>
			    </div>

                <div class="list-group">
                    <a href="#" class="list-group-item web scrolly">Web Development</a>
			        <a href="#" class="list-group-item android scrolly">Android App Development</a>
                    <a href="#" class="list-group-item windows scrolly">Windows Phone App Development</a>
                    <a href="#" class="list-group-item python scrolly">Python Programming</a>
                    <a href="#" class="list-group-item haskell scrolly">Haskell Programming</a>
                    <a href="#" class="list-group-item linux scrolly">Linux/OS/Server Admin</a>
                </div>

		    </div>   <!-- end of list div on LHS -->

            <!-- for the about Us Div -->
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain aboutUs" id="aboutUsDiv">

                <h1 class="page-header">
                    Crux - BPHC
                </h1>

                <p>
                    CRUx is a registered body for the development and management of softwares required for the internal use of the Institute. Built on the lines of the SDETU at Pilani Campus and the CSD at Goa Campus , CRUx aims at starting introductory courses in various aspects of software development.
                </p>

                <p>
                    This initiative is brought to you by Crux for helping the students, especially those who have spent their maiden year in College in learning the basics of various fields of Computer Science and related technologies, thus building a community of student developers.
                </p>

            </div>   <!-- end of about Us Div -->

             <!-- for the Competitive Div Div -->
            <a href="#compCodingDiv" class="scrolly" id="hiddenCoding"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain codingDiv" id="compCodingDiv">

                <h1 class="page-header">
                    Competitive Coding
                </h1>

            </div>   <!-- end of Competitive Coding Div -->

            <!-- for the Web Dev Div -->
            <a href="#webDevDiv" class="scrolly" id="hiddenWeb"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain webDiv" id="webDevDiv">

                <h1 class="page-header">
                    Web Development
                </h1>

            </div>   <!-- end of Web Dev Div -->

            <!-- for the Android App Dev Div -->
            <a href="#androidDiv" class="scrolly" id="hiddenAndroid"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain androidDev" id="androidDiv">

                <h1 class="page-header">
                    Android App Development
                </h1>

            </div>   <!-- end of Android Dev Div -->

            <!-- for the Windows App Dev Div -->
            <a href="#windowsDiv" class="scrolly" id="hiddenWindows"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain androidDev" id="windowsDiv">

                <h1 class="page-header">
                    Windows Phone/Store App Development
                </h1>

            </div>   <!-- end of Windows Dev Div -->

            <!-- for the Python programming Div -->
            <a href="#pythonDiv" class="scrolly" id="hiddenPython"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain pythonProg" id="pythonDiv">

                <h1 class="page-header">
                    Python Programming
                </h1>

            </div>   <!-- end of Python Dev Div -->

             <!-- for the Haskell programming Div -->
            <a href="#haskellDiv" class="scrolly" id="hiddenHaskell"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain haskellProg" id="haskellDiv">

                <h1 class="page-header">
                    Haskell Programming
                </h1>

            </div>   <!-- end of Haskell Dev Div -->

             <!-- for the Linux programming Div -->
            <a href="#linuxDiv" class="scrolly" id="hiddenLinux"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain linuxOS" id="linuxDiv">

                <h1 class="page-header">
                    Linux/OS/Server Admin
                </h1>

            </div>   <!-- end of Linux Dev Div -->

        </div>  <!-- end of main wrapper -->

    </form>

    <!-- for bootstrap CSS and JS files. Included here to improve the page load time -->
	<link type="text/css" href="BootStrap/css/bootstrap-theme.css" rel="stylesheet" />
	<link type="text/css" href="BootStrap/css/bootstrap.css" rel="stylesheet" />
	<script type="text/javascript" src="BootStrap/js/bootstrap.js"></script>

</body>
</html>
