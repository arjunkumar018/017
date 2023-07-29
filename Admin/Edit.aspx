<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Revision.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:5px solid red;">
    <h1 style="text-align:center; font-size:50px;">Edit <span style="color:dodgerblue;">Cource</span></h1>
        <hr  style="border:3px solid red"/>
   
         <center><asp:TextBox ID="Id" runat="server" Height="47px" Width="552px" placeholder=" Enter Cource Id"></asp:TextBox> <asp:Button ID="cource_id" runat="server" Text="view"  Height="47px" Width="50px" Onclick="cource_id_Click" /></center>         <br /><br />
        <center><asp:TextBox ID="Name" runat="server" Height="47px" Width="552px" placeholder="Cource Name"></asp:TextBox></center><br /><br />
        <center> <asp:TextBox ID="Description" runat="server"  Height="47px" Width="552px" placeholder="Description" ></asp:TextBox></center><br/><br/>
        <center> <asp:TextBox ID="Duration" runat="server" Height="47px" Width="552px" placeholder="Duration"></asp:TextBox></center><br/><br/>
        <center> <asp:TextBox ID="Price" runat="server"  Height="47px" Width="552px" placeholder="Price"></asp:TextBox></center><br/><br/>
        <center> <asp:FileUpload ID="Img" runat="server"  Height="47px" Width="552px" placeholder="Upload Image" /></center><br/><br/>
        <center> <asp:TextBox ID="Slug" runat="server"  Height="47px" Width="552px" placeholder="Slug"></asp:TextBox></center><br/><br/>
   
        <center> <asp:Button ID="Button2" runat="server" Text="Edit" Height="47px" Width="552px" OnClick="Button2_Click"  /></center>
        </div>
    <br />
    <br />
</asp:Content>
