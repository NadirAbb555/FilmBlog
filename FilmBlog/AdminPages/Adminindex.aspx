<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminindex.aspx.cs" Inherits="FilmBlog.AdminPages.Adminindex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!DOCTYPE html>
    <html>
    <head>

        <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
        <div style="margin-top: 5px">
            <a href="Category and Type/ACategoryIndex.aspx" runat="server" class="btn btn-dark">Category</a>
            <a href="Category and Type/ATypeIndex.aspx" runat="server" class="btn btn-dark" style="margin-left: 5px">Type</a>
            <a href="ABlogAdd.aspx" class="btn btn-dark" style="margin-left: 5px">Paylaşım əlavə et</a>
        </div>
        <form runat="server" style="margin-top: 15px">
            <div>
                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="grouplaceholder" ItemPlaceholderID="itemplaceholder" OnPagePropertiesChanging="ListView1_PagePropertiesChanging">
                    <LayoutTemplate>
                        <table class="table table-dark">
                            <tr>
                                <th>ID</th>
                                <th>Basliq</th>

                                <th>Tarix</th>
                                <th>Media</th>
                                <th>Tipi</th>
                                <th>Kateqoriya</th>

                            </tr>
                            <tr id="grouplaceholder" runat="server"></tr>
                            <tr>
                                <td colspan="11" style="text-align: center"></td>
                                <asp:DataPager ID="DataPage1" runat="server"
                                    PagedControlID="ListView1" PageSize="3">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Link"
                                            ShowFirstPageButton="true"
                                            ShowPreviousPageButton="true"
                                            ShowNextPageButton="false" />
                                        <asp:NumericPagerField ButtonType="Button" />
                                        <asp:NextPreviousPagerField ButtonType="Link"
                                            ShowLastPageButton="true"
                                            ShowNextPageButton="true"
                                            ShowPreviousPageButton="false" />
                                    </Fields>
                                </asp:DataPager>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr>
                            <tr id="itemplaceholder" runat="server"></tr>
                        </tr>
                    </GroupTemplate>

                    <%--   <asp:Repeater ID="RepBlog" runat="server">
                            <ItemTemplate>--%>
                    <ItemTemplate>
                        <td><%#Eval("BLOGID")%></td>
                        <td><%#Eval("BLOGBASLIQ")%></td>
                        <td><%#Eval("BLOGTAARIX")%></td>
                        <td><%#Eval("BLOGMEDIA")%></td>
                        <td><%#Eval("BLOGTYPE")%></td>
                        <td><%#Eval("BLOGCATEGORY")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "ABlogDelete.aspx?BLOGID="+ Eval("BLOGID") %>' runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "ABlogUpdate.aspx?BLOGID="+ Eval("BLOGID") %>' runat="server" CssClass="btn btn-primary">Update</asp:HyperLink>

                        </td>
                    </ItemTemplate>

                    <%--  </ItemTemplate>
                        </asp:Repeater>--%>
                </asp:ListView>
            </div>
           
                <asp:Button ID="Button1" BackColor="#282828" ForeColor="White" runat="server" Text="Logout" OnClick="Button1_Click" />
          
        </form>

    </body>
    </html>
</asp:Content>
