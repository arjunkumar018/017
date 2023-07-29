<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="AllChocklate.aspx.cs" Inherits="Revision.Admin.AllChocklate" %>
 <%@ import Namespace=" Revision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:6px solid red;">
        <br />
        <br />
   <h1 style="text-align:center; font-size:50px; background-color:aqua;">All <span style="color:dodgerblue;">Chocklate</span></h1>
        <hr style="border:4px double red;"/>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Chocklate id</th>
      <th scope="col">Chocklate Name</th>
      <th scope="col">Chocklate Des.</th>
      <th scope="col">Chocklate Dur.</th>
      <th scope="col">Chocklate Pr.</th>
      <th scope="col">Chocklate Im.</th>
      <th scope="col">Chocklate Slug</th>
      <th scope="col">Remove Chocklate</th>

    </tr>
  </thead>
        <%
            int sno=1;
             DbWork db= new DbWork();
            db.reader=db.getAllProduct();
            while (db.reader.Read())
            {

            
            
            %>
  <tbody>
    <tr>
      <th scope="row"><%= sno++ %></th>
      <td><%= db.reader["id"] %></td>
      <td><%= db.reader["cname"] %></td>
      <td><%= db.reader["codisc"] %></td>
      <td><%= db.reader["codura"] %></td>
      <td><%= db.reader["coprice"] %></td>
     
        <td><img style="height:150px; width:150px;" src='/Admin/img/Arjun/<%= db.reader["coimg"] %> '/></td>
        

      <td><%= db.reader["slug"] %></td>
        <td><a href="Delete.aspx?id=<%= db.reader["id"] %>">Remove</a></td>
        <br/>
    </tr>
    
  </tbody>
        <%  } %>
</table>
</div>
<br />
        <br />
</asp:Content>
