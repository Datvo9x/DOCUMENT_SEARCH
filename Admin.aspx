<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="VoTanDat_TraCuuHoSo.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet" />
    <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
    <link rel="stylesheet" href="plugins/icon-kit/dist/css/iconkit.min.css" />
    <link rel="stylesheet" href="plugins/ionicons/dist/css/ionicons.min.css" />
    <link rel="stylesheet" href="plugins/perfect-scrollbar/css/perfect-scrollbar.css" />
    <link rel="stylesheet" href="plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/build/css/tempusdominus-bootstrap-4.min.css" />
    <link rel="stylesheet" href="plugins/weather-icons/css/weather-icons.min.css" />
    <link rel="stylesheet" href="plugins/c3/c3.min.css" />
    <link rel="stylesheet" href="plugins/owl.carousel/dist/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="plugins/owl.carousel/dist/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="dist/css/theme.min.css" />
    <link rel="stylesheet" href="css/Style.css" />
    <script src="src/js/vendor/modernizr-2.8.3.min.js"></script>
    <style>
        .modal-footer .btn-primary{
    border-radius: 5px !important;
    background-color: teal !important;
    border: 1px solid #17efa7 !important;
}
        .table {
            width: 100%;
            margin-top: 10px;
            margin-left: auto;
            margin-right: auto;
        }

            .table .btn-primary {
                background-color: #188d8d !important;
                border: 1px solid #00ffff !important;
            }

            .table td {
                border: solid 1px white;
                font-size: 14px;
                font-weight: 700;
            }

            .table th {
                border: solid 1px white;
                font-size: 16px;
                font-weight: 700;
            }

        .btn-outline-danger {
            border-radius: 30px !important;
        }

        .collapse {
            border: solid 1px #d7cbcb;
            border-radius: 5px !important;
        }

            .collapse .form-control {
                border: solid 1px #d7cbcb;
                ;
            }

        .form-control:hover {
            border: 1px solid #808080;
            transform: scale(1.0) !important;
        }

        .collapse .form-control:hover {
            border: 1px solid #808080;
            transform: scale(1.0) !important;
        }

        .btn-primary {
            border: 1px solid #00ffff !important;
        }

        .btn-info {
            border-radius: 15px;
        }

        .btn-danger {
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  >
        <div class="wrapper">
            <header class="header-top">
                <div class="container-fluid">
                    <div class="d-flex justify-content-between">
                        <div class="top-menu d-flex align-items-center">
                            <button type="button" class="btn-icon mobile-nav-toggle d-lg-none"><span></span></button>
                            <div class="header-search">
                                <div class="row">
                                    <div class="col-auto">
                                        <asp:TextBox ID="TextBox90" runat="server" class="form-control" type="text" placeholder="Nhập nội dung"></asp:TextBox>
                                    </div>
                                    <div class="col-auto">
                                        <asp:Button ID="Button91" runat="server" Text="Tìm kiếm" Width="100px" Height="35px" CssClass="btn-primary"/>
                                    </div>
                                    <div class="col-auto">
                                        <asp:Button ID="Button92" runat="server" Text="Làm Mới" Width="100px" Height="35px" CssClass="btn-primary" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="top-menu d-flex align-items-center">
                            <button type="button" id="navbar-fullscreen" class="nav-link"><i class="ik ik-maximize"></i></button>
                            <div class="dropdown">
                                <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <img class="avatar" src="img/user.jpg" alt="" /></a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="Login.aspx"><i class="ik ik-power dropdown-icon"></i>Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div class="page-wrap">
                <div class="app-sidebar colored">
                    <div class="sidebar-header">
                        <a class="header-brand" href="Home.aspx">
                            <div class="logo-img">
                                <i class="fas fa-user-shield header-brand-img"></i>
                            </div>
                            <span class="text">ADMIN</span>
                            <span class="text" style="font-size: 14px">login</span>
                        </a>
                        <button type="button" class="nav-toggle"><i data-toggle="expanded" class="ik ik-toggle-right toggle-icon"></i></button>
                        <button id="sidebarClose" class="nav-close"><i class="ik ik-x"></i></button>
                    </div>

                    <div class="sidebar-content">
                        <div class="nav-container">
                            <nav id="main-menu-navigation" class="navigation-main">
                                <div class="nav-lavel">Navigation</div>
                                <div class="nav-item active">
                                    <a href="Admin.aspx"><i class="ik ik-home"></i><span>Home</span></a>
                                </div>
                                    
                                <div class="nav-lavel">Danh Mục</div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-box"></i><span>Chi Nhánh</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/alerts.html" class="menu-item">Alerts</a>
                                        <a href="pages/ui/badges.html" class="menu-item">Badges</a>
                                        <a href="pages/ui/buttons.html" class="menu-item">Buttons</a>
                                        <a href="pages/ui/navigation.html" class="menu-item">Navigation</a>
                                    </div>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-package"></i><span>Phòng Ban</span> <!--<span class="badge badge-success">New</span> --></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/modals.html" class="menu-item">Modals</a>
                                        <a href="pages/ui/notifications.html" class="menu-item">Notifications</a>
                                        <a href="pages/ui/carousel.html" class="menu-item">Slider</a>
                                        <a href="pages/ui/range-slider.html" class="menu-item">Range Slider</a>
                                        <a href="pages/ui/rating.html" class="menu-item">Rating</a>
                                    </div>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-user"></i><span>Nhân Viên</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/session-timeout.html" class="menu-item">Session Timeout</a>
                                    </div>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-database"></i><span>Hồ Sơ</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/session-timeout.html" class="menu-item">Session Timeout</a>
                                    </div>
                                </div>
                                <div class="nav-lavel">Forms</div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-"></i><span>Administrator</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/form-components.html" class="menu-item">Components</a>
                                        <a href="pages/form-addon.html" class="menu-item">Add-On</a>
                                        <a href="pages/form-advance.html" class="menu-item">Advance</a>
                                    </div>
                                </div>
                                <div class="nav-item">
                                    <a href="pages/form-picker.html"><i class="ik ik-terminal"></i><span>Form Picker</span> <span class="badge badge-success">New</span></a>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
                <!--Thong tin ho so -->
                <div class="main-content">
                    <div class="container-fluid">
                        <div class="row mt-3 mb-3">
                    <!--col -->
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="white-box p-3" style="background: #ffffff">
                                    <div class="col-in row p-3">
                                        <div class="col-md-6 col-sm-6 col-xs-6"> 
                                            <i data-icon="E" class="linea-icon linea-basic"></i>
                                            <h4 class="text-muted vb"><b>Đã Xử Lý</b></h4>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-6">
                                            <h3 class="counter text-right m-t-15 text-primary">
                                                 <asp:Label ID="tths1" runat="server" Text="Label"></asp:Label>                                               
                                            </h3>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 mt-2">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                    <span class="sr-only">40% Complete (success)</span> </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <!-- /.col -->
                        <!--col -->
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="white-box p-3" style="background: #ffffff;">
                                <div class="col-in row p-3">                                  
                                    <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
                                        <h4 class="text-muted vb"><b>Đang Xử Lý</b></h4>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <h3 class="counter text-right m-t-15 text-primary">
                                            <asp:Label ID="tths2" runat="server" Text="Label"></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 mt-2">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-megna" role="progressbar"
                                                aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.col -->
                        <!--col -->
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="white-box p-3" style="background: #ffffff;">
                                <div class="col-in row p-3">
                                    <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
                                        <h4 class="text-muted vb"><b>Chưa Xử Lý</b></h4>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                        <h3 class="counter text-right m-t-15 text-primary">
                                            <asp:Label ID="tths3" runat="server" Text="Label"></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 mt-2">
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- /.col -->
                </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-lg-12 col-md-12">
                                                <h4 class="card-title" style="font-size: 35px; font-weight: 700">Quản Lý Tài Khoản</h4>
                                                <hr/>
                                                <div class="btn_chucnang" style="padding-top: 1%">
                                                    <div class="row pt-2 pb-2">
                                                        <div class="col-5">
                                                            <a style="height: 40px; font-size: 16px" href="#boxthem" class="btn btn-primary mr-2" aria-expanded="false" data-toggle="collapse">Thêm Tài Khoản</a>
                                                            <a style="height: 40px; font-size: 16px" href="#boxsua" class="btn btn-primary mr-2" aria-expanded="false" data-toggle="collapse">Sửa Tài Khoản</a>

                                                            <div class="btn-group dropright" style="position: relative;">
                                                                <button type="button" style="width: 125px; height: 40px" class="btn btn-outline-danger  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    Xóa Tài Khoản
                                                                </button>
                                                                <div class="dropdown-menu dd-menu">
                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <asp:TextBox CssClass="form-control " ID="TextBox_Xoa" Width="160px" runat="server" placeholder="Nhập ID muốn xóa!"></asp:TextBox>
                                                                        </div>
                                                                        <div class="col-6">
                                                                            <div style="margin-left: 80px">
                                                                                <asp:Button CssClass="btn btn-danger" ID="Button_Xoa" runat="server" Text="Xóa" OnClick="Button_Xoa_Click"/>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-7">
                                                            <div class="row ml-3">
                                                                <div class="col-3">
                                                                    <asp:TextBox ID="TextBox_Tim" runat="server" class="form-control" type="text" placeholder="Nhập nội dung..."></asp:TextBox>
                                                                </div>
                                                                <div class="col-auto">
                                                                    <asp:Button ID="Button_Tim" Font-Size="16px" runat="server" Text="Tìm kiếm" Width="100px" Height="38px" CssClass="btn-primary" OnClick="Button_Tim_Click" />
                                                                </div>
                                                                <div class="col-auto">
                                                                   <asp:Button ID="Button_Re" Font-Size="16px" runat="server" Text="Tải Lại" Width="100px" Height="38px" CssClass="btn-primary" OnClick="Button_Re_Click" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="collapse mt-3 p-3" id="boxthem" style="width: 40%;">
                                                        <div class="collap-header">
                                                            <h5 class="collap-tt">Thêm Tài Khoản</h5>
                                                            <hr />
                                                        </div>
                                                        <div class="collap-body">
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Mã NV:</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Them1" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Mật Khẩu:</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Them2" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Loại User</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Them3" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="btn-gr">
                                                                  <hr />
                                                                <a style="height: 35px; width: 100px" href="#boxthem" class="btn btn btn-outline-danger" aria-expanded="false" data-toggle="collapse">Hủy</a>
                                                                <asp:Button ID="ButtonThem" runat="server" Text="Thêm" Width="100px" Height="35px" CssClass="btn-primary ml-2" OnClick="ButtonThem_Click" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="collapse mt-3 p-3" id="boxsua" style="width: 40%;">
                                                        <div class="collap-header">
                                                            <h5 class="collap-tt">Sửa Tài Khoản</h5>
                                                            <hr />
                                                        </div>
                                                        <div class="collap-body">
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Mã NV:</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Sua1" readonly runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Mật Khẩu:</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Sua2" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row p-1">
                                                                <div class="col-2">
                                                                    <label for="recipient-name" class="col-form-label">Loại User</label>
                                                                </div>
                                                                <div class="col-10">
                                                                    <asp:TextBox ID="TextBox_Sua3" runat="server" class="form-control" placeholder="  User" type="text"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="btn-gr">
                                                                  <hr />
                                                                <a style="height: 35px; width: 100px" href="#boxsua" class="btn btn btn-outline-danger" aria-expanded="false" data-toggle="collapse">Hủy</a>
                                                                <asp:Button ID="ButtonSua" runat="server" Text="Sửa" Width="100px" Height="35px" CssClass="btn-primary ml-2" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="visitfromworld" style="text-align: center;overflow:auto;">
                                                        <asp:GridView CssClass="table mt-4" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                            <AlternatingRowStyle BackColor="Gainsboro" />
                                                            <Columns>
                                                                <asp:BoundField DataField="MaNhanVien" HeaderText="Mã Nhân Viên" />
                                                                <asp:BoundField DataField="UserPass" HeaderText="Mật Khẩu" />
                                                                <asp:BoundField DataField="MaUserType" HeaderText="Loại User" />
                                                                <asp:TemplateField HeaderText="Action" HeaderStyle-Width="10%">
                                                                    <ItemTemplate>
                                                                        <div class="row" style="margin:auto">
                                                                            <div class="col-6">
                                                                                <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-small btn-info" ShowSelectButton="True" OnClick="SubmitBtn_Click"><i class="fas fa-edit"></i></asp:LinkButton>
                                                                            </div>
                                                                            <div class="col-6">
                                                                                <asp:LinkButton ID="XoaID" runat="server" CssClass="btn btn-small btn-danger" OnClick="XoaID_Click"><i class="fas fa-trash-alt"></i></asp:LinkButton>
                                                                            </div>

                                                                        </div>
                                                                    </ItemTemplate>                                                                  
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#0275d8" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#EFF3FB" />                                                         
                                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                        </asp:GridView>
                                                    </div>                                                  
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div></div>
             
                <footer class="footer" style="background-image: linear-gradient(to right, #7474BF 0%,teal 51%,#7474BF 100%) !important; color: white">
                    <div class="w-100 clearfix">
                        <span class="text-center text-sm-left d-md-inline-block">Copyright © 2018 ThemeKit v2.0. All Rights Reserved..</span>
                        <span class="float-none float-sm-right mt-1 mt-sm-0 text-center">Crafted with <i class="fa fa-heart text-danger"></i>by <a href="http://lavalite.org/" class="text-dark" target="_blank">Lavalite</a></span>
                    </div>
                </footer>
            </div>  
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Sửa Thông Tin</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
              
                            <div class="modal-body">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Tên Tài Khoản:</label>
                                <asp:TextBox ID="Manhanvien" ReadOnly class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Mật Khẩu:</label>
                                <asp:TextBox ID="Mknv" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Loại User:</label>
                                <asp:TextBox ID="Loainv" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                     
                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Cập Nhật" OnClick="ButtonSua_Click"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModal1" tabindex="-1" style="margin-top:10%" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel1">Xóa Thông tin</h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>            
                            <div class="modal-body">                          
                                <label for="recipient-name" style="font-size:16px"  class="col-form-label text-center">Bạn Có Muốn Xóa Nhân Viên Mã: <asp:Label Font-Bold="true" Font-Size="18px" ID="Lbxoa" runat="server"></asp:Label> Không ??? </label>                              
                        </div>                                        
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
                            <asp:Button ID="Bntdelete" class="btn btn-primary" runat="server" Text="Xóa " OnClick="Bntdelete_Click" />
                        </div>
                    </div>
                </div>
            </div>
            
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="src/js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
        <script src="plugins/popper.js/dist/umd/popper.min.js"></script>
        <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
        <script src="plugins/screenfull/dist/screenfull.js"></script>
        <script src="plugins/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="plugins/jvectormap/tests/assets/jquery-jvectormap-world-mill-en.js"></script>
        <script src="plugins/moment/moment.js"></script>
        <script src="plugins/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="plugins/d3/dist/d3.min.js"></script>
        <script src="plugins/c3/c3.min.js"></script>
        <script src="js/tables.js"></script>
        <script src="js/widgets.js"></script>
        <script src="js/charts.js"></script>
        <script src="dist/js/theme.min.js"></script>
            <script>
                function Search_None() {
                    alert("Không tìm thấy !!!");
                }
                function Xoa_done() {
                    alert("Xóa thành công !!!");
                }
                function Search_Trong() {
                    alert("Bạn chưa nhập thông tin cần tìm !!!");
                }
            </script>            
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        </div>
    </form>
</body>
</html>
