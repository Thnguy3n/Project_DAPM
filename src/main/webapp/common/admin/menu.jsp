<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/4/2024
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tablist.jsp"%>
<ul style="width: 15rem!important" class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/home">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Admin <sup>2</sup></div>
    </a>

    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin/product-list"/>">
            <i class="fas fa-fw fa-table"></i>
            <span>Quản lý sản phẩm </span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/admin/user-list"/>">
            <i class="fas fa-fw fa-table"></i>
            <span>Quản lý tài khoản  </span></a>
    </li>
    <li class="nav-item">
        <a style="width: 15rem" class="nav-link" href="<c:url value="/admin/category-list"/>" >
            <i class="fas fa-fw fa-table"></i>
            <span>Quản lý danh mục sản phẩm  </span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline " >
        <button  class="rounded-circle border-0" id="sidebarToggle" ></button>
    </div>


</ul>