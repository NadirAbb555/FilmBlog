<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FilmBlog.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     

    <div style="margin-left: 105px; margin-top:50px ">
           <div>
     <form id="form1" runat="server">
         
       <div style="margin-bottom:50px">
             <table >
             <tr>
                 <td>
                     <asp:TextBox ID="txtSearch" runat="server" required="" Width="876px"></asp:TextBox></td>
                 <th> <asp:Button ID="Button1" runat="server" Text="Axtar" BackColor="#333333" ForeColor="Yellow" OnClick="Button1_Click"></asp:Button>
                 </th>
             </tr>
         </table>
           <div>
               <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           </div>
           </div>
         
        </div>
            <asp:Repeater ID="RepCatBlog" runat="server">
                <ItemTemplate>
                 
                     <div class="content-grid-info">
             <img src="<%# Eval("BLOGMEDIA") %>" alt="" style="width: 550px; height: 300px" />
             <div class="post-info">
                 <h4><a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><%# Eval("BLOGBASLIQ") %></a><%# Eval("BLOGTAARIX") %> </h4>
                
                 <a href="BlogInfo.aspx?BLOGID=<%#Eval("BLOGID") %>"><span></span>Davamını oxu</a>
             </div>
         </div>
                </ItemTemplate>
            </asp:Repeater>        
     </form>
          </div>
</asp:Content>
