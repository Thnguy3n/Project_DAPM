<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/4/2024
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/tablist.jsp" %>
<%@ page import="com.javabackend.shop.security.utils.SecurityUtils" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    /* Tổng thể thiết kế của trang */
    .page-container {
        font-family: Arial, sans-serif;
        background-color: #f4f7fa;
        padding: 20px;
    }

    /* Container chứa form */
    .form-container {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        margin: 25px auto;
    }

    /* Tiêu đề form */
    .form-title {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    /* Nhãn cho các input */
    .form-label {
        font-size: 16px;
        color: #555;
        margin-bottom: 8px;
        display: block;
    }

    /* Các input number và select */
    .form-input, .form-select {
        width: 100%;
        padding: 12px; /* Tăng padding để form rộng hơn */
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    /* Focus vào input và select */
    .form-input:focus, .form-select:focus {
        outline: none;
        border-color: #007BFF;
    }

    /* Nút bấm */
    .form-button {
        width: 100%;
        padding: 14px; /* Tăng padding để nút bấm lớn hơn */
        background-color: #007BFF;
        color: #fff;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    /* Hover vào nút bấm */
    .form-button:hover {
        background-color: #0056b3;
    }

    /* Nhóm form */
    .form-group {
    }

    /* Xếp các form-group thành hàng ngang */
    .form-row {
        display: flex;
        gap: 20px; /* Khoảng cách giữa các form group */
        justify-content: space-between;
        flex-wrap: wrap;
    }

    /* Đảm bảo mỗi input chiếm khoảng 32% chiều rộng */
    .form-group-inline {
        flex: 1 1 32%; /* Mỗi item chiếm khoảng 1/3 chiều rộng */
        min-width: 250px; /* Đảm bảo không bị quá nhỏ */
    }

    /* Định dạng cho select */
    .form-select {
        cursor: pointer;
    }

</style>
<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>
            <!-- Topbar Search -->
            <form
                    class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                           aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </form>
            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-search fa-fw"></i>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                         aria-labelledby="searchDropdown">
                        <form class="form-inline mr-auto w-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small"
                                       placeholder="Search for..." aria-label="Search"
                                       aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <!-- Nav Item - Alerts -->
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <!-- Counter - Alerts -->
                        <span class="badge badge-danger badge-counter">3+</span>
                    </a>
                    <!-- Dropdown - Alerts -->
                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="alertsDropdown">
                        <h6 class="dropdown-header">
                            Alerts Center
                        </h6>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="mr-3">
                                <div class="icon-circle bg-primary">
                                    <i class="fas fa-file-alt text-white"></i>
                                </div>
                            </div>
                            <div>
                                <div class="small text-gray-500">December 12, 2019</div>
                                <span class="font-weight-bold">A new monthly report is ready to download!</span>
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="mr-3">
                                <div class="icon-circle bg-success">
                                    <i class="fas fa-donate text-white"></i>
                                </div>
                            </div>
                            <div>
                                <div class="small text-gray-500">December 7, 2019</div>
                                $290.29 has been deposited into your account!
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="mr-3">
                                <div class="icon-circle bg-warning">
                                    <i class="fas fa-exclamation-triangle text-white"></i>
                                </div>
                            </div>
                            <div>
                                <div class="small text-gray-500">December 2, 2019</div>
                                Spending Alert: We've noticed unusually high spending for your account.
                            </div>
                        </a>
                        <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                    </div>
                </li>

                <!-- Nav Item - Messages -->
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <!-- Counter - Messages -->
                        <span class="badge badge-danger badge-counter">7</span>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="messagesDropdown">
                        <h6 class="dropdown-header">
                            Message Center
                        </h6>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="dropdown-list-image mr-3">
                                <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                     alt="...">
                                <div class="status-indicator bg-success"></div>
                            </div>
                            <div class="font-weight-bold">
                                <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                    problem I've been having.
                                </div>
                                <div class="small text-gray-500">Emily Fowler · 58m</div>
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="dropdown-list-image mr-3">
                                <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                     alt="...">
                                <div class="status-indicator"></div>
                            </div>
                            <div>
                                <div class="text-truncate">I have the photos that you ordered last month, how
                                    would you like them sent to you?
                                </div>
                                <div class="small text-gray-500">Jae Chun · 1d</div>
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="dropdown-list-image mr-3">
                                <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                     alt="...">
                                <div class="status-indicator bg-warning"></div>
                            </div>
                            <div>
                                <div class="text-truncate">Last month's report looks great, I am very happy with
                                    the progress so far, keep up the good work!
                                </div>
                                <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                            </div>
                        </a>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <div class="dropdown-list-image mr-3">
                                <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                     alt="...">
                                <div class="status-indicator bg-success"></div>
                            </div>
                            <div>
                                <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                    told me that people say this to all dogs, even if they aren't good...
                                </div>
                                <div class="small text-gray-500">Chicken the Dog · 2w</div>
                            </div>
                        </a>
                        <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                    </div>
                </li>

                <div class="topbar-divider d-none d-sm-block"></div>

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=SecurityUtils.getPrincipal().getFullName()%></span>
                        <img class="img-profile rounded-circle"
                             src="img/undraw_profile.svg">
                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            Profile
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                            Settings
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                            Activity Log
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </div>
                </li>

            </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Thống kê doanh thu</h1>
                <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                        class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>
            <div class="form-container">
                <form action="/admin/home" method="get">
                    <div class="form-row">
                        <div class="form-group form-group-inline">
                            <label for="year" class="form-label">Năm:</label>
                            <input type="number" name="year" id="year" class="form-input" value="${year}" required>
                        </div>

                        <div class="form-group form-group-inline">
                            <label for="month" class="form-label">Tháng:</label>
                            <input type="number" name="month" id="month" class="form-input" value="${month}"
                                   placeholder="Tất cả" min="1" max="12">
                        </div>

                        <div class="form-group form-group-inline">
                            <label for="status" class="form-label">Trạng Thái:</label>
                            <select name="status" id="status" class="form-select">
                                <option value="Doanh thu">Doanh thu</option>
                                <option value="Chưa thanh toán">Chưa thanh toán</option>
                                <option value="Đang xử lý">Đang xử lý</option>
                                <option value="Đã giao hàng">Đã giao hàng</option>
                            </select>
                        </div>
                        <button type="submit" class="form-button" onclick="fetchRevenue()">Xem Thống Kê</button>

                    </div>

                    <%--                    <button type="submit" class="form-button">Xem Thống Kê</button>--%>
                </form>
            </div>

            <!-- Content Row -->
            <div class="row">
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <c:forEach var="entry" items="${monthlyRevenue}">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Doanh thu tháng ${entry.key}
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            <fmt:formatNumber value="${entry.value}" pattern="#,###"/> VNĐ
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Thống kê số lượng hóa đơn
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            ${orderCount}
                                        </div>
                                    </div>

                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Thống kê số lượng sản phẩm
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            ${ProductCount}
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Content Row -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Your Website 2021</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<script>
    function fetchRevenue() {
        const year = new Date().getFullYear(); // Giả sử là năm hiện tại, bạn có thể lấy từ input nếu muốn
        const month = document.getElementById("month").value || null; // Lấy giá trị tháng nếu có
        const status = document.getElementById("status").value;
        fetch(`/admin/monthly-revenue?year=${year}&month=${month}&status=${status}`)
            .then(response => response.json())
            .then(data => {
                displayRevenueData(data);
            })
            .catch(error => console.error("Error fetching data:", error));
    }

    function combineRevenueData(data1, data2) {
        const revenueMap = new Map();
        data1.forEach(item => {
            revenueMap.set(item.month, item.totalRevenue);
        });
        data2.forEach(item => {
            if (revenueMap.has(item.month)) {
                revenueMap.set(item.month, revenueMap.get(item.month) + item.totalRevenue);
            } else {
                revenueMap.set(item.month, item.totalRevenue);
            }
        });
        return Array.from(revenueMap, ([month, totalRevenue]) => ({month, totalRevenue}));
    }

    function displayRevenueData(data) {
        let resultHtml = "<table><tr><th>Tháng</th><th>Doanh thu</th></tr>";
        data.forEach(item => {
            resultHtml += `<tr><td>${item.month}</td><td>${item.totalRevenue}</td></tr>`;
        });
        resultHtml += "</table>";

        document.getElementById("revenueResult").innerHTML = resultHtml;
    }

</script>
<!-- Logout Modal-->
