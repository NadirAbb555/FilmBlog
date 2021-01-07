<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Elaqe.aspx.cs" Inherits="FilmBlog.Elaqe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE HTML>
    <html>
    <head>
        <title>Contact</title>
        <link href="webTemplate/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="webTemplate/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="webTemplate/js/move-top.js"></script>
        <script type="text/javascript" src="webTemplate/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->
        <style type="text/css">
            #header {
                width: 100%;
                background-color: red;
                height: 30px;
            }

            #container {
                width: 300px;
                background-color: #ffcc33;
                margin: auto;
            }

            #first {
                width: 100px;
                float: left;
                height: 300px;
                background-color: blue;
            }

            #second {
                width: 200px;
                float: left;
                height: 300px;
                background-color: green;
            }

            #clear {
                clear: both;
            }
        </style>

    </head>
    <body>
        <!--/header-->
        <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>CONTACT</h2>
                </div>
                <div class="contact-details">
                    <form runat="server" style="font-weight: 100">

                        <div style="width: 1150px;">

                            <div style="width: 518px; background-color: aqua; float: left; height: 46px;">
                                <asp:TextBox ID="txtName" placeholder="Ad Soyad" runat="server" Font-Bold="True" ForeColor="Black" Width="518px"></asp:TextBox>
                            </div>

                            <div style="width: 518px; background-color: brown; float: right; margin-left: 20px; height: 48px;">
                                <asp:TextBox ID="txtMail" placeholder="Email" runat="server" Font-Bold="True" ForeColor="Black" Width="547px"></asp:TextBox>
                            </div>

                            <br />

                            <div style="width: 518px; background-color: aqua; float: left; height: 46px; margin-top: 20px">
                                <asp:TextBox ID="txtTel" placeholder="Mob" runat="server" Font-Bold="True" ForeColor="Black" Width="518px"></asp:TextBox>
                            </div>
                            <div style="width: 518px; background-color: brown; float: right; margin-left: 20px; height: 48px; margin-top: 20px">
                                <asp:TextBox ID="txtimgcode" placeholder="Zəhmət olmasa şəkildəki kodu daxil edin" required="Bos qoymayin"
                                    runat="server" Font-Bold="True" ForeColor="Black" Width="536px"></asp:TextBox>

                                <br />
                                <asp:Label ID="lblmsg" runat="server" Font-Bold="True"
                                    ForeColor="Red" Text=""></asp:Label>
                                <br />
                                <asp:Image ID="Image1"
                                    runat="server" ImageUrl="~/CImage.aspx" />
                                <br />
                            </div>

                            <br />

                            <div style="width: 518px; background-color: aqua; float: left; height: 46px; margin-top: 20px">
                                <asp:TextBox ID="txtMovzu" placeholder="Movzu" runat="server" Font-Bold="True" ForeColor="Black" Width="519px"></asp:TextBox>
                            </div>

                        </div>
                        <div style="clear: both;">

                            <div style="width: 518px; background-color: aqua; float: left; height: 58px; margin-top: 20px">
                                <asp:TextBox ID="txtMsg" placeholder="Mesaj" TextMode="MultiLine" runat="server" Font-Bold="True" ForeColor="Black" Height="105px" Width="520px"></asp:TextBox>

                                <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Elave et" OnClick="Button1_Click" />
                            </div>

                        </div>
                        <br>
                    </form>
                </div>
                <hr />
                <div style="margin-top: 190px" class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>FIND US HERE</h4>
                        <div class="mapouter">
                            <div class="gmap_canvas">
                                <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=baku&t=&z=11&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            </div>
                            <style>
                                .mapouter {
                                    position: relative;
                                    text-align: right;
                                    height: 500px;
                                    width: 600px;
                                }

                                .gmap_canvas {
                                    overflow: hidden;
                                    background: none !important;
                                    height: 500px;
                                    width: 600px;
                                }
                            </style>
                        </div>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>Elaqe</h4>
                        <p>Baki</p>
                        <p>Mob:(+994)51 364 47 22</p>
                        <p>Email: <a href="mailto:nadirabbasov0@gmail.com">nadirabbasov0@gmail.com</a></p>
                        <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
