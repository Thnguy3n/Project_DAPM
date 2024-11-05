<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/6/2024
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/tablist.jsp" %>

<!-- preload -->
<div class="preload preload-container">
    <div class="preload-logo">
        <div class="spinner"></div>
    </div>
</div>
<!-- /preload -->
<div id="wrapper">
    <!-- page-title -->
    <div class="tf-page-title">
        <div class="container-full">
            <div class="heading text-center">Thanh toán</div>
        </div>
    </div>
    <!-- /page-title -->

    <!-- page-cart -->
    <section class="flat-spacing-11">
        <div class="container">
            <div class="tf-page-cart-wrap layout-2">
                <div class="tf-page-cart-item">
                    <h5 class="fw-5 mb_20">Thông tin vận chuyển</h5>
                    <form class="form-checkout">
                        <fieldset class="box fieldset">
                            <label for="fullName">Họ tên</label>
                            <input type="text" id="fullName" class="input-field" placeholder="Nhập họ tên">
                        </fieldset>

                        <fieldset class="box fieldset">
                            <label for="province">Tỉnh/Thành phố</label>
                            <select id="province" class="select-field" onchange="updateDistricts(); updateSelectedLocation()">
                                <option value="">Chọn Tỉnh/Thành phố</option>
                            </select>

                            <label for="district">Quận/Huyện</label>
                            <select id="district" class="select-field" onchange="updateWards(); updateSelectedLocation()">
                                <option value="">Chọn Quận/Huyện</option>
                            </select>

                            <label for="ward">Phường/Xã</label>
                            <select id="ward" class="select-field" onchange="updateSelectedLocation()">
                                <option value="">Chọn Phường/Xã</option>
                            </select>
                        </fieldset>

                        <div id="selected-location" class="selected-location box fieldset">
                        </div>

                        <fieldset class="box fieldset">
                            <label for="address">Địa chỉ cụ thế</label>
                            <input type="text" id="address" class="input-field" placeholder="Nhập địa chỉ">
                        </fieldset>

                        <fieldset class="box fieldset">
                            <label for="phone">Số điện thoại</label>
                            <input type="number" id="phone" class="input-field" placeholder="Nhập số điện thoại">
                        </fieldset>

                        <fieldset class="box fieldset">
                            <label for="email">Email</label>
                            <input type="email" id="email" class="input-field" placeholder="Nhập email">
                        </fieldset>

                        <fieldset class="box fieldset">
                            <label for="note">Ghi chú đơn hàng (tùy chọn)</label>
                            <textarea name="note" id="note" class="input-field" placeholder="Nhập ghi chú"></textarea>
                        </fieldset>
                    </form>
                </div>
                <div class="tf-page-cart-footer">
                    <div class="tf-cart-footer-inner">
                        <h5 class="fw-5 mb_20">Đơn hàng của bạn</h5>
                        <form class="tf-page-cart-checkout widget-wrap-checkout">
                            <ul class="wrap-checkout-product">
                                <li class="checkout-product-item">
                                    <figure class="img-product">
                                        <img src="images/products/brown.jpg" alt="product">
                                        <span class="quantity">1</span>
                                    </figure>
                                    <div class="content">
                                        <div class="info">
                                            <p class="name">Ribbed modal T-shirt</p>
                                            <span class="variant">Brown / M</span>
                                        </div>
                                        <span class="price">$25.00</span>
                                    </div>
                                </li>

                            </ul>
                            <div class="coupon-box">
                                <input type="text" placeholder="Mã giảm giá">
                                <a href="#" class="tf-btn btn-sm radius-3 btn-fill btn-icon animate-hover-btn">Apply</a>
                            </div>
                            <div class="d-flex justify-content-between line pb_20">
                                <h6 class="fw-5">Tổng cộng</h6>
                                <h6 class="total fw-5">$122.00</h6>
                            </div>
                            <div class="wd-check-payment">
                                <div class="fieldset-radio mb_20">
                                    <input type="radio" name="payment" id="bank" class="tf-check" checked>
                                    <label for="bank">Chuyển khoản ngân hàng trực tiếp</label>

                                </div>
                                <div class="fieldset-radio mb_20">
                                    <input type="radio" name="payment" id="delivery" class="tf-check">
                                    <label for="delivery">Thanh toán khi nhận hàng</label>
                                </div>
                                <p class="text_black-2 mb_20">Dữ liệu cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng của bạn, hỗ trợ trải nghiệm của bạn trên toàn bộ trang web này và cho các mục đích khác được mô tả trong <a href="privacy-policy.html" class="text-decoration-underline">chính sách bảo mật</a> của chúng tôi.</p>
                                <div class="box-checkbox fieldset-radio mb_20">
                                    <input type="checkbox" id="check-agree" class="tf-check">
                                    <label for="check-agree" class="text_black-2">Tôi đã đọc và đồng ý với <a href="terms-conditions.html" class="text-decoration-underline">các điều khoản và điều kiện</a> của trang web.</label>
                                </div>
                            </div>
                            <button class="tf-btn radius-3 btn-fill btn-icon animate-hover-btn justify-content-center">Đặt hàng</button>                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- page-cart -->


