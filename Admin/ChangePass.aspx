<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="Revision.Admin.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<%--    <form id="form1" runat="server" style="border:7px solid red; background-color:chartreuse;">--%>
    <div  style="border:7px solid red; /*background-color:chartreuse*/;">
        <h1 style="text-align:center;background-color:aqua;color:red;">Change--<span style="color:gold;">Password</span></h1>
        <center>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-size: x-large; color: #0000FF;">Old Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="OldPass" runat="server" placeholder="Please Here Enter Your Old Password" Height="41px" Width="356px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-size:x-large; color:#0000FF;">New Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="NewPass" runat="server" placeholder="Please Enter Your New Password....." Height="41px" Width="356px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-size:x-large;color:#0000FF;">ConfPassword:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="ConfPass" runat="server" placeholder="Plaese Enter Your Conferm Password" Height="41px" Width="356px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="NewPass" ControlToValidate="ConfPass" ErrorMessage="NewPassword or ConfPassword Did'n match" ForeColor="#FF3300" Type="String"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button  ID="changebtn" runat="server" Text="Reset-Password" Height="41px" OnClick="changebtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">
                    <asp:LinkButton ID="go" runat="server" Text="GoToLoginPage" href="Login.aspx" Height="30px"></asp:LinkButton>   
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
            </center>
</div>
    <br />
    <br />

</asp:Content>
