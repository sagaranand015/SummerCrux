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

    <!-- for the social buttons coming from Bootstrap -->
    <link href="css/bootstrap-social.css" rel="stylesheet" />    

    <!-- for the font-awesome thing -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

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

        /*.mainWrapper {
            margin-bottom: %;
        }*/

        h1, h2, h3, h4, h5, h6 {
            font-family: writingText;
        }

        p {
            font-family: writingText;
            font-size: 1.2em;
        }

        li {
            font-family: writingText;
            font-size: 1.2em;
        }

        a {
            font-family: writingText;
            font-size: 1.2em;
        }

        .listHeading {
             font-family: writingText;
             font-size: 1.5em;
             text-decoration: underline;
             font-weight: bold;
        }

        div.list-group a {
            font-size: 1.2em;
        }

        .quickLinks li {
            display: block;
            text-align: left;
        }

        .quickLinks li a {
            font-size: 0.8em;
        }

        .footerDiv {
            background: rgb(233, 233, 233);
            padding: 2% 2% 1% 2%;
            text-align: center;
        }
        ul.social-buttons {
            margin-bottom: 0;
        }

        ul.social-buttons li a {
            display: block;
            width: 40px;
            height: 40px;
            border-radius: 100%;
            font-size: 20px;
            line-height: 40px;
            outline: 0;
            color: #fff;
            background-color: #222;
            -webkit-transition: all .3s;
            -moz-transition: all .3s;
            transition: all .3s;
        }

        .logoImg {
            width: 40%;
            height: 40%;
        }

        .divsMain {
            margin-bottom: 3%;
        }

        /*ul.social-buttons li a:hover,
        ul.social-buttons li a:focus,
        ul.social-buttons li a:active {
            background-color: #fed136;
        }*/
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
            var git = $('#gitDiv').hide();
            var openDiv = $('#openDiv').hide();
            var networkDiv = $('#networkDiv').hide();

            // for redirection links
            $('.redirectGIT').on('click', function () {
                $('.git').trigger('click');
                return false;
            });

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

            // for GIT VCS coding.
            $('.git').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(gitDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenGit').trigger('click');
                }
                else {
                    $('#hiddenGit').trigger('click');
                }
                return false;
            });

            // for Open Source Div
            $('.open').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(openDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenOpen').trigger('click');
                }
                else {
                    $('#hiddenOpen').trigger('click');
                }
                return false;
            });

            // for Open Source Div
            $('.net').on('click', function () {
                if (!$(this).hasClass('active')) {
                    changeActiveState(this);
                    showDiv(networkDiv);
                }

                // this is for conditions of scrolling depending on the device size.
                if ($(window).width() >= 1200) {
                }
                else if ($(window).width() >= 992) {
                }
                else if ($(window).width() >= 768) {
                }
                else if ($(window).width() >= 480) {
                    $('#hiddenNet').trigger('click');
                }
                else {
                    $('#hiddenNet').trigger('click');
                }
                return false;
            });

            // for the first trigger to about Us.
            $('#about').trigger('click');

            // for the modal.
            $('#readMoreLinux').on('click', function () {
                $('#linuxModal').modal('show');
                return false;
            });

        });
    </script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-54949340-3', 'auto');
        ga('send', 'pageview');
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
                </div>

                <div class="list-group">
                    <a href="#" class="list-group-item python scrolly">Python Programming</a>
                    <a href="#" class="list-group-item haskell scrolly">Haskell Programming</a>
                </div>

                <div class="list-group">
                    <a href="#" class="list-group-item open scrolly">Open Source</a>
                    <a href="#" class="list-group-item linux scrolly">Linux/OS/Server Admin</a>
                    <a href="#" class="list-group-item git scrolly">GIT VCS</a>
                    <a href="#" class="list-group-item net scrolly">Computer Networks</a>
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

                <!-- write all the content here for each of the categories -->
                <ol>
                    <li>
                        <a href="https://www.hackerearth.com/notes/getting-started-with-the-sport-of-programming/" target="_blank">Here </a> is the detailed thread on HackerRank for competitive programming. One should start with this.
                    </li>
                    <li>
                        For people looking for a headstart in Data Structures & Algorithms,<a href="https://www.coursera.org/course/algo" target="_blank"> Here </a> is the Part 1 of the coursera course by Tim Roughgarden. 
                    </li>
                    <li>
                        <a href="http://1drv.ms/1KZlseB" target="_blank">Here</a> are the old videos from one of the course editions. You may get started with this.
                    </li>

                    <!-- add more content for Competitive programming here -->

                </ol>

            </div>   <!-- end of Competitive Coding Div -->

            <!-- for the Web Dev Div -->
            <a href="#webDevDiv" class="scrolly" id="hiddenWeb"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain webDiv" id="webDevDiv">
                <h1 class="page-header">
                    Web Development
                </h1>

                <h4>
                    Web can be categorised into 2 parts. Front-End and Back-End.
                </h4>
                <ul>
                    <li>
                       <span class="listHeading">Front End Development</span>
                        <ol>
                            <li>
                                For starting with HTML, CSS, javascript/jQuery, one can take begineer courses on <a href="http://codeschool.com" target="_blank">CodeSchool.com, </a><a href="http://codeacademy.com" target="_blank">CodeAcademy.com, </a><a href="http://codebabes.com" target="_blank">Codebabes.com </a>(this last site is sort of fun :p)
                            </li>
                            <li>
                                For learning basic to advanced jQuery, there is a course on “30 days to learn jQuery[Tuts+]”. You can find this on Torrents easily.
                            </li>
                            <li>
                                For some little advanced jQuery, check this course: <a href="http://www.microsoftvirtualacademy.com/training-courses/introduction-to-jquery" target="_blank">Here</a>
                            </li>
                            <li>
                                Here are some of the intro videos on HTML, CSS and javascript. These are very basic, and only for a pure beginner. <a href="http://1drv.ms/1EN8QGZ" target="_blank">Here</a>
                            </li>
                            <li>
                                Again, For very basic exercises & presentations, check “Presentations” folder <a href="http://1drv.ms/1EN8QGZ" target="_blank">Here</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                       <span class="listHeading">Back End Development</span>
                        <ol>
                            <li>
                                For backend development, you can start with either ASP.NET or PHP as your server side language. 
                            </li>
                            <li>
                                For PHP, here are some of the uploaded videos:  <a href="http://1drv.ms/1EN8QGZ" target="_blank">Here</a>
                            </li>
                            <li>
                                For ASP.NET, here is a small intro course: <a href="http://www.microsoftvirtualacademy.com/training-courses/introduction-to-asp-net-mvc" target="_blank">Here</a>
                            </li>
                            <li>
                                There are also courses on Node.js, MongoDB, jQuery etc. <a href="http://www.microsoftvirtualacademy.com/"  target="_blank">Here</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <span class="listHeading">Miscellaneous</span>
                        <ol>
                            <li>
                                If you want to develop websites using Python, have a look at <a href="https://www.udacity.com/course/web-development--cs253" target="_blank">This</a>, then followed by <a href="https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd004" target="_blank">This</a>
                            </li>
                        </ol>
                    </li>
                </ul>

            </div>   <!-- end of Web Dev Div -->

            <!-- for the Android App Dev Div -->
            <a href="#androidDiv" class="scrolly" id="hiddenAndroid"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain androidDev" id="androidDiv">
                <h1 class="page-header">
                    Android App Development
                </h1>

                <h4>To start with Android, following should be the approach:</h4>
                <ol>
                    <li>
                        Requirements: <b>Android Studio</b> or <b>Eclipse</b>. (Android Studio is better than Eclipse, most of the current projects are developed using Android Studio)
                    </li>
                    <li>
                        Official Training by Google: <a href="http://developer.android.com/training/index.html" target="_blank">Here</a>
                    </li>
                    <li>
                        Learn Windows Azure(cloud) servies to use in Android Apps: <a href="https://channel9.msdn.com/Azure" target="_blank">Here</a> and <a href="http://azure.microsoft.com/en-us/documentation/services/mobile-services/" target="_blank">Here</a>
                    </li>
                    <li>
                        Other useful resources: <a href="http://www.vogella.com/tutorials/android.html" target="_blank">Vogella</a>, <a href="http://www.tutorialspoint.com/android/" target="_blank">TutorialsPoint</a> and <a href="https://www.youtube.com/user/slidenerd" target="_blank">Youtube</a>
                    </li>
                </ol>

            </div>   <!-- end of Android Dev Div -->

            <!-- for the Windows App Dev Div -->
            <a href="#windowsDiv" class="scrolly" id="hiddenWindows"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain androidDev" id="windowsDiv">
                <h1 class="page-header">
                    Windows Phone/Store App Development
                </h1>

                <ol>
                    <li>
                        Check out this <a href="http://sagaranand015.blogspot.in/2013/10/opening-windows-first-step.html" target="_blank">Blog</a> for a complete list of resources for Windows Phone 7/8. [This is an old one, but you'll find lots of stuff on Windows Phone 8.1 from these links itself]
                    </li>
                    <li>
                        <a href="http://channel9.msdn.com/Series/Windows-Phone-8-1-Development-for-Absolute-Beginners" target="_blank">Here </a> is the link to Windows Phone 8.1 For Absolute beginner series
                    </li>
                    <li>
                        Check out <a href="http://www.microsoftvirtualacademy.com/" target="_blank">Microsoft Virtual Academy </a> for a very exhautive list of resources based on Microsoft Technologies.
                    </li>
                </ol>

            </div>   <!-- end of Windows Dev Div -->

            <!-- for the Python programming Div -->
            <a href="#pythonDiv" class="scrolly" id="hiddenPython"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain pythonProg" id="pythonDiv">
                <h1 class="page-header">
                    Python Programming
                </h1>

                <h4>
                    Dividing the resources by level of difficulty, we go as:
                </h4>

                <ul>
                    <li>  
                        <b>Easy</b>
                        <ol>
                            <li>
                                <a href="https://docs.python.org/2.7/" target="_blank">Python Official Docs</a>
                            </li>
                            <li>
                                <a href="http://interactivepython.org/courselib/static/pythonds/index.html" target="_blank" >Hitchhiker’s Guide To Python</a>
                            </li>
                            <li>
                                <a href="http://docs.python-guide.org/en/latest/#the-hitchhiker-s-guide-to-python" target="_blank" >Interactive Python</a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/playlist?list=PLQVvvaa0QuDe8XSftW-RAxdo6OmaeL85M" target="_blank">Video Tuts by Sentdex</a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/playlist?list=PL6gx4Cwl9DGAcbMi1sH6oAMk4JHw91mC_" target="_blank">Video Tuts by theNewBoston</a>
                            </li>
                            <li>
                                <a href="http://www.codecademy.com/tracks/python" target="_blank">CoadeAcademy Video tutorials</a>
                            </li>
                            <li>
                                <a href="https://www.udacity.com/course/programming-foundations-with-python--ud036" target="_blank">Online course on Udacity</a>
                            </li>
                            <li>
                                <a href="https://www.udacity.com/course/intro-to-computer-science--cs101" target="_blank">Udacity Course using Python</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <b>Intermediate</b>
                        <ol>
                            <li>
                                <a href="https://www.ebooks-it.net/ebook/the-python-standard-library-by-example" target="_blank">A Book on Standard Python Library</a>
                            </li>
                            <li>
                                <a href="https://freepythontips.wordpress.com/2013/07/31/10-python-blogs-worth-following/" target="_blank">10 Best blogs on Python</a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/playlist?list=PL1A2CSdiySGIQZl3-v6o3iz-O5NO6roRl" target="_blank">DrapsTV Video Tutorials, Intermediate Python</a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/playlist?list=PL1A2CSdiySGJeOmhFfV7d2EeiiunIDRZZ" target="_blank">DrapsTV Video Tutorials, Intermediate Python</a>
                            </li>
                            <li>
                                <a href="https://github.com/karan/Projects" target="_blank">Mega Project list</a>
                            </li>
                            <li>
                                <a href="https://github.com/vinta/awesome-python" target="_blank">Awesome Python Project</a>
                            </li>
                        </ol>
                    </li>
                </ul>

            </div>   <!-- end of Python Dev Div -->

             <!-- for the Haskell programming Div -->
            <a href="#haskellDiv" class="scrolly" id="hiddenHaskell"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain haskellProg" id="haskellDiv">
                <h1 class="page-header">
                    Haskell Programming
                </h1>

                <p class="text-muted">
                    Haskell is a functional programming language with a relatively steep learning curve and less resources compared to other languages.
The resources listed here will significantly reduce the amount of effort needed to search for stuff.
                </p>

                <ol>
                    <li>
                        <a href="https://github.com/bitemyapp/learnhaskell" target="_blank">This Guide</a> will help you right from installing the required tools to courses to learn Haskell. 
                    </li>
                    <li>
                        <a href="http://www.seas.upenn.edu/~cis194/spring13/index.html" target="_blank" >This course </a>is a great way to start learning Haskell.
                    </li>
                    <li>
                        <a href="https://github.com/bfpg/cis194-yorgey-lectures" target="_blank">Here </a> are the video lectures for learning Haskell.
                    </li>
                    <li>
                        <a href="http://book.realworldhaskell.org/read/" target="_blank">Here </a> is a book on Haskell Concepts
                    </li>
                    <li>
                        <a href="http://learnyouahaskell.com/" target="_blank">Here </a> is another book for learning Haskell and functional Programming concepts
                    </li>
                </ol>

            </div>   <!-- end of Haskell Dev Div -->

            <!-- for the Linux programming Div -->
            <a href="#linuxDiv" class="scrolly" id="hiddenLinux"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain linuxOS" id="linuxDiv">
                <h1 class="page-header">
                    Linux/OS/Server Admin
                </h1>

                <ol>
                    <li>
                        <a href="http://1drv.ms/1A18TsZ" target="_blank" >Here </a> is a list of Video Tutorials by CBT Nuggets. You will learn from scratch (starting from installation) and can help you if you want to qualify Linux Administration Certifications. <a href="#" id="readMoreLinux">Read about Tut Arrangement</a>
                    </li>
                    <li>
                        <a href="http://linux.die.net/" target="_blank">Here </a> are the online man pages as well as decent guide too various commands and programming.
                    </li>
                    <li>
                        <a href="2.	http://www.blindhog.net/" target="_blank">Here </a>is a site for For Linux and Networking related doubts
                    </li>
                    <li>
                        For basics of Linux, Networks and OS, check <a href="http://www.laynetworks.com/" target="_blank">This</a> out.
                    </li>
                    <li>
                        [Put link to PDFs here]
                    </li>
                </ol>

            </div>   <!-- end of Linux Dev Div -->

            <!-- for the GIT VCS Div -->
            <a href="#gitDiv" class="scrolly" id="hiddenGit"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain gitVcs" id="gitDiv">
                <h1 class="page-header">
                    GIT - Version Control System
                </h1>

                <p class="text-muted">
                    It is essential to learn about Version Control Systems when starting with Open source contribution. Git is one of the most popular VCS at the moment. Some resources for learning Git are:
                </p>

                <ol>
                    <li>
                        <a href="https://www.codeschool.com/courses/try-git" target="_blank">Here </a> is the CodeSchool course for starting with GIT.
                    </li>
                    <li>
                        <a href="http://git-scm.com/" target="_blank">Here </a> is the official site of GIT. A very detailed documentation is given on this site.
                    </li>
                    <li>
                        <a href="http://www.lynda.com/Git-tutorials/Git-Essential-Training/100222-2.html?srchtrk=index:1%0Alinktypeid:2%0Aq:Git%0Apage:1%0As:relevance%0Asa:true%0Aproducttypeid:2" target="_blank">Here </a> is a very good course by Lynda. <a href="http://1drv.ms/1A622E3" target="_blank">Here </a> are the related videos.
                    </li>
                </ol>

            </div>   <!-- end of GIT VCS Div -->

            <!-- for the Open Source Div -->
            <a href="#openDiv" class="scrolly" id="hiddenOpen"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain openSource" id="openDiv">
                <h1 class="page-header">
                    Open Source Contribution
                </h1>

                <ol>
                    <li>
                        Some resources listed <a href="https://openhatch.org/" target="_blank">Here</a> will help you get a head start into the world of open source. This website is made for the soul purpose to train people to start open source contribution, made with increasing the participation of students in Google Summer of Code
                    </li>
                    <li>
                        <a href="http://www.google-melange.com/gsoc/document/show/gsoc_program/google/gsoc2014/about_page" target="_blank">Here </a> is the official page for Google Summer of Code. Also, you can go through the projects accepted in the last edition of GSoc
                    </li>
                    <li>
                        It is essential to learn about Version Control Systems when starting with Open source contribution. Please check the <a class="redirectGIT" href="#">GIT(VCS) </a> tab to discover resources for learning GIT
                    </li>
                </ol>

            </div>   <!-- end of Open Source Div -->

            <!-- for the Networks Div -->
            <a href="#networkDiv" class="scrolly" id="hiddenNet"></a>
            <div class="col-lg-10 col-md-10 col-sm-9 divsMain network" id="networkDiv">
                <h1 class="page-header">
                    Computer Networks
                </h1>

                <ol>
                    <li>
                        <a href="https://www.coursera.org/course/comnetworks/" target="_blank" >Here </a> is the link to the Networks Course by the University of Washington - A Good course to start with.
                    </li>
                    <li>
                        <a href="2.	https://www.coursera.org/course/bigdata/" target="_blank">Here </a> is another course. It will good insights on networks as well as search engine related basic concepts.
                    </li>
                    <li>
                        Go and search basics in Wiki, every jargon U find in “Network and Sharing Center” in Windows and “Network Settings” in Linux.
                    </li>
                    <li>
                        Try to experiment more on your Network. Go and play with your router.
                    </li>
                    <li>
                        [Put link to PDFs]
                    </li>
                </ol>

                <h1 class="page-header">
                    Network Security
                </h1>

                <p class="text-muted">
                    First learn the fundamentals of Networks and then search the terms like SQL injection, XSRF, XSS, Cookie Injection and Phishing. If you will know fundamentals, you can carry out attack as well as you will learn defense. There are n number of tools out there which will help you in doing these things.
                </p>
                <p class="text-muted">
                    I would say, start from securing your own OS (Windows/Linux) and the go forward. People can trace you in couple of minutes if you are not aware of what is going on in Network.
                </p>

                <ol>
                    <li>
                        <a href="http://captf.com/practice-ctf/" target="_blank">Check </a> out this site. Its worth it!
                    </li>
                    <li>
                        <a href="http://www.shodanhq.com/" target="_blank">Here </a> is the live attacks related info
                    </li>
                    <li>
                        <a href="https://www.exploit-db.com/" target="_blank">Here </a> is some information on different types of exploits in networks
                    </li>
                    <li>
                        Follow <a href="https://www.owasp.org/" target="_blank">this site </a> to have more insights in security and exploits
                    </li>
                </ol>

            </div>   <!-- end of Networks Div -->

        </div>  <!-- end of main wrapper -->

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footerDiv">
            <div class="col-lg-4 col-md-4">
                <img src="img/cruxLogo.PNG" alt="Crux Logo" class="logoImg" />
            </div>
            <div class="col-lg-4 col-md-4">
                <ul class="quickLinks">
                    <%--<li>
                        <a href="#">Contact Us</a>
                    </li>--%>
                </ul>
                <ul class="list-inline social-buttons">
                    <li><a href="https://www.facebook.com/pages/CRUx-Programming-and-Computing-Club/166438876707986?fref=ts" target="_blank"><i class="fa fa-facebook"></i></a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-4">
                <ul class="quickLinks">
                   <li>
                        <a href="http://universe.bits-pilani.ac.in/" target="_blank">BITS-Pilani, Pilani Campus</a>
                    </li>
                    <li>
                        <a href="http://universe.bits-pilani.ac.in/Goa" target="_blank">BITS-Pilani, Goa Campus</a>
                    </li>
                    <li>
                        <a href="http://universe.bits-pilani.ac.in/hyderabad" target="_blank">BITS-Pilani, Hyderabad Campus</a>
                    </li>
                     <li>
                        <a href="http://universe.bits-pilani.ac.in/dubai" target="_blank">BITS-Pilani, Dubai Campus</a>
                    </li>
                </ul>        
            </div>
        </div>

        <!-- this is for the Linux modal. -->
        <div class="modal fade" id="linuxModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" oncontextmenu="return false">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="linuxModalTitle">Linux Resources - Explained</h4>
              </div>
              <div class="modal-body" id="linuxModalBody" style="font-family: writingText; font-size:1.2em;">
                <h3>
                    The Video Resources given in the <a href="http://1drv.ms/1A18TsZ" target="_blank">Link</a> have been divided into 3 folders. Each folder has a bunch of videos wherein Linux, from basic to advanced is taught.
                </h3>
                <ol>
                    <li>
                        <b>Folder 1: </b> To start with LPIC-101, you will learn regarding the hardware settings and how you come upto login screen starting from switching on your system, getting yourself introduced to linux terminal (bash shell), installing packages, softwares etc., monitoring the system (as in windows you can monitor the system from task manager, here monitoring the system from terminal) and finally you will learn about creating and managing partitions.
                        <br />
                    </li>
                    <li>
                        <b>Folder 2: </b> This is the tutorial for second level certification that is … LPIC-102. You will be learning setting up and configuring graphical user interface, managing Groups and User accounts, learning the fundamentals of Internet Protocols, configuring and troubleshooting basic Network.
                        <br />
                    </li>
                    <li>
                        <b>Folder 3: </b> "Linux In The Real World" as the name suggest you will get to know about how linux servers are used in different scenarios, mainly concentrated on configuration of different servers like DHCP, DNS, FTP, SSH, NFS, SAMBA, APACHE and at the end learning to troubleshoot system load and network errors.
                        <br />
                    </li>
                </ol>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>

    </form>

    <!-- for bootstrap CSS and JS files. Included here to improve the page load time -->
	<link type="text/css" href="BootStrap/css/bootstrap-theme.css" rel="stylesheet" />
	<link type="text/css" href="BootStrap/css/bootstrap.css" rel="stylesheet" />
	<script type="text/javascript" src="BootStrap/js/bootstrap.js"></script>

</body>
</html>
