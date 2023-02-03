<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VoTanDat_TraCuuHoSo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            background-image:url(anh/meo.jpg);
            background-size:cover;
        }
        .card{
            width:20%;
            margin:auto;
            margin-top:10%;
            border-radius:10px;
        }
        .meo{
            padding:10% 0% 10% 0%;
        }
        .gradient-button {
        border:none;
        margin: 10px;
        font-size: 20px;
        padding: 14px;
        text-align: center;
        text-transform: uppercase;
        transition: 0.5s;
        background-size: 200% auto;
        color: #FFF;
        box-shadow: 0 0 20px #eee;
        width: 96%;
        box-shadow: 0 0px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        transition: all 0.3s cubic-bezier(.25,.8,.25,1);
        cursor: pointer;
        display: inline-block;
        border-radius: 40px;
        }
        .gradient-button:hover{
            box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
            margin: 8px 10px 12px;
            outline:none;
        }
        .gradient-button-3 {
            background-image: linear-gradient(to right, teal 0%, #7474BF 51% ,teal 100%)
        }
        .gradient-button-3:hover {
            background-position: right center;
        }
        .info-color {
            background-color: teal !important;
        }
        .form-control{
                    background-color:#eee !important;
                    border-radius : 30px !important;
                    padding:4% !important;
        }
        .card-header{
            border-radius:10px 10px 0px 0px !important;
        }
    </style>
</head>
<body>

    <div class="card">
        <h5 class="card-header info-color white-text text-center py-4 ">
            <strong style="font-size: 30px">Đăng Nhập</strong>
        </h5>
        <div class="card-body px-lg-5">
            <form class="text-center" style="color: #757575;" runat="server">
                <p class="mt-4" style="float: left; font-size: 14px; font-weight: 700; margin-left: 2%">Tên Đăng Nhập *</p>
                <div class="md-form">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                </div>
                <div class="md-form">
                    <p style="float: left; font-size: 14px; font-weight: 700; margin-left: 2%">Mật Khẩu *</p>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="  Pass" type="text" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
                </div>
                <div class="meo">
                    <asp:Button ID="Button2" runat="server" class="gradient-button gradient-button-3" Font-Size="Medium" Text="Đăng Nhập" OnClick="Button1_Click" /></div>
            </form>        
        </div>
    </div>
    
</body>
</html>
