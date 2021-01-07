<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AHqqIndex.aspx.cs" Inherits="FilmBlog.AdminPages.AHqqIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <form runat="server" style="margin-top: 15px">
        <div>
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>Aciqlama</th>
                </tr>
                <tbody>
                    <asp:Repeater ID="RepHqq" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("ID") %></td>
                                <td><%#Eval("ACIQLAMA") %></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "AHqqUpdate.aspx?ID="+Eval("ID")%>' CssClass="btn btn-primary" runat="server">Update</asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</asp:Content>
