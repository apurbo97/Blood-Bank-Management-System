<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user-home.aspx.cs" Inherits="user_home" %>

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
                            <a href="user-home.aspx"><i class="fa fa-dashboard fa-fw"></i> Home</a>
                        </li>
                        
                        <li>
                            <a href="check-details.aspx"><i class="fa fa-table fa-fw"></i> Check Details</a>
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
                    <h1 class="page-header">Donor Details Entry Form</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                
               <form id="Form1"  runat="server">
               <div class="col-md-6">
               
                    <div class="form-group">
                            <label>Donor ID</label>
                            <div class="row">
                                <div class="col-md-10">
                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Enter Doner ID"  runat="server"></asp:TextBox>
                                </div>
                                <div class="cl-md-2">
                                    <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Check" 
                                        onclick="Button2_Click" UseSubmitBehavior="False" />
                                </div>
                        </div>
                    </div>
                    <div class="form-group">
                    <label>Name</label>
                        <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter Doner Name" required runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                   
                   
                    <div class="form-group">
                    <label>Address</label>
                        <asp:TextBox ID="TextBox6" class="form-control" placeholder="Enter Doner Address" required runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    
                        <div class="form-group">
                        <div >
                            <asp:Button ID="Button1" class="btn btn-success" Width="100%" runat="server" 
                                Text="Save" onclick="Button1_Click" />
                        </div>
                        </div>
                        <div class="form-group" >
                            <button class="btn btn-info" style="width : 100%" type="reset">Clear</button>
                        </div>
                        
                    
                    
               </div>
              <div class="col-md-6">
               
                   
                    
                   <div class="form-group">
                    <label>Mobile</label>
                        <asp:TextBox ID="TextBox9" class="form-control" 
                           placeholder="Enter Mobile Number" required runat="server" TextMode="SingleLine" 
                           MaxLength="10"></asp:TextBox>
                    </div>
                    <div class="row">
                    
                    <div class="col-md-4">
                         <div class="form-group">
                    <label>Age</label>
                        <asp:TextBox ID="TextBox10" class="form-control" placeholder="Enter Doner Age" required runat="server" TextMode="SingleLine" MaxLength="2"></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                    <label>Weight</label>
                        <asp:TextBox ID="TextBox11" class="form-control" placeholder="Enter Doner Weight" required runat="server" TextMode="SingleLine" MaxLength="3" ></asp:TextBox>
                    </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                    <label>Unit of Blood</label>
                        <asp:TextBox ID="TextBox3" class="form-control" placeholder="Unit" required runat="server" TextMode="SingleLine"></asp:TextBox>
                    </div>
                    </div>
                    </div>
                  
                    
                    
                    <div class="form-group">
                    <label>Blood Group</label>
                         
                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                            <asp:ListItem value="Jamshedpur" selected="False">
                                Select
                            </asp:ListItem>
                            <asp:ListItem value="O+" selected="False">
                                O+
                            </asp:ListItem>
                            <asp:ListItem value="O-" selected="False">
                               O-
                            </asp:ListItem>
                            <asp:ListItem value="A+" selected="False">
                                A+
                            </asp:ListItem>
                            <asp:ListItem value="A-" selected="False">
                                A-
                            </asp:ListItem>
                            <asp:ListItem value="B+" selected="False">
                                B+
                            </asp:ListItem>
                            <asp:ListItem value="B-" selected="False">
                                B-
                            </asp:ListItem>
                            <asp:ListItem value="AB+" selected="False">
                                AB+
                            </asp:ListItem>
                            <asp:ListItem value="AB-" selected="False">
                                AB-
                            </asp:ListItem>
                        </asp:DropDownList>
                         
                    </div>
                    
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
                        
                  <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
                    
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


