<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Revision.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <!DOCTYPE html>
       <html lang="en">
     <head>
    <title>How To Create</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">   
    <style>
        a {
    text-decoration: none;
}
.login-page {
    width: 100%;
    height: 100vh;
    display: inline-block;
    display: flex;
    align-items: center;
}
.form-right i {
    font-size: 100px;
}
    </style> 
 
</head>
<body>

    <div class="login-page bg-light" style="border:8px solid red">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                  <h3 class="mb-3" style="text-align:center; background-color:aqua;color:red; font-size:xx-large;">Login<span style="color:blue;">--Page</span></h3>
                    <div class="bg-white shadow rounded">
                        <div class="row">
                            <div class="col-md-7 pe-0">
                                <div class="form-left h-100 py-5 px-5">
                                    <div action="" class="row g-4">
                                            <div class="col-12">
                                                <label>Username<span class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
                                                    <input type="text" id="USERID" runat="server" class="form-control" placeholder="Enter Username">
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <label>Password<span class="text-danger">*</span></label>
                                                <div class="input-group">
                                                    <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
                                                    <input id="PASS" runat="server" type="text" class="form-control" placeholder="Enter Password">
                                                </div>
                                            </div>

                                            <div class="col-sm-6">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="inlineFormCheck">
                                                    <label class="form-check-label" for="inlineFormCheck">Remember me</label>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">
                                                <asp:LinkButton ID="frgbtn" runat="server" Text="Forgot Password?" href="ChangePass.aspx" class="float-end text-primary"></asp:LinkButton>
                                                <%--<a href="#" class="float-end text-primary">Forgot Password?</a>--%>
                                            </div>

                                            <div class="col-12">
                                                <asp:Button ID="lgbtn" runat="server" OnClick="lgbtn_Click" Text="Login" class="btn btn-primary px-4 float-end mt-4" />
                                                <%--<button  type="submit" class="btn btn-primary px-4 float-end mt-4">login
                                                </button>--%>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 ps-0 d-none d-md-block">
                                <div class="form-right h-100 bg-primary text-white text-center pt-5">
                                    <i class="bi bi-bootstrap"></i>
                                    <h2 class="fs-1">King Kohali </h2>
                                    <h2 class="fs-1">AB diviliers !!!</h2>
                                </div>
                            </div>
                        </div>
                    </div>
<%--                   <p class="text-end text-secondary mt-3">Bootstrap 5 Login Page Design</p>--%>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <!-- Bootstrap JS -->
     
</body>
</html>
</div>

</asp:Content>
