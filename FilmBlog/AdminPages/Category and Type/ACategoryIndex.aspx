<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ACategoryIndex.aspx.cs" Inherits="FilmBlog.AdminPages.Category_and_Type.ACategoryIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!DOCTYPE html>
    <html>
    <head>

        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body style="background-color: #754f4f">


        <form runat="server" style="margin-top: 15px">
            <div>
                <table class="table table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                    </tr>
                    <tbody>
                        <asp:Repeater ID="RepCat" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("CATID")%></td>
                                    <td><%#Eval("CATNAME")%></td>
                                    <td>
                                        
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "ACatUpdate.aspx?CATID="+Eval("CATID") %>' CssClass="btn btn-primary" runat="server">Update</asp:HyperLink>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink2" CssClass="btn btn-danger" NavigateUrl='<%#"ACatDelete.aspx?CATID="+Eval("CATID") %>' runat="server">Delete</asp:HyperLink>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <a href="ACatAdd.aspx" class="btn btn-dark" style="margin-left: 1245px">Əlavə et</a>
        </form>
    </body>
    </html>
</asp:Content>
