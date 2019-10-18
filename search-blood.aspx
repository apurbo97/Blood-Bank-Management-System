<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search-blood.aspx.cs" Inherits="search_blood" %>

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
        <br /><br /><br />
	    <center><h1>Search Blood</h1></center>
        <br /><br /><br />
    
    
    <div class="row">
        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-6">
        <form id="form1" runat="server">
            <div class="form-group">
                    <label>Location</label>
                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                             <asp:ListItem value="Jamshedpur" selected="False">
                                Select Location
                            </asp:ListItem>
                            <asp:ListItem value="Jamshedpur" selected="False">
                                Jamshedpur
                            </asp:ListItem>
                            <asp:ListItem value="Ranchi" selected="False">
                                Ranchi
                            </asp:ListItem>
                            <asp:ListItem value="Dhanbad" selected="False">
                                Dhanbad
                            </asp:ListItem>
                            <asp:ListItem value="Bokaro" selected="False">
                                Bokaro
                            </asp:ListItem>
                            <asp:ListItem value="Chaibasa" selected="False">
                                Chaibasa
                            </asp:ListItem>
                        </asp:DropDownList>
                    </div>
            <div class="form-group">
                
                         
                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem value="Jamshedpur" selected="False">
                                Select Blood Group
                            </asp:ListItem>
                            <asp:ListItem value="O+"  selected="False">
                                O+
                            </asp:ListItem>
                            <asp:ListItem value="O-" selected="False">
                               O-
                            </asp:ListItem>
                            <asp:ListItem value="A+" selected="False">
                                A+
                            </asp:ListItem>
                            <asp:ListItem value=" A-" selected="False">
                                A-
                            </asp:ListItem>
                            <asp:ListItem value="B+" selected="False">
                                B+
                            </asp:ListItem>
                            <asp:ListItem value=" B-" selected="False">
                                B-
                            </asp:ListItem>
                            <asp:ListItem value=" AB+" selected="False">
                                AB+
                            </asp:ListItem>
                            <asp:ListItem value=" AB-" selected="False">
                                AB-
                            </asp:ListItem>
                        </asp:DropDownList>
            </div>
            <div class="form-group">
                <center><asp:Button ID="Button1" class="btn btn-success"  Width="80%" runat="server" 
                        Text="Search" onclick="Button1_Click" /></center>
            </div>
            
        </form> 
                            <table class="table table-striped table-bordered" >
                                <thead>
                                    <tr>
                                        <th>Sl no.</th>
                                        <th>Location</th>
                                        <th>Blood Group</th>
                                        <th>Unit Available</th>
                                        <th>Action</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        if (htmlStr == "")
                                        {
                                            Response.Write("<tr><td colspan='5'>No Data Found <a href='contact.aspx' class='btn btn-warning'>Contact Us</a></td></td></tr>");
                                        }
                                        else
                                        {
                                            Response.Write(htmlStr);
                                        }
                                        %>
                                </tbody>
                            </table> 
        </div>
        <div class="col-md-3">&nbsp;</div>
        
    </div>
    
    	 <br /><br /><br />


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

