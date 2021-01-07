<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ACatAdd.aspx.cs" Inherits="FilmBlog.AdminPages.Category_and_Type.ACatAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>Admin</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <h2>Add form</h2>
            <form runat="server" class="form-group">
                <div class="form-group">
                    <label style="font-weight: bolder">Category name:</label>
                    <asp:TextBox ID="txtCat" placeholder="Category" CssClass="form-control" runat="server"></asp:TextBox>
                </div>                
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="Əlavə et" OnClick="Button1_Click"  />            
            </form>
        </div>

    </body>
    </html>
</asp:Content>
