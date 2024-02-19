<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link href="../../../bootrap/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch"/>
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
               aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#!">Settings</a></li>
                <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                <li>
                    <hr class="dropdown-divider"/>
                </li>
                <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="/thong-ke/doanh-thu">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Interface</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts"
                       aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Thuộc tính
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                         data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/mau-sac">Màu Sắc</a>
                            <a class="nav-link" href="/loai-san-pham">Loại Sản Phẩm</a>
                            <a class="nav-link" href="/hang-san-xuat">Nhà Sản Xuất</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages"
                       aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Pages
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                         data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                               data-bs-target="#pagesCollapseAuth" aria-expanded="false"
                               aria-controls="pagesCollapseAuth">
                                Hóa đơn
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/hoa-don">Duyệt Hóa Đơn</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="" data-bs-toggle="collapse"
                               data-bs-target="#pagesCollapseError" aria-expanded="false"
                               aria-controls="pagesCollapseError">
                                Khuyến Mãi
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
                                 data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/khuyen-mai">Thêm khuyến mãi</a>
                                    <a class="nav-link" href="/nhan-vien">Quản lí nhân viên</a>
                                    <%--                                    <a class="nav-link" href="../../view1/500.html">500 Page</a>--%>
                                </nav>
                            </div>
                        </nav>
                    </div>
                    <div class="sb-sidenav-menu-heading">Addons</div>
                    <a class="nav-link" href="/thong-ke/bieu-do">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Biểu đồ
                    </a>
                    <a class="nav-link" href="/chi-tiet-san-pham">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Chi tiết sản phẩm
                    </a>
                    <a class="nav-link" href="/thong-ke/theo-ngay">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Thống kê
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Dashboard</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
                <canvas id="myAreaChart" width="100%" height="40"></canvas>
            </div>
        </main>
        <h2 class="h5 text-uppercase mb-4">Tạo đơn trả hàng</h2>

        <table class="table table-sm table-hover">
            <thead>
            <tr>
                <th scope="col">ID Chitiet</th>
                <%--                    <th scope="col">ID Tai Khoan</th>--%>
                <%--                    <th scope="col">ID HoaDon</th>--%>
                <th scope="col">Số Lượng</th>
                <th scope="col">Số Lượng Muốn trả</th>
                <th scope="col">Tên Sản Phẩm</th>
                <th scope="col">Kích Cỡ</th>
                <th scope="col">Giá </th>
                <%--                    <th scope="col">Đơn Giá</th>--%>
                <th scope="col">Tổng Tiền</th>
                <th scope="col">Trạng thái</th>
                <th scope="col">Nút Bấm</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${chiTietHoaDonAdmin}" var="hd">
            <tr>
                <td>${hd.id}</td>
                    <%--                        <td>${hd.idHoaDon.UserId}</td>--%>
                <td>${hd.soLuong}</td>
                                            <td>${hd.soLuongTra}</td>

                <td>${hd.idChiTietSanPham.ten}</td>
                <td>${hd.idChiTietSanPham.idKichCo.ten}</td>
                <td>${hd.donGia}</td>
                <td>${hd.donGia * hd.soLuong}</td>


                    <%--                        <td>${hd.trangThai == 0 ? "Chờ xác nhận" : "Đồng ý trả hàng"}</td>--%>

                <td>
                    <c:choose>
                        <c:when test="${hd.trangThai eq 0}">
                            Chờ xác nhận
                        </c:when>
                        <c:when test="${hd.trangThai eq 1}">
                            Xác nhận
                        </c:when>

                        <c:when test="${hd.trangThai eq 2}">
                            Kiểm tra hàng hoàn
                        </c:when>

                        <c:when test="${hd.trangThai eq 3}">
                            Đồng ý trả hàng
                        </c:when>

                        <c:when test="${hd.trangThai eq 4}">
                            Từ chối
                        </c:when>

                        <c:otherwise>
                            Bình Thường
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <button type="button"  class="btn btn-info" style="font-size: 9px"><a href="/tra-hang-admin/${hd.id}">Đồng ý yêu cầu</a></button>
                    <button type="button" class="btn btn-success" style="font-size: 9px"><a href="/tra-hang-admin/tu-choi/${hd.id}">Từ chối yêu cầu</a></button>
                    <button type="button" class="btn btn-danger" style="font-size: 9px">
                        <a href="/tra-hang-kiemtra/${hd.id}">Đồng ý trả hàng</a>
                    </button>
                </td>

            </tr>
            </c:forEach>




        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2023</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="../../bootrap/js/scripts.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>--%>
<%--<script src="../../bootrap/assets/demo/chart-area-demo.js"></script>--%>
<%--<script src="../../bootrap/assets/demo/chart-bar-demo.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="../../bootrap/js/datatables-simple-demo.js"></script>--%>
</body>
</html>

