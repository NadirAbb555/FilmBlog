<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="CategoryInfo.aspx.cs" Inherits="FilmBlog.CategoryInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="margin-left: 105px; margin-top:50px ">
     <form id="form1" runat="server">
            <asp:Repeater ID="RepCatBlog" runat="server">
                <ItemTemplate>
                 
                     <div class="content-grid-info">
             <img src="<%# Eval("BLOGMEDIA") %>" alt="" style="width: 550px; height: 300px" />
             <div class="post-info">
                 <h4><a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><%# Eval("BLOGBASLIQ") %></a><%# Eval("BLOGTAARIX") %> </h4>
                 <p><%# Eval("BLOGCONTENT") %></p>
                 <a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><span></span>Davamını oxu</a>
             </div>
         </div>
                </ItemTemplate>
            </asp:Repeater>        
     </form>
          </div>

</asp:Content>
