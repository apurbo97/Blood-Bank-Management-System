<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="user_login" %>

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

    <div class="row" style="margin-top: 10em;">
    <div class="col-md-4">&nbsp;</div>
    <div class="col-md-4" style="    border-radius: 10px; padding: 25px; background-color: #e4e4e4;">
    <center><img src="../images/logo.png" alt="" style="margin: 15px auto; width : 15em;"></center>
    <form id="form1" runat="server" >
    <div class="form-group">
    <label>Username</label>
    <asp:TextBox ID="TextBox1" runat="server" class="form-control" required placeholder="Enter Username"></asp:TextBox>
    </div>
    <div class="form-group">
    <label>Password</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" required placeholder="Enter Password" TextMode="Password"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" class="btn btn-info" Width="100%" 
            Text="Login" onclick="Button1_Click" />
    </div>
    </form>
    </div>
    <div class="col-md-4">&nbsp;</div>
    </div>

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

