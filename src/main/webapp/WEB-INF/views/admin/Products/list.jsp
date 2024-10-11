<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/6/2024
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/tablist.jsp" %>
<c:url var="productListURL" value="/admin/product-list"/>
<c:url var="courseAPI" value="/api/product"/>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">
        <form:form modelAttribute="productRequest" id="listForm" method="GET" var="item">
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
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                            <img class="img-profile rounded-circle"
                                 src="img/undraw_profile.svg">
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Quản lý sản phẩm</h1>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Danh sách sản phẩm</h6>
                    </div>
                    <div class="card-header py-3">
                        <h6 class="m-0 ">
                            <a href="#" class="btn btn-success btn-icon-split">
                                <span class="text">Split Button Success</span>
                            </a></h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <display:table name="product" cellspacing="0" cellpadding="0" requestURI="${productListURL}"
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
                                <display:column headerClass="text-left" property="title" title="Tên sản phẩm"/>
                                <display:column headerClass="text-left" property="discount" title="Giảm giá"/>
                                <display:column headerClass="text-left" property="inventory" title="Hàng tồn kho"/>
                                <display:column headerClass="text-left" property="price" title="Giá tiền"/>
                                <display:column headerClass="text-left" property="categoryId" title="Loại"/>


                                <display:column title="Thao tác">
<%--                                    <a href="/admin/product-edit-${tableList.id}">--%>
<%--                                        <button class="btn btn-xs btn-info">--%>
<%--                                            <i class="ace-icon fa fa-pencil bigger-120"></i>--%>
<%--                                        </button>--%>
<%--                                    </a>--%>
<%--                                    <button class="btn btn-xs btn-danger" title="Xóa khóa học"--%>
<%--                                            onclick="deleteProduct(${tableList.id})">--%>
<%--                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>--%>
<%--                                    </button>--%>
                                </display:column>
                            </display:table>
                             <input type="hidden" name="Product" id="productId" value="">
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->
        </form:form>


    </div>
    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Your Website 2020</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
<script>
 $('#btnSearchProduct').click(function(e){
        e.preventDefault();
        $('#listForm').submit()
    });
    function deleteProduct(id){
        var productId = [id];
        deleteProduct(productId);
    };

    $('#btnDeleteCourse').click(function(e){
        e.preventDefault();
        var data= {};
        data['courseId'] = $('#courseId').val();
        var courseIds = $('#tableList').find('tbody input[type = checkbox]:checked').map(function(){
            return $(this).val();
        }).get();
        deleteCourses(courseIds);
    });

    function deleteCourses(data){
        $.ajax({
            type: "DELETE",
            url: "${courseAPI}/"+data,
            data: JSON.stringify(data),
            contentType: "application/json",
            dataType: "JSON",
            success: function (respond) {
                console.log("Success");
            },
            error : function (respond) {
                console.log("fail");
                window.location.href = "<c:url value="/admin/course-list?message=success"/> ";
            }
        });
    }
</script>