</div>

<!-- gotop -->
<div class="progress-wrap">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 286.138;"></path>
    </svg>
</div>
<!-- /gotop -->

<!-- canvasSearch -->
<div class="offcanvas offcanvas-end canvas-search" id="canvasSearch">
    <div class="canvas-wrapper">
        <header class="tf-search-head">
            <div class="title fw-5">
                Search our site
                <div class="close">
                    <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
                </div>
            </div>
            <div class="tf-search-sticky">
                <form class="tf-mini-search-frm">
                    <fieldset class="text">
                        <input type="text" placeholder="Search" class="" name="text" tabindex="0" value="" aria-required="true" required="">
                    </fieldset>
                    <button class="" type="submit"><i class="icon-search"></i></button>
                </form>
            </div>
        </header>
        <div class="canvas-body p-0">
            <div class="tf-search-content">
                <div class="tf-cart-hide-has-results">
                    <div class="tf-col-quicklink">
                        <div class="tf-search-content-title fw-5">Quick link</div>
                        <ul class="tf-quicklink-list">
                            <li class="tf-quicklink-item">
                                <a href="shop-default.html" class="">Fashion</a>
                            </li>
                            <li class="tf-quicklink-item">
                                <a href="shop-default.html" class="">Men</a>
                            </li>
                            <li class="tf-quicklink-item">
                                <a href="shop-default.html" class="">Women</a>
                            </li>
                            <li class="tf-quicklink-item">
                                <a href="shop-default.html" class="">Accessories</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tf-col-content">
                        <div class="tf-search-content-title fw-5">Need some inspiration?</div>
                        <div class="tf-search-hidden-inner">
                            <div class="tf-loop-item">
                                <div class="image">
                                    <a href="product-detail.html">
                                        <img src="images/products/white-3.jpg" alt="">
                                    </a>
                                </div>
                                <div class="content">
                                    <a href="product-detail.html">Cotton jersey top</a>
                                    <div class="tf-product-info-price">
                                        <div class="compare-at-price">$10.00</div>
                                        <div class="price-on-sale fw-6">$8.00</div>
                                    </div>
                                </div>
                            </div>
                            <div class="tf-loop-item">
                                <div class="image">
                                    <a href="product-detail.html">
                                        <img src="images/products/white-2.jpg" alt="">
                                    </a>
                                </div>
                                <div class="content">
                                    <a href="product-detail.html">Mini crossbody bag</a>
                                    <div class="tf-product-info-price">
                                        <div class="price fw-6">$18.00</div>
                                    </div>
                                </div>
                            </div>
                            <div class="tf-loop-item">
                                <div class="image">
                                    <a href="product-detail.html">
                                        <img src="images/products/white-1.jpg" alt="">
                                    </a>
                                </div>
                                <div class="content">
                                    <a href="product-detail.html">Oversized Printed T-shirt</a>
                                    <div class="tf-product-info-price">
                                        <div class="price fw-6">$18.00</div>
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
<!-- /canvasSearch -->

