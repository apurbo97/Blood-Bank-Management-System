<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create-sales-id.aspx.cs" Inherits="admin_create_sales_id" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blood Donation Management System </title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/logo-title.png">
    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin-home.aspx">Online Blood Bank Management System</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <!--<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>-->
                         <li><asp:Label ID="Label5" runat="server" Text="" ></asp:Label>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.aspx"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="admin-home.aspx"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="create-event.aspx"><i class="fa fa-edit fa-fw"></i> Create Events</a>
                        </li>
                        <li>
                            <a href="check-event.aspx"><i class="fa fa-table fa-fw"></i> Check Events</a>
                        </li>
                        <li>
                            <a href="donor-list.aspx"><i class="fa fa-table fa-fw"></i> Donor List</a>
                        </li>
                        <li>
                            <a href="blood-collection.aspx"><i class="fa fa-table fa-fw"></i> Blood Collection</a>
                        </li>
                        <li>
                            <a href="create-sales-id.aspx"><i class="fa fa-edit fa-fw"></i> Create Sales ID</a>
                        </li>
                        <li>
                            <a href="blood-sale.aspx"><i class="fa fa-table fa-fw"></i> Blood Sale</a>
                        </li>
                        <li>
                            <a href="contact-data.aspx"><i class="fa fa-table fa-fw"></i>Request from "Contact Us"</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Create Sales Login ID</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                
               <form id="Form1"  runat="server">
               <div class="col-md-6">
               
                    <div class="form-group">
                    <label>Name</label>
                        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Enter Name" required runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                    <label>Username</label>
                        <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter Usermane" required runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                   <div class="form-group">
                    <label>Password</label>
                        <asp:TextBox ID="TextBox9" class="form-control" placeholder="Password" required runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                        <div class="form-group">
                        <div >
                            <asp:Button ID="Button1" class="btn btn-success" Width="100%" runat="server" Text="Save" />
                        </div>
                        </div>
                        <div class="form-group" >
                            <button class="btn btn-info" style="width : 100%" type="reset">Clear</button>
                        </div>
                        
                        
                    
                    
               </div>
               
               </form>
            </div>
            
        </div>
        <!-- /#page-wrapper -->
   
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="vendor/raphael/raphael.min.js"></script>
    <script src="vendor/morrisjs/morris.min.js"></script>
    <script src="data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    
</body>

</html>


