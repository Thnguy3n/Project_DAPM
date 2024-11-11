<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/7/2024
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/tablist.jsp" %>
<%@ page import="com.javabackend.shop.security.utils.SecurityUtils" %>
<c:url var="orderListURL" value="/admin/order-list"/>
<c:url var="orderAPI" value="/api/order"/>

<div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">
        <form:form modelAttribute="order" id="listForm" method="GET" var="item">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <!-- Topbar Search -->
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button" id="btnSearchProduct">
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
                    </li>

                    <!-- Nav Item - Messages -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-envelope fa-fw"></i>
                            <!-- Counter - Messages -->
                            <span class="badge badge-danger badge-counter">7</span>
                        </a>
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
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
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
                <h1 class="h3 mb-2 text-gray-800">Quản lý đơn hàng</h1>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Danh sách đơn hàng</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <display:table name="order" cellspacing="0" cellpadding="0" requestURI="${orderListURL}"
                                           id="tableList"
                                           class="table table-fcv-ace table-striped table-bordered table-hover dataTable no-footer"
                                           style="margin: 3em 0 1.5em;"
                            >
                                <display:column title="<fieldset class='form-group'>
												        <input type='checkbox' id='checkAll' class='check-box-element'>
												        </fieldset>" class="center select-cell"
                                                headerClass="center select-cell">
                                    <fieldset>
                                        <input type="checkbox" name="checkList" value="${tableList.id}"
                                               id="checkbox_${tableList.id}" class="check-box-element"/>
                                    </fieldset>
                                </display:column>
                                <display:column headerClass="text-left" property="userEntity.fullName"
                                                title="Người đặt"/>
                                <display:column headerClass="text-left" property="fullName" title="Tên người nhận"/>
                                <display:column headerClass="text-left" property="phoneNumber" title="SĐT giao"/>
                                <display:column headerClass="text-left" property="email" title="Email"/>
                                <display:column headerClass="text-left" property="address" title="Địa chỉ giao hàng"/>
                                <display:column headerClass="text-left" property="createdDate" title="Ngày đặt"/>

                                <display:column title="Thao tác">
                                    <button type="button" class="btn btn-xs btn-info" data-bs-toggle="modal"
                                            data-bs-target="#infoModal" onclick="loadOrderInfo(${tableList.id})">
                                        <i class="ace-icon fa fa-eye"></i>
                                    </button>

                                    <button class="btn btn-xs btn-danger" title="Xóa sản phẩm"
                                            onclick="deleteOrder(${tableList.id})">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </display:column>
                            </display:table>
                        </div>
                    </div>
                </div>
            </div>
            <%--modal view order item--%>
            <div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="infoModalLabel">Chi tiết hóa đơn</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body" id="orderDetails">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        </div>
                    </div>
                </div>
            </div>

        </form:form>
    </div>
</div>
<script>
    function loadOrderInfo(id) {
    fetch(`${orderAPI}/` + id)
        .then(response => response.json())
        .then(data => {
            if (Array.isArray(data)) {
                let orderDetailsHTML = "";
                data.forEach(item => {
                    orderDetailsHTML += `
                        <div class="order-item">
                            <p><strong>Tên sản phẩm:</strong> `+item.productTitle+`</p>
                            <p><strong>Size:</strong> `+item.size+`</p>
                            <p><strong>Số lượng:</strong> `+item.quantity+`</p>
                            <p><strong>Giá tiền:</strong> `+item.price+`</p>
                            <p><strong>Tổng tiền:</strong> `+item.total+`</p>
                            <hr>
                        </div>
                    `;
                });
                document.getElementById("orderDetails").innerHTML = orderDetailsHTML;
            } else {
                document.getElementById("orderDetails").innerHTML = "<p>Không có dữ liệu đơn hàng.</p>";
            }
        })
        .catch(error => {
            console.error('Error:', error);
            document.getElementById("orderDetails").innerHTML = `<p>Không thể tải thông tin đơn hàng.</p>`;
        });
    }
    function deleteOrder(id) {
    if (confirm("Bạn có chắc chắn muốn xóa đơn hàng này không?")) {
        $.ajax({
            type: "DELETE",
            url: `${orderAPI}/` + id,
            contentType: "application/json",
            success: function (response) {
                Swal.fire({
                    title: 'Thành công!',
                    text: 'Đơn hàng của bạn đã được xóa thành công.',
                    icon: 'success',
                    confirmButtonText: 'OK',
                    timer: 3000
                }).then(() => {
                    window.location.href = "/admin/order-list";
                });
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log("Error Details:", textStatus, errorThrown);
                Swal.fire({
                    title: 'Thất bại!',
                    text: 'Đã có lỗi xảy ra khi xóa đơn hàng. Vui lòng thử lại.',
                    icon: 'error',
                    confirmButtonText: 'OK',
                    timer: 5000
                }).then(() => {
                    window.location.href ="/admin/order-list";
                });
            }
        });
    } else {
        console.log("Người dùng đã hủy xóa.");
    }

}


</script>