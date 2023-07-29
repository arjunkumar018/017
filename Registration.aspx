<%@ Page Title="" Language="C#" MasterPageFile="~/UserPannel.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Revision.Registration" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="border:5px solid red;">

    <h1 style="text-align:center;color:dodgerblue; font-size:50px;">Registration <span style="color:aqua;"> Page</span></h1>
   <%-- <h1 style="text-align:center; font-size:50px;"> <span style="color:aquamarine;">Registeration</span></h1>--%>
   
  <center><asp:TextBox ID="Name" runat="server" Height="47px" Width="552px" placeholder="User Name"></asp:TextBox></center><br /><br />
   <center> <asp:TextBox ID="email" runat="server"  Height="47px" Width="552px" placeholder="Email"></asp:TextBox></center><br/><br/>
   <center> <asp:TextBox ID="phone" runat="server" Height="47px" Width="552px" placeholder="Phone no"></asp:TextBox></center><br/><br/>
<%--   <center> <asp:TextBox ID="Aadhar" runat="server"  Height="47px" Width="552px" placeholder="Aadhar Card"></asp:TextBox></center><br/><br/>--%>
   <center> <asp:TextBox ID="password" runat="server"  Height="47px" Width="552px" placeholder="Password"></asp:TextBox></center><br/><br/>
   <center> <asp:Button ID="Button1" runat="server" Text="Submit" Height="47px" Width="552px" BackColor="aquamarine" Onclick="Button1_Click" /></center>
        <br /><br />
        </div>
</asp:Content>
