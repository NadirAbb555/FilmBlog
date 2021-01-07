<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AMsgIndex.aspx.cs" Inherits="FilmBlog.AdminPages.AMsgIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" style="margin-top: 15px">
        <div>
            <table class="table table-dark">
                <tr>
                    <th>ID</th>
                    <th>AD SOYAD</th>
                    <th>EMAIL</th>
                    <th>TELEFON</th>
                    <th>MÖVZU</th>
                    <th>MESAJ</th>
                </tr>
                <tbody>
                  <asp:Repeater ID="RepMsj" runat="server">
                      <ItemTemplate>
                            <tr>
                        <td><%#Eval("MSJID")%></td>
                        <td><%#Eval("NAMESURNAME")%></td>
                        <td><%#Eval("MAIL")%></td>
                        <td><%#Eval("TELEFON")%></td>
                        <td><%#Eval("MOVZU")%></td>
                        <td><%#Eval("MESAJ")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-primary" NavigateUrl='<%#"AMsgUpdate.aspx?MSJID="+Eval("MSJID")%>' runat="server">Update</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" CssClass="btn btn-danger" NavigateUrl='<%#"AMsgDelete.aspx?MSJID="+Eval("MSJID") %>' runat="server">Delete</asp:HyperLink>
                        </td>
                    </tr>
                      </ItemTemplate>
                  </asp:Repeater>

                </tbody>
            </table>

        </div>

    </form>

</asp:Content>
