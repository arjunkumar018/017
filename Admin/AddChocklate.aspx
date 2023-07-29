<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="AddChocklate.aspx.cs" Inherits="Revision.Admin.AddChocklate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="border:6px solid red;">
        <h1 style="text-align:center;background-color:aqua;color:red;">ADD<span style="color:chocolate;">Chocklate</span></h1>
        <br />
        <br />
        <div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">@</span>
  <input Id="Coname" runat="server" type="text" class="form-control" placeholder="Cource-Name" aria-label="Cource-Name" aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <input Id="Codisc" runat="server" type="text" class="form-control" placeholder="Cource-Discription" aria-label="Cource-Discription" aria-describedby="basic-addon2">
  <span class="input-group-text" id="basic-addon2">@example.com</span>
</div>

<label for="basic-url" class="form-label">Your vanity URL</label>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon3">Cource-Duration</span>
  <input Id="Codura" runat="server" type="text" class="form-control" aria-describedby="basic-addon3">
</div>

<div class="input-group mb-3">
  <span class="input-group-text">$</span>
  <input id="Coprice" runat="server" type="text" placeholder="Cource-Price" class="form-control" aria-label="Amount (to the nearest dollar)">
  <span class="input-group-text">.00</span>
</div>

        
<div class="input-group mb-3">
        <asp:FileUpload ID="FileUpload1" runat="server"  placeholder="image" Height="38px" Width="518px"/>

<%--  <input type="text" class="form-control" placeholder="Username" aria-label="Username">--%>
  <%--<span class="input-group-text">@</span>
  <input type="text" class="form-control" placeholder="Server" aria-label="Server">--%>
</div>

<div class="input-group">
      <input  Id="slugg" runat="server" type="text" placeholder="Slug" class="form-control" aria-label="Amount (to the nearest dollar)">

  <%--<span class="input-group-text">With textarea</span>
  <textarea class="form-control" aria-label="With textarea"></textarea>--%>
    <br />
    <br />
</div>
      <%-- <button type="button" class="btn btn-primary">Primary</button>--%>
        <asp:Button Id="Addbtn" runat="server" Text="AddCource" type="button" class="btn btn-primary" OnClick="Addbtn_Click"/>
    </div>
     <br />
        <br />
        <br />
</asp:Content>
