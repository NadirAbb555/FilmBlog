<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Statistika.aspx.cs" Inherits="FilmBlog.AdminPages.Statistika" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!DOCTYPE html>
    <html>
    <head>

        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>


        <form runat="server" style="margin-top: 15px">
            <table class="table table-dark">
                <tr>
                    <th>
                       <label style="color:#d5ff00;font-weight:bolder">
                           Bütün paylaşımlar: 
                       </label>
                        <asp:Label ID="lblShare" runat="server" Text="0"></asp:Label>

                    </th>
                     <th>
                       <label style="color:#d5ff00;font-weight:bolder">
                           Bütün kommentlər: 
                       </label>
                        <asp:Label ID="lblComm" runat="server" Text="0"></asp:Label>

                    </th>
                    <th>
                        <label style="color:#d5ff00;font-weight:bolder">
                           Bütün filmlər: 
                       </label>
                        <asp:Label ID="lblFilms" runat="server" Text="0"></asp:Label>

                    </th>
                </tr>

                 <tr>
                    <th>
                       <label style="color:#d5ff00;font-weight:bolder">
                           Ən çox komment yazılan paylaşım: 
                       </label>
                        <asp:Label ID="lblShareCom" runat="server" Text="0"></asp:Label>

                    </th>
                     
                    
                </tr>
            </table>
        </form>

    </body>
    </html>
</asp:Content>
