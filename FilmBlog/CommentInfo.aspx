﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="CommentInfo.aspx.cs" Inherits="FilmBlog.CommentInfo" %>

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
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="RepBlog" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("BLOGMEDIA") %>" alt="" style="width: 550px; height: 300px" />
                                <br />
                                <h3 style="color: aqua"><%# Eval("BLOGBASLIQ") %> </h3>
                                <h4><%# Eval("BLOGTAARIX") %> </h4>
                                <p style="color: black">
                                    <%#Eval("BLOGCONTENT") %>
                                </p>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <asp:Repeater ID="RepComments" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">

                                <li>
                                    <img src="webTemplate/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p>
                                            <p style="font-weight: bolder; color: #ff6a00"><%# Eval("NIKNAME") %>:</p>
                                            <%# Eval("COMMENT") %>
                                        </p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="content-form">
                        <h3>Komment yazin</h3>
                        <form runat="server" class="table-bordered">
                            <div style="border: double">
                                <asp:TextBox ID="txtName" placeholder="Name" required="Bos qoymayin" runat="server"></asp:TextBox>
                            </div>
                            <div style="border: double">
                                <asp:TextBox ID="txtMail" placeholder="Email" required="Bos qoymayin" runat="server"></asp:TextBox>
                            </div>
                            <div style="border: double">
                                <asp:TextBox ID="txtComment" TextMode="MultiLine" placeholder="Comment" required="Bos qoymayin" runat="server"></asp:TextBox>
                            </div>
                            <div style="border: double">
                                <asp:TextBox ID="txtimgcode" placeholder="Zəhmət olmasa şəkildəki kodu daxil edin" required="Bos qoymayin"
                                    runat="server"></asp:TextBox>
                            </div>
                            <br />
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="True"
                                ForeColor="Red" Text=""></asp:Label>
                            <br />
                            <asp:Image ID="Image1"
                                runat="server" ImageUrl="~/CImage.aspx" />
                            <br />

                            <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Elave et" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
