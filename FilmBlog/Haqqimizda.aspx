<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Haqqimizda.aspx.cs" Inherits="FilmBlog.Haqqimizda" %>

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
        <title>Haqqimizda</title>
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

    </head>
    <body>
        <!--/header-->
        <div class="about-content">
            <div class="container">
                <h2>HAQQIMIZDA</h2>
                <div class="about-section">
                    <div class="about-grid">
                        <asp:Repeater ID="RepHaqqimizda" runat="server">
                            <ItemTemplate>
                                
                                <p><%#Eval("ACIQLAMA") %></p>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="man-pic" >
                        <img src="webTemplate/images/man.jpg" alt="" />
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>

    </body>
    </html>
</asp:Content>
