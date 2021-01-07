<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FilmBlog.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="webTemplate/css/bootstrap.css" rel="stylesheet" />

    <link href="webTemplate/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--end slider -->
    <!--script-->
    <script src="webTemplate/js/move-top.js"></script>
    <script src="webTemplate/js/easing.js"></script>
    <!--/script-->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
            });
        });
    </script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <!---->
    <div class="content" style="margin-left: 105px">
        <div class="content-grids">
            <form id="form1" runat="server">

                <div class="col-md-8 content-main">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <table id="tbDetails" style="width: 100%; border-collapse: collapse;" cellpadding="5" cellspacing="0">
                                <tr style="background-color: lightgray; height: 30px; color: black; text-align: center"></tr>
                        </HeaderTemplate>
                        <ItemTemplate>

                            <tr>
                                <div class="content-grid">
                                    <div class="content-grid-info">
                                        <img src="<%# Eval("BLOGMEDIA") %>" alt="" style="width: 550px; height: 300px" />
                                        <div class="post-info">
                                            <h4><a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><%# Eval("BLOGBASLIQ") %></a><%# Eval("BLOGTAARIX") %>
                                                <i style='font-size: 24px' class='far'>&#xf4ad;</i>

                                            </h4>
                                            <p><%# Eval("BLOGCONTENT") %></p>

                                            <a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><span></span>Davamını oxu</a>
                                        </div>
                                    </div>
                                </div>
                            </tr>

                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>


                    <div style="text-align: center; margin-bottom: 6px">

                        <asp:Repeater ID="Repeater4" runat="server" OnItemCommand="Repeater4_ItemCommand">
                            <ItemTemplate>

                                <asp:LinkButton ID="lnkPage"
                                    Style="padding: 8px; margin: 2px; background: lightgray; border: solid 1px #666; color: black; font-weight: bold"
                                    CommandName="Page" CommandArgument="<%# Container.DataItem %>" runat="server" Font-Bold="True"><%# Container.DataItem %>  
                                </asp:LinkButton>

                            </ItemTemplate>
                        </asp:Repeater>
                        <br />
                    </div>
                </div>

                </form>


                <div style="margin-left: 20px" class="col-md-4 content-right">
            
                   
            
            <div class="recent" style="margin-top: 5px">
                <h3>SON PAYLAŞILANLAR</h3>
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li><a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><%#Eval("BLOGBASLIQ") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="comments">
                <h3>SON KOMMENTLƏR</h3>
                <ul>
                    <asp:Repeater ID="RepSonComment" runat="server">
                        <ItemTemplate>
                            <li><a href="CommentInfo.aspx?CMTBLOG=<%#Eval("CMTBLOG") %>"><%#Eval("NIKNAME") %> - <%#Eval("COMMENT") %></a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="archives">
                <h3>ARXİV</h3>
                <ul>
                    <li><a href="#">October 2013</a></li>
                    <li><a href="#">September 2013</a></li>
                    <li><a href="#">August 2013</a></li>
                    <li><a href="#">July 2013</a></li>
                </ul>
            </div>
            <div class="categories">
                <h3>KATEQORİYALAR</h3>
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li><a href="CategoryInfo.aspx?CATID=<%#Eval("CATID") %>"><%# Eval("CATNAME") %></a></a></li>

                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    </div>
     

</asp:Content>