<!-- modal find_size -->
<div class="modal fade modalDemo tf-product-modal" id="find_size">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <div class="demo-title">Size chart</div>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="tf-rte">
                <div class="tf-table-res-df">
                    <h6>Size guide</h6>
                    <table class="tf-sizeguide-table">
                        <thead>
                        <tr>
                            <th>Size</th>
                            <th>US</th>
                            <th>Bust</th>
                            <th>Waist</th>
                            <th>Low Hip</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>XS</td>
                            <td>2</td>
                            <td>32</td>
                            <td>24 - 25</td>
                            <td>33 - 34</td>
                        </tr>
                        <tr>
                            <td>S</td>
                            <td>4</td>
                            <td>34 - 35</td>
                            <td>26 - 27</td>
                            <td>35 - 26</td>
                        </tr>
                        <tr>
                            <td>M</td>
                            <td>6</td>
                            <td>36 - 37</td>
                            <td>28 - 29</td>
                            <td>38 - 40</td>
                        </tr>
                        <tr>
                            <td>L</td>
                            <td>8</td>
                            <td>38 - 29</td>
                            <td>30 - 31</td>
                            <td>42 - 44</td>
                        </tr>
                        <tr>
                            <td>XL</td>
                            <td>10</td>
                            <td>40 - 41</td>
                            <td>32 - 33</td>
                            <td>45 - 47</td>
                        </tr>
                        <tr>
                            <td>XXL</td>
                            <td>12</td>
                            <td>42 - 43</td>
                            <td>34 - 35</td>
                            <td>48 - 50</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tf-page-size-chart-content">
                    <div>
                        <h6>Measuring Tips</h6>
                        <div class="title">Bust</div>
                        <p>Measure around the fullest part of your bust.</p>
                        <div class="title">Waist</div>
                        <p>Measure around the narrowest part of your torso.</p>
                        <div class="title">Low Hip</div>
                        <p class="mb-0">With your feet together measure around the fullest part of your hips/rear.
                        </p>
                    </div>
                    <div>
                        <img class="sizechart lazyload" data-src="images/shop/products/size_chart2.jpg" src="images/shop/products/size_chart2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /modal find_size -->
<script>
    let provincesData = {};
    let districtsData = {};
    let wardsData = {};

    async function loadData() {
        try {
            const provincesResponse = await fetch('/api/tinh_tp');
            provincesData = await provincesResponse.json();
            const districtsResponse = await fetch('/api/quan_huyen');
            districtsData = await districtsResponse.json();
            const wardsResponse = await fetch('/api/xa_phuong');
            wardsData = await wardsResponse.json();
            populateProvinces();
        } catch (error) {
            console.error("Error loading data:", error);
        }
    }

    function populateProvinces() {
        const provinceSelect = document.getElementById("province");
        provinceSelect.innerHTML = '<option value="">Chọn Tỉnh/Thành phố</option>';
        for (const code in provincesData) {
            const option = document.createElement("option");
            option.value = code;
            option.text = provincesData[code].name_with_type;
            provinceSelect.add(option);
        }
    }

    function updateDistricts() {
        const provinceCode = document.getElementById("province").value;
        const districtSelect = document.getElementById("district");
        const wardSelect = document.getElementById("ward");

        districtSelect.innerHTML = '<option value="">Chọn Quận/Huyện</option>';
        wardSelect.innerHTML = '<option value="">Chọn Phường/Xã</option>';

        for (const code in districtsData) {
            if (districtsData[code].parent_code === provinceCode) {
                const option = document.createElement("option");
                option.value = code;
                option.text = districtsData[code].name_with_type;
                districtSelect.add(option);
            }
        }
    }

    function updateWards() {
        const districtCode = document.getElementById("district").value;
        const wardSelect = document.getElementById("ward");

        wardSelect.innerHTML = '<option value="">Chọn Phường/Xã</option>';

        for (const code in wardsData) {
            if (wardsData[code].parent_code === districtCode) {
                const option = document.createElement("option");
                option.value = code;
                option.text = wardsData[code].name_with_type;
                wardSelect.add(option);
            }
        }
    }

    function updateSelectedLocation() {
        const provinceSelect = document.getElementById("province");
        const districtSelect = document.getElementById("district");
        const wardSelect = document.getElementById("ward");

        const provinceName = provinceSelect.options[provinceSelect.selectedIndex]?.text || '';
        const districtName = districtSelect.options[districtSelect.selectedIndex]?.text || '';
        const wardName = wardSelect.options[wardSelect.selectedIndex]?.text || '';

        const selectedLocationDiv = document.getElementById("selected-location");
        if (provinceName && districtName && wardName) {
            selectedLocationDiv.textContent = provinceName+`,`+ districtName+`,`+ wardName;
        } else {
            selectedLocationDiv.textContent = 'Tỉnh/Thành phố, Quận/Huyện, Phường/Xã';
        }
    }

    document.addEventListener("DOMContentLoaded", loadData);

</script>
<!-- Javascript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/swiper-bundle.min.js"></script>
<script type="text/javascript" src="js/carousel.js"></script>

<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="js/lazysize.min.js"></script>
<script type="text/javascript" src="js/count-down.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<script type="text/javascript" src="js/multiple-modal.js"></script>
<script type="text/javascript" src="js/main.js"></script>