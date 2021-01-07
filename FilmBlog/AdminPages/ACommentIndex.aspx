<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ACommentIndex.aspx.cs" Inherits="FilmBlog.AdminPages.ACommentIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" style="margin-top: 15px">
        <div>
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>NiCkNAME</th>
                    <th>EMAIL</th>
                    <th>COMMENT</th>
                    <th>CMTBLOG</th>
                </tr>
                <tbody>
                    <asp:Repeater ID="RepComment" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("CMTID")%></td>
                                <td><%#Eval("NIKNAME")%></td>
                                <td><%#Eval("MAIL")%></td>
                                <td><%#Eval("COMMENT")%></td>
                                <td><%#Eval("CMTBLOG")%></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" CssClass="btn btn-primary" NavigateUrl='<%#"AComUpdate.aspx?CMTID="+Eval("CMTID") %>' runat="server">Update</asp:HyperLink>
                                </td>
                                <td>
                                    <asp:HyperLink ID="HyperLink2" CssClass="btn btn-danger" NavigateUrl='<%#"AComDelete.aspx?CMTID="+ Eval("CMTID") %>' runat="server">Delete</asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</asp:Content>

