<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ATypeIndex.aspx.cs" Inherits="FilmBlog.AdminPages.Category_and_Type.ATypeIndex" %>

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
                        <th>Id</th>
                        <th>Name</th>
                    </tr>
                    <tbody>
                        <asp:Repeater ID="RepType" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("TYPEID") %></td>
                                    <td><%#Eval("TYPENAME") %></td>
                                    <td>
                                         <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "ATypeUpdate.aspx?TYPEID="+ Eval("TYPEID") %>' CssClass="btn btn-primary" runat="server">Update</asp:HyperLink>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "ATypeDelete.aspx?TYPEID="+ Eval("TYPEID") %>' CssClass="btn btn-danger" runat="server">Delete</asp:HyperLink>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
            <a href="ATypeAdd.aspx" class="btn btn-primary" style="margin-left: 1245px">Əlavə Et</a>
        </form>
    </body>
    </html>
</asp:Content>
