﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print-bill.aspx.cs" Inherits="user_print_bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Online Blood Bank Management System</title>
    <link rel="stylesheet" href="../css/bootstrap1.css">
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>

<body>
    <div class="invoice-box" id="id-of-the-printable-div">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="../images/logo.png" style="width:100%; max-width:300px;">
                            </td>
                            
                            <td>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                Address of Blood Bank<br>
                                XXXXX XXXXX XXX<br>
                                XXXXX XXXXX XXX
                            </td>
                            
                            <td>
                               Donor ID : 00<asp:Label ID="lb_did" runat="server" Text=""></asp:Label><br>
                               Date : 
                                <asp:Label ID="lb_date" runat="server" Text=""></asp:Label><br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                   Name :
                </td>
                
                <td>
                    <asp:Label ID="lb_name" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
            <tr class="details">
                <td>
                    Address
                </td>
                
                <td>
                     <asp:Label ID="lb_addr" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="item">
                <td>
                   Mobile:
                </td>
                
                <td>
                    <asp:Label ID="lb_mob" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
            <tr class="heading">
                <td>
                   Information
                </td>
                <td>
                  &nbsp
                </td>
                
            </tr>
            <tr class="item">
                
                <td>
                    Blood Group:
                </td>
                
                <td>
                    <asp:Label ID="lb_bg" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="item">
                
                <td>
                   Unit of Blood Donated: &nbsp;&nbsp;  &nbsp;
                </td>
                
                <td>
                    <asp:Label ID="lb_unit" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
            
             
            <tr class="total">
                <td></td>
                
                <td>
                  Thankyou... You Saved three life..
                </td>
            </tr>
        </table>
    </div>
    <script type = "text/javascript">
    
        function PrintPanel() {
            var panel = document.getElementById("id-of-the-printable-div");
            var printWindow = window.open('', '', 'height=800,width=1080');
            printWindow.document.write('<html><head><title>Online Blood Bank Management System</title><link rel="stylesheet" href="../css/bootstrap1.css">');
            //printWindow.document.write("<style>.invoice-box{max-width: 800px; margin: auto; padding: 30px; border: 1px solid #eee; box-shadow: 0 0 10px rgba(0, 0, 0, .15); font-size: 16px; line-height: 24px; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif; color: #555;}.invoice-box table{width: 100%; line-height: inherit; text-align: left;}.invoice-box table td{padding: 5px; vertical-align: top;}.invoice-box table tr td:nth-child(2){text-align: right;}.invoice-box table tr.top table td{padding-bottom: 20px;}.invoice-box table tr.top table td.title{font-size: 45px; line-height: 45px; color: #333;}.invoice-box table tr.information table td{padding-bottom: 40px;}.invoice-box table tr.heading td{background: #eee; border-bottom: 1px solid #ddd; font-weight: bold;}.invoice-box table tr.details td{padding-bottom: 20px;}.invoice-box table tr.item td{border-bottom: 1px solid #eee;}.invoice-box table tr.item.last td{border-bottom: none;}.invoice-box table tr.total td:nth-child(2){border-top: 2px solid #eee; font-weight: bold;}@media only screen and (max-width: 600px){.invoice-box table tr.top table td{width: 100%; display: block; text-align: center;}.invoice-box table tr.information table td{width: 100%; display: block; text-align: center;}}/** RTL **/ .rtl{direction: rtl; font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;}.rtl table{text-align: right;}.rtl table tr td:nth-child(2){text-align: left;}</style>");
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
       
    </script>
    <br />
    <center><input type="submit" name="btnPrint" class="btn btn-info" value="Print" onclick="return PrintPanel();" id="btnPrint" /></center>
    
    
</body>
</html>