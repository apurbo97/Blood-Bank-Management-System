﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="iIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="description" content="html 5 template">
	<meta name="author" content="">
	<title>Blood Bank Management System</title>
	<!-- FAVICON -->
	<link rel="shortcut icon" type="image/x-icon" href="images/logo-title.png">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Asap:400,400i%7CRaleway:600,800" rel="stylesheet">
	<!-- FONT AWESOME -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Slider Revolution CSS Files -->
	<link rel="stylesheet" href="revolution/css/settings.css">
	<link rel="stylesheet" href="revolution/css/layers.css">
	<link rel="stylesheet" href="revolution/css/navigation.css">
	<!-- ARCHIVES CSS -->
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/lightcase.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/styles.css">
</head>

<body>
	<!-- START SECTION HEADINGS -->
	<div class="header">
		<div class="header-top">
			<div class="container" style="width: 75% !important;">
				<div class="top-info hidden-sm-down">
					<div class="call-header">
						<p><i class="fa fa-phone" aria-hidden="true"></i> +91 1800 XXX XXX</p>
					</div>
					<div class="mail-header">
						<p><i class="fa fa-envelope" aria-hidden="true"></i> support@bloodbank.gov.in</p>
					</div>
				</div>
				<div class="top-social hidden-sm-down">
					<div class="social-icons-header">
						<div class="social-icons">
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa fa-linkedin" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-bottom heading sticky-header" id="heading">
			<div class="container" style="width: 80% !important;">
				<!-- STAR MOBILE LOGO -->
				<a href="index.html" class="logo">
					<img src="images/logo.png" alt="businesspro">
				</a>
				<!-- END MOBILE LOGO -->
				<nav id="main-menu" class="collapse">
					<ul>
						
						<li><a href="index.aspx">Home</a></li>
						<li><a href="about.aspx">About us</a></li>
						<li><a href="admin/index.aspx" target="_blank">Admin</a></li>
						<li><a href="user/index.aspx" target="_blank">Camp Officer</a></li>
						<%--<li><a href="sales/index.aspx" target="_blank">Sales</a></li>--%>
						<li><a href="contact.aspx">Contact Us</a></li>
						
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<!-- START REVOLUTION SLIDER 5.0.7 -->
	<div id="rev_slider_home_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="news-gallery34" style="margin:0px auto;background-color:#ffffff;padding:0px;margin-top:0px;margin-bottom:0px;">
		<!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
		<div id="rev_slider_home" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
			<ul>
				<!-- SLIDE 1 -->
				<li data-index="rs-1" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default"
				 data-easeout="default" data-masterspeed="default" data-thumb="images/slider/slider-1.jpg" data-rotate="0"
				  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Make an Impact">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider-1.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
					 data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
					
				</li>

				<!-- SLIDE 2 -->
				<li data-index="rs-2" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="images/slider/slider-2.jpg" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Make an Impact">
					<!-- MAIN IMAGE -->
					<img src="images/slider/slider-2.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" 
					data-bgparallax="10" class="rev-slidebg" data-no-retina>
					
					
				</li>
			</ul>
			<div class="tp-bannertimer tp-bottom" style="height: 5px; background-color: rgba(3, 169, 245, 1.00);"></div>
		</div>
	</div>
	<!-- END REVOLUTION SLIDER -->
	<!-- END SECTION HEADINGS -->

	<!-- START SECTION INFO -->
	<section class="info-about text-center">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-6 cell cel-1">
					<img src="images/info/img-1.png" width="70" alt="">
					<h3>Donate Blood</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam quos aperiam ipsam modi dolor suscipit asperiores perspiciatis.</p>
					
					<div class="inf-btn">
						<a href="search-camp.aspx" class="btn btn-secondary">Click Here</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 cell cel-2">
					<img src="images/info/img-1.png" width="70" alt="">
					<h3>Need Blood</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam quos aperiam ipsam modi dolor suscipit asperiores perspiciatis.</p>
					
					<div class="inf-btn">
						<a href="search-blood.aspx" class="btn btn-2 btn-secondary">Click Here</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 cell cel-3">
					<img src="images/info/img-3.png" width="70" alt="">
					<h3>Generate Donor ID</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam quos aperiam ipsam modi dolor suscipit asperiores perspiciatis.</p>
					
					<div class="inf-btn">
						<a href="generate-id.aspx" class="btn btn-secondary">Click Here</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 cell cel-4">
					<img src="images/info/img-4.png" width="70" alt="">
					<h3>Send Request</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam quos aperiam ipsam modi dolor suscipit asperiores perspiciatis.</p>
					
					<div class="inf-btn">
						<a href="contact.aspx" class="btn btn-2 btn-secondary">Click Here</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END SECTION INFO -->

	<!-- START SECTION WELCOME -->
	<section class="welcome">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12 who-1">
					<div>
						<h2 class="text-left mb-4">Welcome To <span>Online Blood Bank</span></h2>
					</div>
					<div class="pftext">
						<p>Where you can get the details of available blood groups at your nearest location.</p>

						<p class="mb-4">What does this software do ??</p>

						<div class="about-list">
							<ul class="first-list">
								
								
								<li>Stock of blood for various groups in the various blood banks.</li>
								<li>Gives the details of the blood donation camps as shown below.</li>
								<li>Groupwise listing of various blood groups.</li>
								<li>Online submission of blood bank registration forms as shown below. </li>
							</ul>
							
						</div>
					</div>
					<div class="box bg-2">
						<a href="about.html" class="btn btn-primary btn-lg">Learn More...</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 col-xs-12">
					<div class="wprt-image-video w50">
						<img alt="image" src="images/video.jpg">
						<a class="icon-wrap popup-video popup-youtube" href="https://www.youtube.com/watch?v=obXjlquHlhE">
							<i class="fa fa-play" style="margin-top: 20px;"></i>
						</a>
						<div class="iq-waves">
							<div class="waves wave-1"></div>
							<div class="waves wave-2"></div>
							<div class="waves wave-3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END SECTION WELCOME -->


	<!-- START FOOTER -->
	<footer class="first-footer">
		<div class="second-footer">
			<div class="container">
				<p>Design & Developed by Team "teamname" </p>
				<ul class="netsocials">
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>
	</footer>

	<a data-scroll href="#heading" class="go-up"><i class="fa fa-angle-double-up" aria-hidden="true"></i></a>
	<!-- END FOOTER -->

	<!-- START PRELOADER -->
	<!-- <div id="preloader">
		<div id="status">
			<div class="status-mes"></div>
		</div>
	</div> -->
	<!-- END PRELOADER -->

	<!-- ARCHIVES JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/tether.min.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/transition.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/fitvids.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/smooth-scroll.min.js"></script>
	<script src="js/lightcase.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/ajaxchimp.min.js"></script>
	<script src="js/newsletter.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/forms-2.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbeBYsZSDkbIyfUkoIw1Rt38eRQOQQU0o"></script>
	<script src="js/map-single.js"></script>

	<!-- Slider Revolution scripts -->
	<script src="revolution/js/jquery.themepunch.tools.min.js"></script>
	<script src="revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script src="revolution/js/extensions/revolution.extension.video.min.js"></script>

	<!-- MAIN JS -->
	<script src="js/script.js"></script>

</body>

</html>
