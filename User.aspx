<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="VoTanDat_TraCuuHoSo.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User</title>
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
        .table {
            width: 100%;
            margin-top: 10px;
            margin-left: auto;
            margin-right: auto;
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

        .auto-style1 {
            position: relative;
            width: auto;
            min-height: 1px;
            -ms-flex: 0 0 auto;
            flex: 0 0 auto;
            max-width: none;
            left: -275px;
            top: -242px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <header class="header-top">
                <div class="container-fluid">
                    <div class="d-flex justify-content-between">
                        <div class="top-menu d-flex align-items-center">
                            <button type="button" class="btn-icon mobile-nav-toggle d-lg-none"><span></span></button>
                            <div class="header-search">
                                <div class="row">
                                    <div class="col-auto">
                                        <asp:Button ID="Button5" runat="server" Text="Làm Mới" Width="100px" Height="35px" CssClass="btn-primary" OnClick="Button5_Click" />
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
                                <i class="fas fa-user header-brand-img"></i>

                            </div>
                            <span class="text">USER</span>
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
                                    <a href="index.html"><i class="ik ik-bar-chart-2"></i><span>Dashboard</span></a>
                                </div>
                                <div class="nav-item">
                                    <a href="pages/navbar.html"><i class="ik ik-menu"></i><span>Navigation</span> <span class="badge badge-success">New</span></a>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="javascript:void(0)"><i class="ik ik-layers"></i><span>Widgets</span> <span class="badge badge-danger">150+</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/widgets.html" class="menu-item">Basic</a>
                                        <a href="pages/widget-statistic.html" class="menu-item">Statistic</a>
                                        <a href="pages/widget-data.html" class="menu-item">Data</a>
                                        <a href="pages/widget-chart.html" class="menu-item">Chart Widget</a>
                                    </div>
                                </div>
                                <div class="nav-lavel">UI Element</div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-box"></i><span>Basic</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/alerts.html" class="menu-item">Alerts</a>
                                        <a href="pages/ui/badges.html" class="menu-item">Badges</a>
                                        <a href="pages/ui/buttons.html" class="menu-item">Buttons</a>
                                        <a href="pages/ui/navigation.html" class="menu-item">Navigation</a>
                                    </div>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-gitlab"></i><span>Advance</span> <span class="badge badge-success">New</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/modals.html" class="menu-item">Modals</a>
                                        <a href="pages/ui/notifications.html" class="menu-item">Notifications</a>
                                        <a href="pages/ui/carousel.html" class="menu-item">Slider</a>
                                        <a href="pages/ui/range-slider.html" class="menu-item">Range Slider</a>
                                        <a href="pages/ui/rating.html" class="menu-item">Rating</a>
                                    </div>
                                </div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-package"></i><span>Extra</span></a>
                                    <div class="submenu-content">
                                        <a href="pages/ui/session-timeout.html" class="menu-item">Session Timeout</a>
                                    </div>
                                </div>
                                <div class="nav-item">
                                    <a href="pages/ui/icons.html"><i class="ik ik-command"></i><span>Icons</span></a>
                                </div>
                                <div class="nav-lavel">Forms</div>
                                <div class="nav-item has-sub">
                                    <a href="#"><i class="ik ik-edit"></i><span>Forms</span></a>
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
                <div class="main-content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-lg-12 col-md-12">
                                                <h4 class="card-title" style="font-size: 35px; font-weight: 700">TRA CỨU HỒ SƠ</h4>
                                                <div class="btn_chucnang" style="padding-top: 1%">
                                                    <div class="khung-search">
                                                        <div class="row">
                                                            <div class="col-3">
                                                                <asp:TextBox ID="Tb_tim" runat="server" class="form-control" type="text" placeholder="Nhập nội dung"></asp:TextBox>
                                                            </div>
                                                            <div class="col-auto">
                                                                <asp:Button ID="Btn_tim" runat="server" Text="Tìm kiếm" Width="100px" Height="35px" CssClass="btn-primary" OnClick="Btn_tim_Click" />
                                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">Dy cho</button>
                                                            </div>
                                                            <div class="col-auto">
                                                                <a style="height: 35px" href="#boxnoidung" data-toggle="collapse" class="btn btn-primary" aria-expanded="false">Tìm Kiếm Nâng Cao</a>
                                                            </div>
                                                        </div>

                                                        <div class="collapse mt-4" id="boxnoidung">

                                                            <div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Mã Hồ Sơ</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TB_ma" runat="server" placeholder="Nhập mã..."></asp:TextBox>

                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="inputState">Tên Hồ Sơ</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TB_ten" runat="server" placeholder="Nhập tên..."></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Loại Hồ Sơ</label>
                                                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                                                        <asp:ListItem>adadad</asp:ListItem>
                                                                        <asp:ListItem></asp:ListItem>
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Người Quản Lý HS</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TB_ql" runat="server" placeholder="Nhập tên..."></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-row">
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Ngày Nhập</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nhập Tên Hồ Sơ"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Ngày Hết Hạn</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TB_tenhs" runat="server" placeholder="Nhập Tên Hồ Sơ"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-3 mb-3">
                                                                    <label for="exampleInputEmail1">Tình Trạng</label>
                                                                    <asp:TextBox CssClass="form-control" ID="TB_TT" runat="server" placeholder="Nhập Tên Hồ Sơ"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <a style="height: 35px; width: 100px" href="#boxnoidung" class="btn btn-primary" aria-expanded="false" data-toggle="collapse">Thoát</a>
                                                            <asp:Button ID="Bnt_timcao" runat="server" Text="Tìm Kiếm" Width="100px" Height="35px" OnClick="Bnt_timcao_Click" CssClass="btn-primary" />
                                                        </div>

                                                    </div>

                                                    <div id="visitfromworld" style="text-align: center; overflow: auto">
                                                        <asp:GridView CssClass="table mt-4" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333">
                                                            <AlternatingRowStyle BackColor="Gainsboro" />
                                                            <Columns>
                                                                <asp:BoundField DataField="MaHoSo" HeaderText="Mã HS" />
                                                                <asp:BoundField DataField="TenLoaiHoSo" HeaderText="Tên Loại HS" />
                                                                <asp:BoundField DataField="NgayBanHanh" HeaderText="Ngày Ban Hành" DataFormatString="{0: yyyy/MM/dd}" />
                                                                <asp:BoundField DataField="NgayHetHan" HeaderText="Hết Hạn" DataFormatString="{0: yyyy/MM/dd}" />
                                                                <asp:BoundField DataField="NgayNhap" HeaderText="Ngày Nhập" DataFormatString="{0: yyyy/MM/dd}" />
                                                                <asp:BoundField DataField="TenTinhTrang" HeaderText="Tình Trạng" />
                                                                <asp:BoundField DataField="FileMem" HeaderText="FileMem" />
                                                                <asp:BoundField DataField="TenHoSo" HeaderText="Tên HS" />
                                                                <asp:BoundField DataField="NoiNhap" HeaderText="Nơi Nhập" />
                                                                <asp:BoundField DataField="NoiNhan" HeaderText="Nơi Nhận" />
                                                                <asp:BoundField DataField="NguoiQuanLy" HeaderText="Người QL" />
                                                                <asp:BoundField DataField="ThoiGianBaoQuan" HeaderText="TG Bảo Quản" />
                                                                <asp:BoundField DataField="MaViTri" HeaderText="Mã Vị Trí" />
                                                                <asp:TemplateField HeaderText="File" HeaderStyle-CssClass="text-center" HeaderStyle-Width="50px">
                                                                    <ItemTemplate>
                                                                        <div class="row mx-1">
                                                                            <asp:LinkButton ID="SubmitBtn" runat="server" CssClass="btn btn-small btn-primary col" OnClick="GridView3_RemoveIndex"><i class="fa fa-edit"></i></asp:LinkButton>
                                                                        </div>
                                                                    </ItemTemplate>

                                                                    <HeaderStyle CssClass="text-center" Width="50px"></HeaderStyle>
                                                                </asp:TemplateField>
                                                                <asp:BoundField DataField="MucDoBaoMat" HeaderText="Độ Bảo Mật" />
                                                            </Columns>
                                                            <EditRowStyle BackColor="#2461BF" />
                                                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#EFF3FB" />
                                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
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
                    </div>

                </div>
                <footer class="footer" style="background-image: linear-gradient(to right, #7474BF 0%,teal 51%,#7474BF 100%) !important; color: white">
                    <div class="w-100 clearfix">
                        <span class="text-center text-sm-left d-md-inline-block">Copyright © 2018 ThemeKit v2.0. All Rights Reserved..</span>
                        <span class="float-none float-sm-right mt-1 mt-sm-0 text-center">Crafted with <i class="fa fa-heart text-danger"></i>by <a href="http://lavalite.org/" class="text-dark" target="_blank">Lavalite</a></span>
                    </div>
                </footer>
            </div>
        </div>
        <!-- modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Vị Trí FIle Cứng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:GridView CssClass="table" ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MaHoSo" HeaderText="MaHS" />
                                <asp:BoundField DataField="MaLoaiHoSo" HeaderText="Tên" />
                                <asp:BoundField DataField="TenHoSo" HeaderText="Loại" />
                                <asp:BoundField DataField="ViTriTu" HeaderText="Tủ" />
                                <asp:BoundField DataField="ViTriKe" HeaderText="Kệ" />
                                <asp:BoundField DataField="ViTriNgan" HeaderText="Ngăn" />
                                <asp:BoundField DataField="MaPhongBan" HeaderText="Ma Phong Ban" />
                                <asp:BoundField DataField="NgayNhap" HeaderText="Ngay Nhap" DataFormatString="{0: yyyy/MM/dd}" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                    <div class="modal" tabindex="-1" role="dialog">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Modal title</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Modal body text goes here.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade " id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg " style="width:1800px !important" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel1">Sửa Thông Tin</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="container-fluid mt-5" id="form-search">
                            <div class="form-row mb-3">
                                <div class="col-md-3">
                                    <label for="exampleInputEmail1">Mã Hồ Sơ:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Mã hồ sơ.."></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <label for="exampleInputEmail1">Mã Loại Hồ Sơ:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Mã LHS.."></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row mb-3">
                                <div class="col-md-4">
                                    <label for="inputState">Loại Hồ Sơ</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <label for="inputState">Nhân Viên</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <label for="inputState">Trạng Thái</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-row mb-3">
                                <div class="col-md-2">
                                    <label for="inputState">Loại Văn Bản</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList5" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-5">
                                    <label for="inputState">Ngày Tạo</label>
                                    <div class="form-row">
                                        <div class="col-md-3">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList6" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList7" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Năm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <label for="inputState">Ngày Kết Thúc</label>
                                    <div class="form-row">
                                        <div class="col-md-3">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList8" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList9" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Năm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="form-row mb-3">
                                <div class="col-md-4">
                                    <label for="inputState">Ngày Lưu</label>
                                    <div class="form-row">
                                        <div class="col-md-3">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList12" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList13" runat="server"></asp:DropDownList>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Năm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="inputState">Vị Trí Lưu</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList10" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <label for="exampleInputEmail1">File Mềm</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="File Mềm"></asp:TextBox>
                                </div>
                            </div>
                            <a class="btn btn-danger" href="Index.aspx">Thoát</a>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" Text="Thêm Hồ Sơ" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Cập Nhật" />
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
        </script>
        <script>
            function Search_Trong() {
                alert("Bạn chưa nhập thông tin cần tìm !!!");
            }
        </script>
    </form>
</body>
</html>
