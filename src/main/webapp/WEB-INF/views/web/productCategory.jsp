<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/6/2024
  Time: 2:43 PM
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
    <!-- top-bar -->
    <div class="tf-top-bar bg_white line">
        <div class="px_15 lg-px_40">
            <div class="tf-top-bar_wrap grid-3 gap-30 align-items-center">
                <ul class="tf-top-bar_item tf-social-icon d-flex gap-10">
                    <li><a href="#" class="box-icon w_28 round social-facebook bg_line"><i class="icon fs-12 icon-fb"></i></a></li>
                    <li><a href="#" class="box-icon w_28 round social-twiter bg_line"><i class="icon fs-10 icon-Icon-x"></i></a></li>
                    <li><a href="#" class="box-icon w_28 round social-instagram bg_line"><i class="icon fs-12 icon-instagram"></i></a></li>
                    <li><a href="#" class="box-icon w_28 round social-tiktok bg_line"><i class="icon fs-12 icon-tiktok"></i></a></li>
                    <li><a href="#" class="box-icon w_28 round social-pinterest bg_line"><i class="icon fs-12 icon-pinterest-1"></i></a></li>
                </ul>
                <div class="text-center overflow-hidden">
                    <div class="swiper tf-sw-top_bar" data-preview="1" data-space="0" data-loop="true" data-speed="1000" data-delay="2000">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <p class="top-bar-text fw-5">Khuyến mãi thời trang mùa xuân <a href="shop-default.html" title="all collection" class="tf-btn btn-line">Mua ngay<i class="icon icon-arrow1-top-left"></i></a></p>
                            </div>
                            <div class="swiper-slide">
                                <p class="top-bar-text fw-5">Khuyến mại mùa hè giảm giá 70%</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="top-bar-text fw-5">Đã đến lúc làm mới tủ đồ của bạn.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /top-bar -->
    <!-- header -->
    <!-- /header -->

    <!-- page-title -->
    <div class="tf-page-title">
        <div class="container-full">
            <div class="row">
                <div class="col-12">
                    <div class="heading text-center">Hàng mới về</div>
                    <p class="text-center text-2 text_black-2 mt_5">Mua sắm qua bộ sưu tập thời trang mới nhất của chúng tôi</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /page-title -->
    <section class="flat-spacing-1">
        <div class="container">
            <div class="tf-shop-control grid-3 align-items-center">
                <div class="tf-control-filter">
                    <!-- <a href="#filterShop" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="tf-btn-filter"><span class="icon icon-filter"></span><span class="text">Filter</span></a> -->
                </div>
                <ul class="tf-control-layout d-flex justify-content-center">
                    <li class="tf-view-layout-switch sw-layout-2" data-value-grid="grid-2">
                        <div class="item"><span class="icon icon-grid-2"></span></div>
                    </li>
                    <li class="tf-view-layout-switch sw-layout-3 active" data-value-grid="grid-3">
                        <div class="item"><span class="icon icon-grid-3"></span></div>
                    </li>
                    <li class="tf-view-layout-switch sw-layout-4" data-value-grid="grid-4">
                        <div class="item"><span class="icon icon-grid-4"></span></div>
                    </li>
                </ul>
                <div class="tf-control-sorting d-flex justify-content-end">
                    <div class="tf-dropdown-sort" data-bs-toggle="dropdown">
                        <div class="btn-select">
                            <span class="text-sort-value">Featured</span>
                            <span class="icon icon-arrow-down"></span>
                        </div>
                        <div class="dropdown-menu">
                            <div class="select-item active">
                                <span class="text-value-item">Featured</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Best selling</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Alphabetically, A-Z</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Alphabetically, Z-A</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Price, low to high</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Price, high to low</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Date, old to new</span>
                            </div>
                            <div class="select-item">
                                <span class="text-value-item">Date, new to old</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="tf-row-flex">
                <aside class="tf-shop-sidebar wrap-sidebar-mobile">
                    <div class="widget-facet wd-categories">
                        <div class="facet-title" data-bs-target="#categories" data-bs-toggle="collapse" aria-expanded="true" aria-controls="categories">
                            <span>Danh mục sản phẩm</span>
                            <span class="icon icon-arrow-up"></span>
                        </div>
                        <div id="categories" class="collapse show">
                            <ul class="list-categoris current-scrollbar mb_36">
                                <li class="cate-item current"><a href="#"><span>Thời trang</span>&nbsp;<span>(31)</span></a></li>
                                <li class="cate-item"><a href="#"><span>Nam</span>&nbsp;<span>(9)</span></a></li>
                                <li class="cate-item"><a href="#"><span>Nữ</span>&nbsp;<span>(23)</span></a></li>
                                <li class="cate-item"><a href="#"><span>Quần bò</span>&nbsp;<span>(20)</span></a></li>
                                <li class="cate-item"><a href="#"><span>Đầm</span>&nbsp;<span>(23)</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget-facet">
                        <div class="facet-title" data-bs-target="#shipping" data-bs-toggle="collapse" aria-expanded="true" aria-controls="shipping">
                            <span>Vận chuyển & Giao hàng</span>
                            <span class="icon icon-arrow-up"></span>
                        </div>
                        <div id="shipping" class="collapse show">
                            <ul class="widget-iconbox-list mb_36">
                                <li class="iconbox-item">
                                    <div class="box-icon w_50 round">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="16" viewBox="0 0 24 16" fill="none">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M0 1C0 0.447715 0.447715 0 1 0H15.5C16.0523 0 16.5 0.447715 16.5 1V3.5H19.7857C20.099 3.5 20.3943 3.64687 20.5833 3.89679L23.7976 8.14679C23.9289 8.32046 24 8.53225 24 8.75V13C24 13.5523 23.5523 14 23 14H20.3293C19.9174 15.1652 18.8062 16 17.5 16C16.1938 16 15.0826 15.1652 14.6707 14H8.82929C8.41745 15.1652 7.3062 16 6 16C4.69378 16 3.58255 15.1652 3.17071 14H1C0.447715 14 0 13.5523 0 13V1ZM3.17071 12C3.58255 10.8348 4.69378 10 6 10C7.3062 10 8.41745 10.8348 8.82929 12H14.5V2H2V12H3.17071ZM16.5 10.1707V5.5H19.2882L22 9.08557V12H20.3293C19.9174 10.8348 18.8062 10 17.5 10C17.1494 10 16.8128 10.0602 16.5 10.1707ZM6 12C5.44772 12 5 12.4477 5 13C5 13.5523 5.44772 14 6 14C6.55227 14 7 13.5523 7 13C7 12.4477 6.55227 12 6 12ZM17.5 12C16.9477 12 16.5 12.4477 16.5 13C16.5 13.5523 16.9477 14 17.5 14C18.0523 14 18.5 13.5523 18.5 13C18.5 12.4477 18.0523 12 17.5 12Z" fill="black"/>
                                        </svg>
                                    </div>
                                    <div class="iconbox-content">
                                        <h4 class="iconbox-title">Miễn phí vận chuyển</h4>
                                        <p class="iconbox-desc">Miễn phí cho tất cả các đơn hàng của Việt Nam</p>
                                    </div>
                                </li>
                                <li class="iconbox-item">
                                    <div class="box-icon w_50 round">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <path d="M14.9074 23.9572C13.9179 23.9561 12.9418 23.7273 12.0548 23.2887C9.58879 22.0801 7.33175 20.4851 5.36912 18.5641C3.44812 16.6015 1.85314 14.3444 0.644541 11.8784C0.0604334 10.6753 -0.133278 9.31981 0.0904706 8.0013C0.314219 6.68278 0.94425 5.46709 1.89254 4.52406L3.43026 2.98635C3.79573 2.62231 4.29056 2.41791 4.8064 2.41791C5.32225 2.41791 5.81707 2.62231 6.18255 2.98635L8.47798 5.29292C8.80356 5.62725 8.99924 6.06673 9.02988 6.5324C9.06052 6.99806 8.92409 7.45939 8.64512 7.83349L7.53084 9.3935C8.04739 11.0793 8.9739 12.6107 10.2274 13.8506C11.4467 15.0497 12.9375 15.9366 14.5731 16.4358L16.1331 15.3215C16.5094 15.041 16.9738 14.9047 17.4421 14.9374C17.9103 14.9701 18.3512 15.1696 18.6849 15.4998L20.9803 17.7952C21.3443 18.1607 21.5487 18.6555 21.5487 19.1714C21.5487 19.6872 21.3443 20.182 20.9803 20.5475L19.4426 22.0852C18.8467 22.6799 18.1394 23.1513 17.3613 23.4725C16.5831 23.7937 15.7493 23.9584 14.9074 23.9572ZM4.81197 4.08949C4.77414 4.08932 4.7367 4.09717 4.70212 4.11254C4.66755 4.1279 4.63663 4.15043 4.6114 4.17863L3.07369 5.70521C2.36974 6.40573 1.90384 7.30983 1.74187 8.28965C1.5799 9.26947 1.73006 10.2754 2.17111 11.1652C3.32229 13.4583 4.82631 15.5564 6.62826 17.3829C8.45481 19.1849 10.5529 20.6889 12.846 21.8401C13.7358 22.2811 14.7417 22.4313 15.7215 22.2693C16.7014 22.1074 17.6055 21.6415 18.306 20.9375L19.788 19.3552C19.8146 19.3302 19.8359 19.3 19.8504 19.2665C19.8649 19.2329 19.8724 19.1968 19.8724 19.1602C19.8724 19.1237 19.8649 19.0875 19.8504 19.054C19.8359 19.0204 19.8146 18.9902 19.788 18.9652L17.5594 16.6698C17.5086 16.6251 17.4432 16.6005 17.3756 16.6005C17.3079 16.6005 17.2425 16.6251 17.1917 16.6698L15.3197 18.0849C15.2278 18.1524 15.123 18.2002 15.0117 18.2251C14.9005 18.25 14.7853 18.2516 14.6734 18.2298C12.5479 17.7079 10.6152 16.5908 9.10198 15.0095C7.46364 13.4857 6.30245 11.5194 5.75912 9.34893C5.73795 9.23701 5.73988 9.12196 5.76479 9.01082C5.7897 8.89968 5.83707 8.79481 5.90398 8.70264L7.31912 6.83064C7.36378 6.7798 7.38841 6.71445 7.38841 6.64678C7.38841 6.57911 7.36378 6.51376 7.31912 6.46292L5.0014 4.17863C4.97837 4.15071 4.94944 4.12824 4.91668 4.11282C4.88393 4.09741 4.84817 4.08944 4.81197 4.08949ZM22.8857 14.2072C23.611 12.833 23.9933 11.3039 24 9.75007C24 8.46686 23.7467 7.19627 23.2546 6.01116C22.7626 4.82605 22.0414 3.74973 21.1325 2.84392C20.2236 1.93811 19.1448 1.22063 17.958 0.732616C16.7712 0.244602 15.4998 -0.00434226 14.2166 5.73114e-05C12.6627 0.00678991 11.1336 0.389078 9.75941 1.11434C9.57002 1.2205 9.42792 1.39451 9.36175 1.60129C9.29558 1.80807 9.31026 2.03225 9.40284 2.22863C9.50889 2.41806 9.68365 2.55953 9.89102 2.62381C10.0984 2.6881 10.3225 2.67029 10.5171 2.57406C11.6525 1.98346 12.9144 1.67754 14.1943 1.68263C16.3379 1.67967 18.395 2.52761 19.9139 4.04023C21.4328 5.55285 22.2892 7.60647 22.2951 9.75007C22.3002 11.0299 21.9943 12.2918 21.4037 13.4272C21.3075 13.6218 21.2897 13.846 21.354 14.0533C21.4182 14.2607 21.5597 14.4354 21.7491 14.5415C21.8713 14.5986 22.0043 14.629 22.1391 14.6306C22.2898 14.6318 22.4381 14.5933 22.5692 14.519C22.7002 14.4447 22.8094 14.3371 22.8857 14.2072ZM16.4451 11.9786C16.5822 11.8254 16.6579 11.6271 16.6579 11.4215C16.6579 11.2159 16.5822 11.0176 16.4451 10.8644L15.0523 9.40464V6.40721C15.0523 6.18556 14.9642 5.97299 14.8075 5.81627C14.6508 5.65954 14.4382 5.57149 14.2166 5.57149C13.9949 5.57149 13.7823 5.65954 13.6256 5.81627C13.4689 5.97299 13.3808 6.18556 13.3808 6.40721V9.75007C13.381 9.97164 13.4692 10.1841 13.626 10.3406L15.3308 11.9786C15.4841 12.1157 15.6824 12.1915 15.888 12.1915C16.0936 12.1915 16.2919 12.1157 16.4451 11.9786Z" fill="black"/>
                                        </svg>
                                    </div>
                                    <div class="iconbox-content">
                                        <h4 class="iconbox-title">Hỗ trợ cao cấp</h4>
                                        <p class="iconbox-desc">Hỗ trợ 24/7</p>
                                    </div>
                                </li>
                                <li class="iconbox-item">
                                    <div class="box-icon w_50 round">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <path d="M24 12C24 18.6173 18.6173 24 12 24C5.3827 24 0 18.6173 0 12C0 11.778 0.0882058 11.565 0.245213 11.408C0.40222 11.251 0.615168 11.1628 0.837209 11.1628C1.05925 11.1628 1.2722 11.251 1.42921 11.408C1.58621 11.565 1.67442 11.778 1.67442 12C1.67442 17.693 6.30698 22.3256 12 22.3256C17.693 22.3256 22.3256 17.693 22.3256 12C22.3256 6.30698 17.693 1.67442 12 1.67442C9.32224 1.68284 6.75254 2.73153 4.83349 4.59907H7.44558C7.66762 4.59907 7.88057 4.68728 8.03758 4.84428C8.19458 5.00129 8.28279 5.21424 8.28279 5.43628C8.28279 5.65832 8.19458 5.87127 8.03758 6.02828C7.88057 6.18528 7.66762 6.27349 7.44558 6.27349H2.98047C2.75842 6.27349 2.54548 6.18528 2.38847 6.02828C2.23146 5.87127 2.14326 5.65832 2.14326 5.43628V0.971163C2.14326 0.749121 2.23146 0.536174 2.38847 0.379166C2.54548 0.222159 2.75842 0.133953 2.98047 0.133953C3.20251 0.133953 3.41545 0.222159 3.57246 0.379166C3.72947 0.536174 3.81767 0.749121 3.81767 0.971163V3.27516C6.01451 1.20893 8.93247 0 12 0C18.6173 0 24 5.3827 24 12ZM12 5.02326C11.778 5.02326 11.565 5.11146 11.408 5.26847C11.251 5.42548 11.1628 5.63842 11.1628 5.86047V6.70437C10.6777 6.71712 10.2038 6.85211 9.78477 7.09685C9.36579 7.34158 9.01537 7.68813 8.76601 8.10437C8.51664 8.52061 8.3764 8.99307 8.35827 9.47795C8.34015 9.96283 8.44473 10.4444 8.66233 10.8781C9.00614 11.568 9.6 12.0837 10.3323 12.3271L13.1375 13.2625C13.4456 13.3641 13.6956 13.5807 13.8407 13.8709C13.9859 14.1611 14.0082 14.4904 13.9055 14.7974C13.8254 15.0393 13.6711 15.2498 13.4644 15.3989C13.2578 15.548 13.0094 15.6281 12.7546 15.6279H11.5312C11.193 15.6282 10.8632 15.5219 10.5889 15.3242C10.3146 15.1264 10.1095 14.8471 10.003 14.5261C9.96816 14.4218 9.91313 14.3253 9.84102 14.2422C9.76891 14.1591 9.68114 14.091 9.58272 14.0418C9.4843 13.9926 9.37716 13.9633 9.2674 13.9555C9.15765 13.9477 9.04744 13.9616 8.94307 13.9965C8.8387 14.0313 8.7422 14.0863 8.6591 14.1584C8.57599 14.2305 8.5079 14.3183 8.45872 14.4167C8.40953 14.5151 8.38022 14.6223 8.37244 14.732C8.36466 14.8418 8.37858 14.952 8.4134 15.0564C8.6122 15.6496 8.97661 16.1736 9.46359 16.5664C9.95057 16.9593 10.5398 17.2045 11.1617 17.2733V18.1395C11.1617 18.3616 11.2499 18.5745 11.4069 18.7315C11.5639 18.8885 11.7768 18.9767 11.9989 18.9767C12.2209 18.9767 12.4339 18.8885 12.5909 18.7315C12.7479 18.5745 12.8361 18.3616 12.8361 18.1395V17.2956C13.321 17.2828 13.7948 17.1478 14.2137 16.9031C14.6325 16.6584 14.9828 16.312 15.2322 15.8959C15.4815 15.4799 15.6218 15.0076 15.64 14.5229C15.6583 14.0381 15.5539 13.5566 15.3366 13.123C15.168 12.7829 14.9336 12.4798 14.6469 12.231C14.3602 11.9823 14.027 11.793 13.6666 11.674L10.8614 10.7386C10.5533 10.6359 10.3033 10.4193 10.1581 10.1291C10.013 9.83888 9.9907 9.5107 10.0934 9.20261C10.1735 8.96071 10.3278 8.75022 10.5344 8.60111C10.7411 8.45201 10.9895 8.37186 11.2443 8.37209H12.4666C13.1609 8.37209 13.776 8.81526 13.9959 9.47386C14.0662 9.68465 14.2174 9.85888 14.4162 9.95821C14.6149 10.0575 14.845 10.0738 15.0558 10.0035C15.2666 9.93322 15.4408 9.78205 15.5402 9.58328C15.6395 9.38451 15.6558 9.15442 15.5855 8.94363C15.3866 8.35022 15.022 7.82614 14.5348 7.43329C14.0476 7.04045 13.4582 6.79526 12.8361 6.7267V5.86047C12.8361 5.63842 12.7479 5.42548 12.5909 5.26847C12.4339 5.11146 12.2209 5.02326 11.9989 5.02326H12Z" fill="black"/>
                                        </svg>
                                    </div>
                                    <div class="iconbox-content">
                                        <h4 class="iconbox-title">Trả lại trong vòng 30 ngày</h4>
                                        <p class="iconbox-desc">Bạn có 30 ngày để trả lại</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget-facet">
                        <div class="facet-title" data-bs-target="#gallery" data-bs-toggle="collapse" aria-expanded="true" aria-controls="gallery">
                            <span>Trưng bày</span>
                            <span class="icon icon-arrow-up"></span>
                        </div>
                        <div id="gallery" class="collapse show">
                            <div class="grid-3 gap-4 mb_36">
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-1.jpg" alt="img-gallery">
                                </a>
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-2.jpg" alt="img-gallery">
                                </a>
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-3.jpg" src="images/shop/gallery/gallery-3.jpg" alt="img-gallery">
                                </a>
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-4.jpg" alt="img-gallery">
                                </a>
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-5.jpg" src="images/shop/gallery/gallery-5.jpg" alt="img-gallery">
                                </a>
                                <a href="product-detail.html" class="item-gallery">
                                    <img class="lazyload" data-src="images/shop/gallery/gallery-6.jpg" src="images/shop/gallery/gallery-6.jpg" alt="img-gallery">
                                </a>

                            </div>
                        </div>
                    </div>
                    <div class="widget-facet">
                        <div class="facet-title" data-bs-target="#follow" data-bs-toggle="collapse" aria-expanded="true" aria-controls="follow">
                            <span>Follow us</span>
                            <span class="icon icon-arrow-up"></span>
                        </div>
                        <div id="follow" class="collapse show">
                            <ul class="tf-social-icon d-flex gap-10">
                                <li><a href="#" class="box-icon w_34 round bg_line social-facebook"><i class="icon fs-14 icon-fb"></i></a></li>
                                <li><a href="#" class="box-icon w_34 round bg_line social-twiter"><i class="icon fs-12 icon-Icon-x"></i></a></li>
                                <li><a href="#" class="box-icon w_34 round bg_line social-instagram"><i class="icon fs-14 icon-instagram"></i></a></li>
                                <li><a href="#" class="box-icon w_34 round bg_line social-tiktok"><i class="icon fs-14 icon-tiktok"></i></a></li>
                                <li><a href="#" class="box-icon w_34 round bg_line social-pinterest"><i class="icon fs-14 icon-pinterest-1"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <div class="tf-shop-content">
                    <div class="grid-layout wrapper-shop" data-grid="grid-3">
                        <!-- card product 1 -->
                        <div class="card-product">
                            <div class="card-product-wrapper">
                                <a href="product-detail.html" class="product-img">
                                    <img class="lazyload img-product" data-src="images/products/orange-1.jpg" src="images/products/orange-1.jpg" alt="image-product">
                                    <img class="lazyload img-hover" data-src="images/products/white-1.jpg" src="images/products/white-1.jpg" alt="image-product">
                                </a>
                                <div class="list-product-btn absolute-2">
                                    <a href="#quick_add" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                        <span class="icon icon-bag"></span>
                                        <span class="tooltip">Quick Add</span>
                                    </a>
                                    <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                        <span class="icon icon-heart"></span>
                                        <span class="tooltip">Add to Wishlist</span>
                                        <span class="icon icon-delete"></span>
                                    </a>
                                    <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                        <span class="icon icon-compare"></span>
                                        <span class="tooltip">Add to Compare</span>
                                        <span class="icon icon-check"></span>
                                    </a>
                                    <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                        <span class="icon icon-view"></span>
                                        <span class="tooltip">Quick View</span>
                                    </a>
                                </div>
                            </div>
                            <div class="card-product-info">
                                <a href="product-detail.html" class="title link">Ribbed Tank Top</a>
                                <span class="price">$16.95</span>
                                <ul class="list-color-product">
                                    <li class="list-color-item color-swatch active">
                                        <span class="tooltip">Orange</span>
                                        <span class="swatch-value bg_orange-3"></span>
                                        <img class="lazyload" data-src="images/products/orange-1.jpg" src="images/products/orange-1.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">Black</span>
                                        <span class="swatch-value bg_dark"></span>
                                        <img class="lazyload" data-src="images/products/black-1.jpg" src="images/products/black-1.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">White</span>
                                        <span class="swatch-value bg_white"></span>
                                        <img class="lazyload" data-src="images/products/white-1.jpg" src="images/products/white-1.jpg" alt="image-product">
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- card product 2 -->
                        <div class="card-product">
                            <div class="card-product-wrapper">
                                <a href="product-detail.html" class="product-img">
                                    <img class="lazyload img-product" data-src="images/products/brown.jpg" src="images/products/brown.jpg" alt="image-product">
                                    <img class="lazyload img-hover" data-src="images/products/purple.jpg" src="images/products/purple.jpg" alt="image-product">
                                </a>
                                <div class="list-product-btn">
                                    <a href="#quick_add" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                        <span class="icon icon-bag"></span>
                                        <span class="tooltip">Quick Add</span>
                                    </a>
                                    <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                        <span class="icon icon-heart"></span>
                                        <span class="tooltip">Add to Wishlist</span>
                                        <span class="icon icon-delete"></span>
                                    </a>
                                    <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                        <span class="icon icon-compare"></span>
                                        <span class="tooltip">Add to Compare</span>
                                        <span class="icon icon-check"></span>
                                    </a>
                                    <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                        <span class="icon icon-view"></span>
                                        <span class="tooltip">Quick View</span>
                                    </a>
                                </div>
                                <div class="size-list">
                                    <span>M</span>
                                    <span>L</span>
                                    <span>XL</span>
                                </div>
                                <div class="countdown-box">
                                    <div class="js-countdown" data-timer="1007500" data-labels="d :,h :,m :,s"></div>
                                </div>
                                <div class="on-sale-wrap text-end">
                                    <div class="on-sale-item">-33%</div>
                                </div>
                            </div>
                            <div class="card-product-info">
                                <a href="product-detail.html" class="title link">Ribbed modal T-shirt</a>
                                <span class="price">From $18.95</span>
                                <ul class="list-color-product">
                                    <li class="list-color-item color-swatch active">
                                        <span class="tooltip">Brown</span>
                                        <span class="swatch-value bg_brown"></span>
                                        <img class="lazyload" data-src="images/products/brown.jpg" src="images/products/brown.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">Light Purple</span>
                                        <span class="swatch-value bg_purple"></span>
                                        <img class="lazyload" data-src="images/products/purple.jpg" src="images/products/purple.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">Light Green</span>
                                        <span class="swatch-value bg_light-green"></span>
                                        <img class="lazyload" data-src="images/products/green.jpg" src="images/products/green.jpg" alt="image-product">
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- card product 3 -->
                        <div class="card-product">
                            <div class="card-product-wrapper">
                                <a href="product-detail.html" class="product-img">
                                    <img class="lazyload img-product" data-src="images/products/white-3.jpg" src="images/products/white-3.jpg" alt="image-product">
                                    <img class="lazyload img-hover" data-src="images/products/white-4.jpg" src="images/products/white-4.jpg" alt="image-product">
                                </a>
                                <div class="list-product-btn absolute-2">
                                    <a href="#shoppingCart" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                        <span class="icon icon-bag"></span>
                                        <span class="tooltip">Add to cart</span>
                                    </a>
                                    <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                        <span class="icon icon-heart"></span>
                                        <span class="tooltip">Add to Wishlist</span>
                                        <span class="icon icon-delete"></span>
                                    </a>
                                    <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                        <span class="icon icon-compare"></span>
                                        <span class="tooltip">Add to Compare</span>
                                        <span class="icon icon-check"></span>
                                    </a>
                                    <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                        <span class="icon icon-view"></span>
                                        <span class="tooltip">Quick View</span>
                                    </a>
                                </div>
                            </div>
                            <div class="card-product-info">
                                <a href="product-detail.html" class="title link">Oversized Printed T-shirt</a>
                                <span class="price">$10.00</span>
                            </div>
                        </div>
                        <!-- card product 4 -->
                        <div class="card-product">
                            <div class="card-product-wrapper">
                                <a href="product-detail.html" class="product-img">
                                    <img class="lazyload img-product" data-src="images/products/white-2.jpg" src="images/products/white-2.jpg" alt="image-product">
                                    <img class="lazyload img-hover" data-src="images/products/pink-1.jpg" src="images/products/pink-1.jpg" alt="image-product">
                                </a>
                                <div class="list-product-btn">
                                    <a href="#quick_add" data-bs-toggle="modal" class="box-icon bg_white quick-add tf-btn-loading">
                                        <span class="icon icon-bag"></span>
                                        <span class="tooltip">Quick Add</span>
                                    </a>
                                    <a href="javascript:void(0);" class="box-icon bg_white wishlist btn-icon-action">
                                        <span class="icon icon-heart"></span>
                                        <span class="tooltip">Add to Wishlist</span>
                                        <span class="icon icon-delete"></span>
                                    </a>
                                    <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="box-icon bg_white compare btn-icon-action">
                                        <span class="icon icon-compare"></span>
                                        <span class="tooltip">Add to Compare</span>
                                        <span class="icon icon-check"></span>
                                    </a>
                                    <a href="#quick_view" data-bs-toggle="modal" class="box-icon bg_white quickview tf-btn-loading">
                                        <span class="icon icon-view"></span>
                                        <span class="tooltip">Quick View</span>
                                    </a>
                                </div>
                                <div class="size-list">
                                    <span>S</span>
                                    <span>M</span>
                                    <span>L</span>
                                    <span>XL</span>
                                </div>
                            </div>
                            <div class="card-product-info">
                                <a href="product-detail.html" class="title">Oversized Printed T-shirt</a>
                                <span class="price">$16.95</span>
                                <ul class="list-color-product">
                                    <li class="list-color-item color-swatch active">
                                        <span class="tooltip">White</span>
                                        <span class="swatch-value bg_white"></span>
                                        <img class="lazyload" data-src="images/products/white-2.jpg" src="images/products/white-2.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">Pink</span>
                                        <span class="swatch-value bg_purple"></span>
                                        <img class="lazyload" data-src="images/products/pink-1.jpg" src="images/products/pink-1.jpg" alt="image-product">
                                    </li>
                                    <li class="list-color-item color-swatch">
                                        <span class="tooltip">Black</span>
                                        <span class="swatch-value bg_dark"></span>
                                        <img class="lazyload" data-src="images/products/black-2.jpg" src="images/products/black-2.jpg" alt="image-product">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- pagination -->
                    <ul class="tf-pagination-wrap tf-pagination-list">
                        <li class="active">
                            <a href="#" class="pagination-link">1</a>
                        </li>
                        <li>
                            <a href="#" class="pagination-link animate-hover-btn">2</a>
                        </li>
                        <li>
                            <a href="#" class="pagination-link animate-hover-btn">3</a>
                        </li>
                        <li>
                            <a href="#" class="pagination-link animate-hover-btn">4</a>
                        </li>
                        <li>
                            <a href="#" class="pagination-link animate-hover-btn">
                                <span class="icon icon-arrow-right"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </section>
    <div class="btn-sidebar-style2">
        <button data-bs-toggle="offcanvas" data-bs-target="#sidebarmobile" aria-controls="offcanvas"><i class="icon icon-sidebar-2"></i></button>
    </div>
    <!-- footer -->
    <footer id="footer" class="footer background-gray md-pb-70">
        <div class="footer-wrap">
            <div class="footer-body">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-md-6 col-12">
                            <div class="footer-infor">
                                <div class="footer-logo">
                                    <a href="index.html">
                                        <img src="images/logo/logo.svg" alt="">
                                    </a>
                                </div>
                                <ul>
                                    <li>
                                        <p>Địa chỉ: Tầng 8, tòa nhà Ford, số 313 Trường Chinh, quận Thanh Xuân, Hồ Chí Minh
                                        </p>
                                    </li>
                                    <li>
                                        <p>Email: <a href="#">info@fashionshop.com</a></p>
                                    </li>
                                    <li>
                                        <p>Phone: <a href="#">0964942121</a></p>
                                    </li>
                                </ul>
                                <ul class="tf-social-icon d-flex gap-10">
                                    <li><a href="#" class="box-icon w_34 round social-facebook social-line"><i class="icon fs-14 icon-fb"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-twiter social-line"><i class="icon fs-12 icon-Icon-x"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-instagram social-line"><i class="icon fs-14 icon-instagram"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-tiktok social-line"><i class="icon fs-14 icon-tiktok"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-pinterest social-line"><i class="icon fs-14 icon-pinterest-1"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 col-12 footer-col-block">
                            <div class="footer-heading footer-heading-desktop">
                                <h6>Trợ Giúp</h6>
                            </div>
                            <div class="footer-heading footer-heading-moblie">
                                <h6>Trợ Giúp</h6>
                            </div>
                            <ul class="footer-menu-list tf-collapse-content">
                                <li>
                                    <a href="privacy-policy.html" class="footer-menu_item">Chính sách bảo mật</a>
                                </li>
                                <li>
                                    <a href="delivery-return.html" class="footer-menu_item">  Trả hàng + Đổi hàng </a>
                                </li>
                                <li>
                                    <a href="shipping-delivery.html" class="footer-menu_item">Vận chuyển</a>
                                </li>
                                <li>
                                    <a href="terms-conditions.html" class="footer-menu_item">Điều khoản &amp; Điều kiện</a>
                                </li>
                                <li>
                                    <a href="faq-1.html" class="footer-menu_item">Câu hỏi thường gặp</a>
                                </li>
                                <li>
                                    <a href="compare.html" class="footer-menu_item">So Sánh</a>
                                </li>
                                <li>
                                    <a href="wishlist.html" class="footer-menu_item">Danh sách mong muốn của tôi</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xl-3 col-md-6 col-12 footer-col-block">
                            <div class="footer-heading footer-heading-desktop">
                                <h6>Về chúng tôi</h6>
                            </div>
                            <div class="footer-heading footer-heading-moblie">
                                <h6>Về chúng tôi</h6>
                            </div>
                            <ul class="footer-menu-list tf-collapse-content">
                                <li>
                                    <a href="about-us.html" class="footer-menu_item">Câu chuyện của chúng tôi</a>
                                </li>
                                <li>
                                    <a href="our-store.html" class="footer-menu_item">Ghé thăm cửa hàng của chúng tôi</a>
                                </li>
                                <li>
                                    <a href="contact-1.html" class="footer-menu_item">Liên hệ với chúng tôi</a>
                                </li>
                                <li>
                                    <a href="login.html" class="footer-menu_item">Tài khoản</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xl-3 col-md-6 col-12">
                            <div class="footer-newsletter footer-col-block">
                                <div class="footer-heading footer-heading-desktop">
                                    <h6>Đăng ký nhận Email</h6>
                                </div>
                                <div class="footer-heading footer-heading-moblie">
                                    <h6>Đăng ký nhận Email</h6>
                                </div>
                                <div class="tf-collapse-content">
                                    <div class="footer-menu_item">Đăng ký để nhận thông tin đầu tiên về hàng mới về, chương trình khuyến mại, nội dung độc quyền, sự kiện và nhiều hơn nữa!</div>
                                    <form class="form-newsletter" id="subscribe-form" action="#" method="post" accept-charset="utf-8" data-mailchimp="true">
                                        <div id="subscribe-content">
                                            <fieldset class="email">
                                                <input type="email" name="email-form" id="subscribe-email" placeholder="Nhập email của bạn ...." tabindex="0" aria-required="true">
                                            </fieldset>
                                            <div class="button-submit">
                                                <button id="subscribe-button" class="tf-btn btn-sm radius-3 btn-fill btn-icon animate-hover-btn" type="button">Đăng ký<i class="icon icon-arrow1-top-left"></i></button>
                                            </div>
                                        </div>
                                        <div id="subscribe-msg"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="footer-bottom-wrap d-flex gap-20 flex-wrap justify-content-between align-items-center">
                                <div class="footer-menu_item">© 2024 Ecomus Store. All Rights Reserved</div>
                                <div class="tf-payment">
                                    <img src="images/payments/visa.png" alt="">
                                    <img src="images/payments/img-1.png" alt="">
                                    <img src="images/payments/img-2.png" alt="">
                                    <img src="images/payments/img-3.png" alt="">
                                    <img src="images/payments/img-4.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- /footer -->

</div>

<!-- gotop -->
<div class="progress-wrap">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 286.138;"></path>
    </svg>
</div>
<!-- /gotop -->

<!-- toolbar-bottom -->
<div class="tf-toolbar-bottom type-1150">
    <div class="toolbar-item active">
        <a href="#toolbarShopmb" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft">
            <div class="toolbar-icon">
                <i class="icon-shop"></i>
            </div>
            <div class="toolbar-label">Shop</div>
        </a>
    </div>
    <div class="toolbar-item">
        <a href="#filterShop" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft">
            <div class="toolbar-icon">
                <i class="icon-fill"></i>
            </div>
            <div class="toolbar-label">Filter</div>
        </a>
    </div>
    <div class="toolbar-item">
        <a href="#canvasSearch" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft">
            <div class="toolbar-icon">
                <i class="icon-search"></i>
            </div>
            <div class="toolbar-label">Search</div>
        </a>
    </div>
    <div class="toolbar-item">
        <a href="#login" data-bs-toggle="modal">
            <div class="toolbar-icon">
                <i class="icon-account"></i>
            </div>
            <div class="toolbar-label">Account</div>
        </a>
    </div>
    <div class="toolbar-item">
        <a href="wishlist.html">
            <div class="toolbar-icon">
                <i class="icon-heart"></i>
                <div class="toolbar-count">0</div>
            </div>
            <div class="toolbar-label">Wishlist</div>
        </a>
    </div>
    <div class="toolbar-item">
        <a href="#shoppingCart" data-bs-toggle="modal">
            <div class="toolbar-icon">
                <i class="icon-bag"></i>
                <div class="toolbar-count">1</div>
            </div>
            <div class="toolbar-label">Cart</div>
        </a>
    </div>
</div>
<!-- /toolbar-bottom -->
<!-- modalDemo -->
<div class="modal fade modalDemo" id="modalDemo">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <h5 class="demo-title">Ultimate HTML Theme</h5>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="mega-menu">
                <div class="row-demo">
                    <div class="demo-item">
                        <a href="index.html">
                            <div class="demo-image position-relative">
                                <img class="lazyload" data-src="images/demo/home-01.jpg" src="images/demo/home-01.jpg" alt="home-01">
                                <div class="demo-label">
                                    <span class="demo-new">New</span>
                                    <span>Trend</span>
                                </div>
                            </div>
                            <span class="demo-name">Home Fashion 01</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-multi-brand.html">
                            <div class="demo-image position-relative">
                                <img class="lazyload" data-src="images/demo/home-multi-brand.jpg" src="images/demo/home-multi-brand.jpg" alt="home-multi-brand">
                                <div class="demo-label">
                                    <span class="demo-new">New</span>
                                    <span class="demo-hot">Hot</span>
                                </div>
                            </div>
                            <span class="demo-name">Home Multi Brand</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-02.html">
                            <div class="demo-image position-relative">
                                <img class="lazyload" data-src="images/demo/home-02.jpg" src="images/demo/home-02.jpg" alt="home-02">
                                <div class="demo-label">
                                    <span class="demo-hot">Hot</span>
                                </div>
                            </div>
                            <span class="demo-name">Home Fashion 02</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-03.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-03.jpg" src="images/demo/home-03.jpg" alt="home-03">
                            </div>
                            <span class="demo-name">Home Fashion 03</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-04.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-04.jpg" src="images/demo/home-04.jpg" alt="home-04">
                            </div>
                            <span class="demo-name">Home Fashion 04</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-05.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-05.jpg" src="images/demo/home-05.jpg" alt="home-05">
                            </div>
                            <span class="demo-name">Home Fashion 05</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-06.html">
                            <div class="demo-image position-relative">
                                <img class="lazyload" data-src="images/demo/home-06.jpg" src="images/demo/home-06.jpg" alt="home-06">
                                <div class="demo-label">
                                    <span class="demo-new">New</span>
                                </div>
                            </div>
                            <span class="demo-name">Home Fashion 06</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-07.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-07.jpg" src="images/demo/home-07.jpg" alt="home-07">
                            </div>
                            <span class="demo-name">Home Fashion 07</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-08.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-08.jpg" src="images/demo/home-08.jpg" alt="home-08">
                            </div>
                            <span class="demo-name">Home Fashion 08</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-skincare.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-skincare.jpg" src="images/demo/home-skincare.jpg" alt="home-skincare">
                            </div>
                            <span class="demo-name">Home Skincare</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-headphone.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-headphone.jpg" src="images/demo/home-headphone.jpg" alt="home-headphone">
                            </div>
                            <span class="demo-name">Home Headphone</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-giftcard.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-giftcard.jpg" src="images/demo/home-giftcard.jpg" alt="home-gift-card">
                            </div>
                            <span class="demo-name">Home Gift Card</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-furniture.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-furniture.jpg" src="images/demo/home-furniture.jpg" alt="home-furniture">
                            </div>
                            <span class="demo-name">Home Furniture</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-furniture-02.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-furniture2.jpg" src="images/demo/home-furniture2.jpg" alt="home-furniture-2">
                            </div>
                            <span class="demo-name">Home Furniture 2</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-skateboard.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-skateboard.jpg" src="images/demo/home-skateboard.jpg" alt="home-skateboard">
                            </div>
                            <span class="demo-name">Home Skateboard</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-stroller.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-stroller.jpg" src="images/demo/home-stroller.jpg" alt="home-stroller">
                            </div>
                            <span class="demo-name">Home Stroller</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-decor.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-decor.jpg" src="images/demo/home-decor.jpg" alt="home-decor">
                            </div>
                            <span class="demo-name">Home Decor</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-electronic.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-electronic.jpg" src="images/demo/home-electronic.jpg" alt="home-electronic">
                            </div>
                            <span class="demo-name">Home Electronic</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-setup-gear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-setup-gear.jpg" src="images/demo/home-setup-gear.jpg" alt="home-setup-gear">
                            </div>
                            <span class="demo-name">Home Setup Gear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-dog-accessories.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-dog-accessories.jpg" src="images/demo/home-dog-accessories.jpg" alt="home-dog-accessories">
                            </div>
                            <span class="demo-name">Home Dog Accessories</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-kitchen-wear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-kitchen.jpg" src="images/demo/home-kitchen.jpg" alt="home-kitchen-wear">
                            </div>
                            <span class="demo-name">Home Kitchen Wear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-phonecase.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-phonecase.jpg" src="images/demo/home-phonecase.jpg" alt="home-phonecase">
                            </div>
                            <span class="demo-name">Home Phonecase</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-paddle-boards.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home_paddle_board.jpg" src="images/demo/home_paddle_board.jpg" alt="home-paddle_board">
                            </div>
                            <span class="demo-name">Home Paddle Boards</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-glasses.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-glasses.jpg" src="images/demo/home-glasses.jpg" alt="home-glasses">
                            </div>
                            <span class="demo-name">Home Glasses</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-pod-store.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-pod-store.jpg" src="images/demo/home-pod-store.jpg" alt="home-pod-store">
                            </div>
                            <span class="demo-name">Home POD Store</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-activewear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-activewear.jpg" src="images/demo/home-activewear.jpg" alt="home-activewear">
                            </div>
                            <span class="demo-name">Activewear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-handbag.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-handbag.jpg" src="images/demo/home-handbag.jpg" alt="home-handbag">
                            </div>
                            <span class="demo-name">Home Handbag</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-tee.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-tee.jpg" src="images/demo/home-tee.jpg" alt="home-tee">
                            </div>
                            <span class="demo-name">Home Tee</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-sock.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-socks.jpg" src="images/demo/home-socks.jpg" alt="home-sock">
                            </div>
                            <span class="demo-name">Home Sock</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-jewerly.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-jewelry.jpg" src="images/demo/home-jewelry.jpg" alt="home-jewelry">
                            </div>
                            <span class="demo-name">Home Jewelry</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-sneaker.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-sneaker.jpg" src="images/demo/home-sneaker.jpg" alt="home-sneaker">
                            </div>
                            <span class="demo-name">Home Sneaker</span>
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- /modalDemo -->
<!-- mobile menu -->
<div class="offcanvas offcanvas-start canvas-mb" id="mobileMenu">
    <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
    <div class="mb-canvas-content">
        <div class="mb-body">
            <ul class="nav-ul-mb" id="wrapper-menu-navigation">
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-one" class="collapsed mb-menu-link current" data-bs-toggle="collapse" aria-expanded="true" aria-controls="dropdown-menu-one">
                        <span>Home</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-one" class="collapse">
                        <ul class="sub-nav-menu" >
                            <li><a href="index.html" class="sub-nav-link">Home Fashion 01</a></li>
                            <li><a href="home-02.html" class="sub-nav-link">Home Fashion 02</a></li>
                            <li><a href="home-03.html" class="sub-nav-link">Home Fashion 03</a></li>
                            <li><a href="home-04.html" class="sub-nav-link">Home Fashion 04</a></li>
                            <li><a href="home-05.html" class="sub-nav-link">Home Fashion 05</a></li>
                            <li><a href="home-06.html" class="sub-nav-link">Home Fashion 06</a></li>
                            <li><a href="home-07.html" class="sub-nav-link">Home Fashion 07</a></li>
                            <li><a href="home-08.html" class="sub-nav-link">Home Fashion 08</a></li>
                            <li><a href="home-giftcard.html" class="sub-nav-link">Home Gift Card</a></li>
                            <li><a href="home-headphone.html" class="sub-nav-link">Home Headphone</a></li>
                            <li><a href="home-multi-brand.html" class="sub-nav-link">Home Multi Brand</a></li>
                            <li><a href="home-skincare.html" class="sub-nav-link">Home skincare</a></li>
                            <li><a href="home-headphone.html" class="sub-nav-link">Home Headphone</a></li>
                            <li><a href="home-giftcard.html" class="sub-nav-link">Home Gift Card</a></li>
                            <li><a href="home-furniture.html" class="sub-nav-link">Home Furniture</a></li>
                            <li><a href="home-furniture-02.html" class="sub-nav-link">Home Furniture 2</a></li>
                            <li><a href="home-skateboard.html" class="sub-nav-link">Home Skateboard</a></li>
                            <li><a href="home-stroller.html" class="sub-nav-link">Home Stroller</a></li>
                            <li><a href="home-decor.html" class="sub-nav-link">Home Decor</a></li>
                            <li><a href="home-electronic.html" class="sub-nav-link">Home Electronic</a></li>
                            <li><a href="home-setup-gear.html" class="sub-nav-link">Home Setup Gear</a></li>
                            <li><a href="home-dog-accessories.html" class="sub-nav-link">Home Dog Accessories</a></li>
                            <li><a href="home-kitchen-wear.html" class="sub-nav-link">Home Kitchen Wear</a></li>
                            <li><a href="home-phonecase.html" class="sub-nav-link">Home Phonecase</a></li>
                            <li><a href="home-paddle-boards.html" class="sub-nav-link">Home Paddle Boards</a></li>
                            <li><a href="home-glasses.html" class="sub-nav-link">Home Glasses</a></li>
                            <li><a href="home-pod-store.html" class="sub-nav-link">Home POD Store</a></li>
                            <li><a href="home-activewear.html" class="sub-nav-link">Home Activewear</a></li>
                            <li><a href="home-handbag.html" class="sub-nav-link">Home Handbag</a></li>
                            <li><a href="home-tee.html" class="sub-nav-link">Home Tee</a></li>
                            <li><a href="home-sock.html" class="sub-nav-link">Home Sock</a></li>
                            <li><a href="home-jewerly.html" class="sub-nav-link">Home Jewelry</a></li>
                            <li><a href="home-sneaker.html" class="sub-nav-link">Home Sneaker</a></li>
                        </ul>
                    </div>

                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-two" class="collapsed mb-menu-link current" data-bs-toggle="collapse" aria-expanded="true" aria-controls="dropdown-menu-two">
                        <span>Shop</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-two" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li><a href="#sub-shop-one" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-shop-one">
                                <span>Shop layouts</span>
                                <span class="btn-open-sub"></span>
                            </a>
                                <div id="sub-shop-one" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="shop-default.html" class="sub-nav-link">Default</a></li>
                                        <li><a href="shop-left-sidebar.html" class="sub-nav-link">Left sidebar</a></li>
                                        <li><a href="shop-right-sidebar.html" class="sub-nav-link">Right sidebar</a></li>
                                        <li><a href="shop-fullwidth.html" class="sub-nav-link">Fullwidth</a></li>
                                        <li><a href="shop-collection-sub.html" class="sub-nav-link">Sub collection</a></li>
                                        <li><a href="shop-collection-list.html" class="sub-nav-link">Collections list</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-shop-two" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-shop-two">
                                    <span>Features</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-shop-two" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="shop-link.html" class="sub-nav-link">Pagination links</a></li>
                                        <li><a href="shop-loadmore.html" class="sub-nav-link">Pagination loadmore</a></li>
                                        <li><a href="shop-infinite-scrolling.html" class="sub-nav-link">Pagination infinite scrolling</a></li>
                                        <li><a href="shop-filter-sidebar.html" class="sub-nav-link">Filter sidebar</a></li>
                                        <li><a href="shop-filter-hidden.html" class="sub-nav-link">Filter hidden</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-shop-three" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-shop-three">
                                    <span>Product styles</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-shop-three" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-style-list.html" class="sub-nav-link">Product style list</a></li>
                                        <li><a href="product-style-01.html" class="sub-nav-link">Product style 01</a></li>
                                        <li><a href="product-style-02.html" class="sub-nav-link">Product style 02</a></li>
                                        <li><a href="product-style-03.html" class="sub-nav-link">Product style 03</a></li>
                                        <li><a href="product-style-04.html" class="sub-nav-link">Product style 04</a></li>
                                        <li><a href="product-style-05.html" class="sub-nav-link">Product style 05</a></li>
                                        <li><a href="product-style-06.html" class="sub-nav-link">Product style 06</a></li>
                                        <li><a href="product-style-07.html" class="sub-nav-link">Product style 07</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-three" class="collapsed mb-menu-link current" data-bs-toggle="collapse" aria-expanded="true" aria-controls="dropdown-menu-three">
                        <span>Products</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-three" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li>
                                <a href="#sub-product-one" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-product-one">
                                    <span>Product layouts</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-one" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-detail.html" class="sub-nav-link">Product default</a></li>
                                        <li><a href="product-grid-1.html" class="sub-nav-link">Product grid 1</a></li>
                                        <li><a href="product-grid-2.html" class="sub-nav-link">Product grid 2</a></li>
                                        <li><a href="product-stacked.html" class="sub-nav-link">Product stacked</a></li>
                                        <li><a href="product-right-thumbnails.html" class="sub-nav-link">Product right thumbnails</a></li>
                                        <li><a href="product-bottom-thumbnails.html" class="sub-nav-link">Product bottom thumbnails</a></li>
                                        <li><a href="product-drawer-sidebar.html" class="sub-nav-link">Product drawer sidebar</a></li>
                                        <li><a href="product-description-accordion.html" class="sub-nav-link">Product description accordion</a></li>
                                        <li><a href="product-description-list.html" class="sub-nav-link">Product description list</a></li>
                                        <li><a href="product-description-vertical.html" class="sub-nav-link">Product description vertical</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-two" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-product-two">
                                    <span>Product details</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-two" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-inner-zoom.html" class="sub-nav-link">Product inner zoom</a></li>
                                        <li><a href="product-zoom-magnifier.html" class="sub-nav-link">Product zoom magnifier</a></li>
                                        <li><a href="product-no-zoom.html" class="sub-nav-link">Product no zoom</a></li>
                                        <li><a href="product-photoswipe-popup.html" class="sub-nav-link">Product photoswipe popup</a></li>
                                        <li><a href="product-zoom-popup.html" class="sub-nav-link">Product external zoom and photoswipe popup</a></li>
                                        <li><a href="product-video.html" class="sub-nav-link">Product video</a></li>
                                        <li><a href="product-3d.html" class="sub-nav-link">Product 3D, AR models</a></li>
                                        <li><a href="product-options-customizer.html" class="sub-nav-link">Product options & customizer</a></li>
                                        <li><a href="product-advanced-types.html" class="sub-nav-link">Advanced product types</a></li>
                                        <li><a href="product-giftcard.html" class="sub-nav-link">Recipient information form for gift card products</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-three" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-product-three">
                                    <span>Product swatchs</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-three" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-color-swatch.html" class="sub-nav-link">Product color swatch</a></li>
                                        <li><a href="product-rectangle.html" class="sub-nav-link">Product rectangle</a></li>
                                        <li><a href="product-rectangle-color.html" class="sub-nav-link">Product rectangle color</a></li>
                                        <li><a href="product-swatch-image.html" class="sub-nav-link">Product swatch image</a></li>
                                        <li><a href="product-swatch-image-rounded.html" class="sub-nav-link">Product swatch image rounded</a></li>
                                        <li><a href="product-swatch-dropdown.html" class="sub-nav-link">Product swatch dropdown</a></li>
                                        <li><a href="product-swatch-dropdown-color.html" class="sub-nav-link">Product swatch dropdown color</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-four" class="sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="sub-product-four">
                                    <span>Product features</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-four" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-frequently-bought-together.html" class="sub-nav-link">Frequently bought together</a></li>
                                        <li><a href="product-frequently-bought-together-2.html" class="sub-nav-link">Frequently bought together 2</a></li>
                                        <li><a href="product-upsell-features.html" class="sub-nav-link">Product upsell features</a></li>
                                        <li><a href="product-pre-orders.html" class="sub-nav-link">Product pre-orders</a></li>
                                        <li><a href="product-notification.html" class="sub-nav-link">Back in stock notification</a></li>
                                        <li><a href="product-pickup.html" class="sub-nav-link">Product pickup</a></li>
                                        <li><a href="product-images-grouped.html" class="sub-nav-link">Variant images grouped</a></li>
                                        <li><a href="product-complimentary.html" class="sub-nav-link">Complimentary products</a></li>
                                        <li><a href="product-quick-order-list.html" class="sub-nav-link line-clamp">Quick order list<div class="demo-label"><span class="demo-new">New</span></div></a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-four" class="collapsed mb-menu-link current" data-bs-toggle="collapse" aria-expanded="true" aria-controls="dropdown-menu-four">
                        <span>Pages</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-four" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li><a href="about-us.html" class="sub-nav-link">About us</a></li>
                            <li><a href="brands.html" class="sub-nav-link line-clamp">Brands<div class="demo-label"><span class="demo-new">New</span></div></a></li>
                            <li><a href="brands-v2.html" class="sub-nav-link">Brands V2</a></li>
                            <li><a href="contact-1.html" class="sub-nav-link">Contact 1</a></li>
                            <li><a href="contact-2.html" class="sub-nav-link">Contact 2</a></li>
                            <li><a href="faq-1.html" class="sub-nav-link">FAQ 01</a></li>
                            <li><a href="faq-2.html" class="sub-nav-link">FAQ 02</a></li>
                            <li><a href="our-store.html" class="sub-nav-link">Our store</a></li>
                            <li><a href="store-locations.html" class="sub-nav-link">Store locator</a></li>
                            <li><a href="timeline.html" class="sub-nav-link line-clamp">Timeline<div class="demo-label"><span class="demo-new">New</span></div></a></li>
                            <li><a href="view-cart.html" class="sub-nav-link line-clamp">View cart</a></li>
                            <li><a href="checkout.html" class="sub-nav-link line-clamp">Check out</a></li>
                            <li><a href="payment-confirmation.html" class="sub-nav-link line-clamp">Payment Confirmation</a></li>
                            <li><a href="payment-failure.html" class="sub-nav-link line-clamp">Payment Failure</a></li>
                            <li><a href="my-account.html" class="sub-nav-link line-clamp">My Account</a></li>
                        </ul>
                    </div>

                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-five" class="collapsed mb-menu-link current" data-bs-toggle="collapse" aria-expanded="true" aria-controls="dropdown-menu-five">
                        <span>Blog</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-five" class="collapse">
                        <ul class="sub-nav-menu" >
                            <li><a href="blog-grid.html" class="sub-nav-link">Grid layout</a></li>
                            <li><a href="blog-sidebar-left.html" class="sub-nav-link">Left sidebar</a></li>
                            <li><a href="blog-sidebar-right.html" class="sub-nav-link">Right sidebar</a></li>
                            <li><a href="blog-list.html" class="sub-nav-link">Blog list</a></li>
                            <li><a href="blog-detail.html" class="sub-nav-link">Single Post</a></li>
                        </ul>
                    </div>

                </li>
                <li class="nav-mb-item">
                    <a href="https://themeforest.net/item/ecomus-ultimate-html5-template/53417990?s_rank=3" class="mb-menu-link">Buy now</a>
                </li>
            </ul>
            <div class="mb-other-content">
                <div class="d-flex group-icon">
                    <a href="wishlist.html" class="site-nav-icon"><i class="icon icon-heart"></i>Wishlist</a>
                    <a href="home-search.html" class="site-nav-icon"><i class="icon icon-search"></i>Search</a>
                </div>
                <div class="mb-notice">
                    <a href="contact-1.html" class="text-need">Need help ?</a>
                </div>
                <ul class="mb-info">
                    <li>Address: 1234 Fashion Street, Suite 567, <br> New York, NY 10001</li>
                    <li>Email: <b>info@fashionshop.com</b></li>
                    <li>Phone: <b>(212) 555-1234</b></li>
                </ul>
            </div>
        </div>
        <div class="mb-bottom">
            <a href="login.html" class="site-nav-icon"><i class="icon icon-account"></i>Login</a>
            <div class="bottom-bar-language">
                <div class="tf-currencies">
                    <select class="image-select center style-default type-currencies">
                        <option data-thumbnail="images/country/fr.svg">EUR <span>€ | France</span></option>
                        <option data-thumbnail="images/country/de.svg">EUR <span>€ | Germany</span></option>
                        <option selected data-thumbnail="images/country/us.svg">USD <span>$ | United States</span></option>
                        <option data-thumbnail="images/country/vn.svg">VND <span>₫ | Vietnam</span></option>
                    </select>
                </div>
                <div class="tf-languages">
                    <select class="image-select center style-default type-languages">
                        <option>English</option>
                        <option>العربية</option>
                        <option>简体中文</option>
                        <option>اردو</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /mobile menu -->

<!-- Filter -->
<div class="offcanvas offcanvas-start canvas-filter" id="filterShop">
    <div class="canvas-wrapper">
        <header class="canvas-header">
            <div class="filter-icon">
                <span class="icon icon-filter"></span>
                <span>Filter</span>
            </div>
            <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
        </header>
        <div class="canvas-body">
            <div class="widget-facet wd-categories">
                <div class="facet-title" data-bs-target="#categories" data-bs-toggle="collapse" aria-expanded="true" aria-controls="categories">
                    <span>Product categories</span>
                    <span class="icon icon-arrow-up"></span>
                </div>
                <div id="categories" class="collapse show">
                    <ul class="list-categoris current-scrollbar mb_36">
                        <li class="cate-item current"><a href="shop-default.html"><span>Fashion</span></a></li>
                        <li class="cate-item"><a href="shop-default.html"><span>Men</span></a></li>
                        <li class="cate-item"><a href="shop-default.html"><span>Women</span></a></li>
                        <li class="cate-item"><a href="shop-default.html"><span>Denim</span></a></li>
                        <li class="cate-item"><a href="shop-default.html"><span>Dress</span></a></li>
                    </ul>
                </div>
            </div>
            <form action="#" id="facet-filter-form" class="facet-filter-form">
                <div class="widget-facet">
                    <div class="facet-title" data-bs-target="#availability" data-bs-toggle="collapse" aria-expanded="true" aria-controls="availability">
                        <span>Availability</span>
                        <span class="icon icon-arrow-up"></span>
                    </div>
                    <div id="availability" class="collapse show">
                        <ul class="tf-filter-group current-scrollbar mb_36">
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="availability" class="tf-check" id="availability-1">
                                <label for="availability-1" class="label"><span>In stock</span>&nbsp;<span>(14)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="availability" class="tf-check" id="availability-2">
                                <label for="availability-2" class="label"><span>Out of stock</span>&nbsp;<span>(2)</span></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget-facet">
                    <div class="facet-title" data-bs-target="#price" data-bs-toggle="collapse" aria-expanded="true" aria-controls="price">
                        <span>Price</span>
                        <span class="icon icon-arrow-up"></span>
                    </div>
                    <div id="price" class="collapse show">
                        <div class="widget-price">
                            <div id="slider-range"></div>
                            <div class="box-title-price">
                                <span class="title-price">Price :</span>
                                <div class="caption-price">
                                    <div>
                                        <span>$</span>
                                        <span id="slider-range-value1" class=""></span>
                                    </div>
                                    <span>-</span>
                                    <div>
                                        <span>$</span>
                                        <span id="slider-range-value2" class=""></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="widget-facet">
                    <div class="facet-title" data-bs-target="#brand" data-bs-toggle="collapse" aria-expanded="true" aria-controls="brand">
                        <span>Brand</span>
                        <span class="icon icon-arrow-up"></span>
                    </div>
                    <div id="brand" class="collapse show">
                        <ul class="tf-filter-group current-scrollbar mb_36">
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="brand" class="tf-check" id="brand-1">
                                <label for="brand-1" class="label"><span>Ecomus</span>&nbsp;<span>(8)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="brand" class="tf-check" id="brand-2">
                                <label for="brand-2" class="label"><span>M&H</span>&nbsp;<span>(8)</span></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget-facet">
                    <div class="facet-title" data-bs-target="#color" data-bs-toggle="collapse" aria-expanded="true" aria-controls="color">
                        <span>Color</span>
                        <span class="icon icon-arrow-up"></span>
                    </div>
                    <div id="color" class="collapse show">
                        <ul class="tf-filter-group filter-color current-scrollbar mb_36">
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_beige" id="beige">
                                <label for="beige" class="label"><span>Beige</span>&nbsp;<span>(3)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_dark" id="black">
                                <label for="black" class="label"><span>Black</span>&nbsp;<span>(18)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_blue-2" id="blue">
                                <label for="blue" class="label"><span>Blue</span>&nbsp;<span>(3)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_brown" id="brown">
                                <label for="brown" class="label"><span>Brown</span>&nbsp;<span>(3)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_cream" id="cream">
                                <label for="cream" class="label"><span>Cream</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_dark-beige" id="dark-beige">
                                <label for="dark-beige" class="label"><span>Dark Beige</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_dark-blue" id="dark-blue">
                                <label for="dark-blue" class="label"><span>Dark Blue</span>&nbsp;<span>(3)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_dark-green" id="dark-green">
                                <label for="dark-green" class="label"><span>Dark Green</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_dark-grey" id="dark-grey">
                                <label for="dark-grey" class="label"><span>Dark Grey</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_grey" id="grey">
                                <label for="grey" class="label"><span>Grey</span>&nbsp;<span>(2)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_light-blue" id="light-blue">
                                <label for="light-blue" class="label"><span>Light Blue</span>&nbsp;<span>(5)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_light-green" id="light-green">
                                <label for="light-green" class="label"><span>Light Green</span>&nbsp;<span>(3)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_light-grey" id="light-grey">
                                <label for="light-grey" class="label"><span>Light Grey</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_light-pink" id="light-pink">
                                <label for="light-pink" class="label"><span>Light Pink</span>&nbsp;<span>(2)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_purple" id="light-purple">
                                <label for="light-purple" class="label"><span>Light Purple</span>&nbsp;<span>(2)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_light-yellow" id="light-yellow">
                                <label for="light-yellow" class="label"><span>Light Yellow</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_orange" id="orange">
                                <label for="orange" class="label"><span>Orange</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_pink" id="pink">
                                <label for="pink" class="label"><span>Pink</span>&nbsp;<span>(2)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_taupe" id="taupe">
                                <label for="taupe" class="label"><span>Taupe</span>&nbsp;<span>(1)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_white" id="white">
                                <label for="white" class="label"><span>White</span>&nbsp;<span>(14)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="color" class="tf-check-color bg_yellow" id="yellow">
                                <label for="yellow" class="label"><span>Yellow</span>&nbsp;<span>(1)</span></label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget-facet">
                    <div class="facet-title" data-bs-target="#size" data-bs-toggle="collapse" aria-expanded="true" aria-controls="size">
                        <span>Size</span>
                        <span class="icon icon-arrow-up"></span>
                    </div>
                    <div id="size" class="collapse show">
                        <ul class="tf-filter-group current-scrollbar">
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="size" class="tf-check" id="s">
                                <label for="s" class="label"><span>S</span>&nbsp;<span>(7)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="size" class="tf-check" id="m">
                                <label for="m" class="label"><span>M</span>&nbsp;<span>(8)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="size" class="tf-check" id="l">
                                <label for="l" class="label"><span>L</span>&nbsp;<span>(8)</span></label>
                            </li>
                            <li class="list-item d-flex gap-12 align-items-center">
                                <input type="radio" name="size" class="tf-check" id="xl">
                                <label for="xl" class="label"><span>XL</span>&nbsp;<span>(6)</span></label>
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>
<!-- End Filter -->

<!-- canvasSearch -->
<div class="offcanvas offcanvas-end canvas-search" id="canvasSearch">
    <div class="canvas-wrapper">
        <header class="tf-search-head">
            <div class="title fw-5">
                Tìm kiếm trên trang của chúng tôi
                <div class="close">
                    <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
                </div>
            </div>
            <div class="tf-search-sticky">
                <form class="tf-mini-search-frm">
                    <fieldset class="text">
                        <input type="text" placeholder="Tìm kiếm" class="" name="text" tabindex="0" value="" aria-required="true" required="">
                    </fieldset>
                    <button class="" type="submit"><i class="icon-search"></i></button>
                </form>
            </div>
        </header>
    </div>
</div>
<!-- /canvasSearch -->

<!-- toolbarShopmb -->
<div class="offcanvas offcanvas-start canvas-mb toolbar-shop-mobile" id="toolbarShopmb">
    <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
    <div class="mb-canvas-content">
        <div class="mb-body">
            <ul class="nav-ul-mb" id="wrapper-menu-navigation">
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate1.jpg" alt="">
                        </div>
                        <span>Accessories</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate2.jpg" alt="">
                        </div>
                        <span>Dog</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate3.jpg" alt="">
                        </div>
                        <span>Grocery</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate4.png" alt="">
                        </div>
                        <span>Handbag</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="#cate-menu-one" class="tf-category-link has-children collapsed mb-menu-link" data-bs-toggle="collapse" aria-expanded="true" aria-controls="cate-menu-one">
                        <div class="image">
                            <img src="images/shop/cate/cate5.jpg" alt="">
                        </div>
                        <span>Fashion</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="cate-menu-one" class="collapse list-cate">
                        <ul class="sub-nav-menu" id="cate-menu-navigation">
                            <li>
                                <a href="#cate-shop-one" class="tf-category-link has-children sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="cate-shop-one">
                                    <div class="image">
                                        <img src="images/shop/cate/cate6.jpg" alt="">
                                    </div>
                                    <span>Mens</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="cate-shop-one" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li>
                                            <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                                <div class="image">
                                                    <img src="images/shop/cate/cate1.jpg" alt="">
                                                </div>
                                                <span>Accessories</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                                <div class="image">
                                                    <img src="images/shop/cate/cate8.jpg" alt="">
                                                </div>
                                                <span>Shoes</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#cate-shop-two" class="tf-category-link has-children sub-nav-link collapsed"  data-bs-toggle="collapse" aria-expanded="true" aria-controls="cate-shop-two">
                                    <div class="image">
                                        <img src="images/shop/cate/cate9.jpg" alt="">
                                    </div>
                                    <span>Womens</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="cate-shop-two" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li>
                                            <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                                <div class="image">
                                                    <img src="images/shop/cate/cate4.png" alt="">
                                                </div>
                                                <span>Handbag</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                                <div class="image">
                                                    <img src="images/shop/cate/cate7.jpg" alt="">
                                                </div>
                                                <span>Tee</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="#cate-menu-two" class="tf-category-link has-children collapsed mb-menu-link" data-bs-toggle="collapse" aria-expanded="true" aria-controls="cate-menu-two">
                        <div class="image">
                            <img src="images/shop/cate/cate6.jpg" alt="">
                        </div>
                        <span>Men</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="cate-menu-two" class="collapse list-cate">
                        <ul class="sub-nav-menu" id="cate-menu-navigation1">
                            <li>
                                <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                    <div class="image">
                                        <img src="images/shop/cate/cate1.jpg" alt="">
                                    </div>
                                    <span>Accessories</span>
                                </a>
                            </li>
                            <li>
                                <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                    <div class="image">
                                        <img src="images/shop/cate/cate8.jpg" alt="">
                                    </div>
                                    <span>Shoes</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate7.jpg" alt="">
                        </div>
                        <span>Tee</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="shop-default.html" class="tf-category-link mb-menu-link">
                        <div class="image">
                            <img src="images/shop/cate/cate8.jpg" alt="">
                        </div>
                        <span>Shoes</span>
                    </a>
                </li>
                <li class="nav-mb-item">
                    <a href="#cate-menu-three" class="tf-category-link has-children collapsed mb-menu-link" data-bs-toggle="collapse" aria-expanded="true" aria-controls="cate-menu-three">
                        <div class="image">
                            <img src="images/shop/cate/cate9.jpg" alt="">
                        </div>
                        <span>Women</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="cate-menu-three" class="collapse list-cate">
                        <ul class="sub-nav-menu" id="cate-menu-navigation2">
                            <li>
                                <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                    <div class="image">
                                        <img src="images/shop/cate/cate4.png" alt="">
                                    </div>
                                    <span>Handbag</span>
                                </a>
                            </li>
                            <li>
                                <a href="shop-default.html" class="tf-category-link sub-nav-link">
                                    <div class="image">
                                        <img src="images/shop/cate/cate7.jpg" alt="">
                                    </div>
                                    <span>Tee</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="mb-bottom">
            <a href="shop-default.html" class="tf-btn fw-5 btn-line">View all collection<i class="icon icon-arrow1-top-left"></i></a>
        </div>
    </div>
</div>
<!-- /toolbarShopmb -->

<!-- modal login -->
<div class="modal modalCentered fade form-sign-in modal-part-content" id="login">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <div class="demo-title">Log in</div>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="tf-login-form">
                <form class="" action="https://themesflat.co/html/ecomus/my-account.html" accept-charset="utf-8">
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                        <label class="tf-field-label" for="">Email *</label>
                    </div>
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="password"  name="">
                        <label class="tf-field-label" for="">Password *</label>
                    </div>
                    <div>
                        <a href="#forgotPassword" data-bs-toggle="modal" class="btn-link link">Forgot your password?</a>
                    </div>
                    <div class="bottom">
                        <div class="w-100">
                            <button type="submit" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Log in</span></button>
                        </div>
                        <div class="w-100">
                            <a href="#register" data-bs-toggle="modal" class="btn-link fw-6 w-100 link">
                                New customer? Create your account
                                <i class="icon icon-arrow1-top-left"></i>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal modalCentered fade form-sign-in modal-part-content" id="forgotPassword">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <div class="demo-title">Reset your password</div>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="tf-login-form">
                <form class="">
                    <div>
                        <p>Sign up for early Sale access plus tailored new arrivals, trends and promotions. To opt out, click unsubscribe in our emails</p>
                    </div>
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                        <label class="tf-field-label" for="">Email *</label>
                    </div>
                    <div>
                        <a href="#login" data-bs-toggle="modal" class="btn-link link">Cancel</a>
                    </div>
                    <div class="bottom">
                        <div class="w-100">
                            <button type="submit" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Reset password</span></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal modalCentered fade form-sign-in modal-part-content" id="register">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <div class="demo-title">Register</div>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="tf-login-form">
                <form class="">
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="text"  name="">
                        <label class="tf-field-label" for="">First name</label>
                    </div>
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="text"  name="">
                        <label class="tf-field-label" for="">Last name</label>
                    </div>
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                        <label class="tf-field-label" for="">Email *</label>
                    </div>
                    <div class="tf-field style-1">
                        <input class="tf-field-input tf-input" placeholder=" " type="password"  name="">
                        <label class="tf-field-label" for="">Password *</label>
                    </div>
                    <div class="bottom">
                        <div class="w-100">
                            <a href="register.html" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Register</span></a>
                        </div>
                        <div class="w-100">
                            <a href="#login" data-bs-toggle="modal" class="btn-link fw-6 w-100 link">
                                Already have an account? Log in here
                                <i class="icon icon-arrow1-top-left"></i>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /modal login -->

<!-- shoppingCart -->
<div class="modal fullRight fade modal-shopping-cart" id="shoppingCart">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="header">
                <div class="title fw-5">Giỏ hàng</div>
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="wrap">
                <div class="tf-mini-cart-threshold">
                    <div class="tf-progress-bar">
                        <span style="width: 50%;"></span>
                    </div>
                    <div class="tf-progress-msg">
                        Mua thêm<span class="price fw-6">$75.00</span> để được hưởng <span class="fw-6">Miễn phí Vận chuyển</span>
                    </div>
                </div>
                <div class="tf-mini-cart-wrap">
                    <div class="tf-mini-cart-main">
                        <div class="tf-mini-cart-sroll">
                            <div class="tf-mini-cart-items">
                                <div class="tf-mini-cart-item">
                                    <div class="tf-mini-cart-image">
                                        <a href="product-detail.html">
                                            <img src="images/products/white-2.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="tf-mini-cart-info">
                                        <a class="title link" href="product-detail.html">T-shirt</a>
                                        <div class="meta-variant">Light gray</div>
                                        <div class="price fw-6">$25.00</div>
                                        <div class="tf-mini-cart-btns">
                                            <div class="wg-quantity small">
                                                <span class="btn-quantity minus-btn">-</span>
                                                <input type="text" name="number" value="1">
                                                <span class="btn-quantity plus-btn">+</span>
                                            </div>
                                            <div class="tf-mini-cart-remove">Remove</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tf-mini-cart-item">
                                    <div class="tf-mini-cart-image">
                                        <a href="product-detail.html">
                                            <img src="images/products/white-3.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="tf-mini-cart-info">
                                        <a class="title link" href="product-detail.html">Oversized Motif T-shirt</a>
                                        <div class="price fw-6">$25.00</div>
                                        <div class="tf-mini-cart-btns">
                                            <div class="wg-quantity small">
                                                <span class="btn-quantity minus-btn">-</span>
                                                <input type="text" name="number" value="1">
                                                <span class="btn-quantity plus-btn">+</span>
                                            </div>
                                            <div class="tf-mini-cart-remove">Remove</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tf-minicart-recommendations">
                                <div class="tf-minicart-recommendations-heading">
                                    <div class="tf-minicart-recommendations-title">You may also like</div>
                                    <div class="sw-dots small style-2 cart-slide-pagination"></div>
                                </div>
                                <div class="swiper tf-cart-slide">
                                    <div class="swiper-wrapper" >
                                        <div class="swiper-slide">
                                            <div class="tf-minicart-recommendations-item">
                                                <div class="tf-minicart-recommendations-item-image">
                                                    <a href="product-detail.html">
                                                        <img src="images/products/white-3.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="tf-minicart-recommendations-item-infos flex-grow-1">
                                                    <a class="title" href="product-detail.html">Loose Fit Sweatshirt</a>
                                                    <div class="price">$25.00</div>
                                                </div>
                                                <div class="tf-minicart-recommendations-item-quickview">
                                                    <div class="btn-show-quickview quickview hover-tooltip">
                                                        <span class="icon icon-view"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="tf-minicart-recommendations-item">
                                                <div class="tf-minicart-recommendations-item-image">
                                                    <a href="product-detail.html">
                                                        <img src="images/products/white-2.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="tf-minicart-recommendations-item-infos flex-grow-1">
                                                    <a class="title" href="product-detail.html">Loose Fit Hoodie</a>
                                                    <div class="price">$25.00</div>
                                                </div>
                                                <div class="tf-minicart-recommendations-item-quickview">
                                                    <div class="btn-show-quickview quickview hover-tooltip">
                                                        <span class="icon icon-view"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tf-mini-cart-bottom">
                        <div class="tf-mini-cart-tool">
                            <div class="tf-mini-cart-tool-btn btn-add-note">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="18" viewBox="0 0 16 18" fill="currentColor"><path d="M5.12187 16.4582H2.78952C2.02045 16.4582 1.39476 15.8325 1.39476 15.0634V2.78952C1.39476 2.02045 2.02045 1.39476 2.78952 1.39476H11.3634C12.1325 1.39476 12.7582 2.02045 12.7582 2.78952V7.07841C12.7582 7.46357 13.0704 7.77579 13.4556 7.77579C13.8407 7.77579 14.1529 7.46357 14.1529 7.07841V2.78952C14.1529 1.25138 12.9016 0 11.3634 0H2.78952C1.25138 0 0 1.25138 0 2.78952V15.0634C0 16.6015 1.25138 17.8529 2.78952 17.8529H5.12187C5.50703 17.8529 5.81925 17.5407 5.81925 17.1555C5.81925 16.7704 5.50703 16.4582 5.12187 16.4582Z"></path><path d="M15.3882 10.0971C14.5724 9.28136 13.2452 9.28132 12.43 10.0965L8.60127 13.9168C8.51997 13.9979 8.45997 14.0979 8.42658 14.2078L7.59276 16.9528C7.55646 17.0723 7.55292 17.1993 7.58249 17.3207C7.61206 17.442 7.67367 17.5531 7.76087 17.6425C7.84807 17.7319 7.95768 17.7962 8.07823 17.8288C8.19879 17.8613 8.32587 17.8609 8.44621 17.8276L11.261 17.0479C11.3769 17.0158 11.4824 16.9543 11.5675 16.8694L15.3882 13.0559C16.2039 12.2401 16.2039 10.9129 15.3882 10.0971ZM10.712 15.7527L9.29586 16.145L9.71028 14.7806L12.2937 12.2029L13.2801 13.1893L10.712 15.7527ZM14.4025 12.0692L14.2673 12.204L13.2811 11.2178L13.4157 11.0834C13.6876 10.8115 14.1301 10.8115 14.402 11.0834C14.6739 11.3553 14.6739 11.7977 14.4025 12.0692Z"></path></svg>
                            </div>
                            <div class="tf-mini-cart-tool-btn btn-add-gift">
                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="18" viewBox="0 0 17 18" fill="currentColor"><path fill-rule="evenodd" clip-rule="evenodd" d="M2.99566 2.73409C2.99566 0.55401 5.42538 -0.746668 7.23916 0.463462L8.50073 1.30516L9.7623 0.463462C11.5761 -0.746668 14.0058 0.55401 14.0058 2.73409V3.24744H14.8225C15.9633 3.24744 16.8881 4.17233 16.8881 5.31312V6.82566C16.8881 7.21396 16.5734 7.52873 16.1851 7.52873H15.8905V15.1877C15.8905 15.1905 15.8905 15.1933 15.8905 15.196C15.886 16.7454 14.6286 18 13.0782 18H3.92323C2.37003 18 1.11091 16.7409 1.11091 15.1877V7.52877H0.81636C0.42806 7.52877 0.113281 7.21399 0.113281 6.82569V5.31316C0.113281 4.17228 1.03812 3.24744 2.179 3.24744H2.99566V2.73409ZM4.40181 3.24744H7.79765V2.52647L6.45874 1.63317C5.57987 1.0468 4.40181 1.67677 4.40181 2.73409V3.24744ZM9.20381 2.52647V3.24744H12.5996V2.73409C12.5996 1.67677 11.4216 1.0468 10.5427 1.63317L9.20381 2.52647ZM2.179 4.6536C1.81472 4.6536 1.51944 4.94888 1.51944 5.31316V6.12261H5.73398L5.734 4.6536H2.179ZM5.73401 7.52877V13.9306C5.73401 14.1806 5.86682 14.4119 6.08281 14.5379C6.29879 14.6639 6.56545 14.6657 6.78312 14.5426L8.50073 13.5715L10.2183 14.5426C10.436 14.6657 10.7027 14.6639 10.9187 14.5379C11.1346 14.4119 11.2674 14.1806 11.2674 13.9306V7.52873H14.4844V15.1603C14.4844 15.1627 14.4843 15.1651 14.4843 15.1675V15.1877C14.4843 15.9643 13.8548 16.5938 13.0782 16.5938H3.92323C3.14663 16.5938 2.51707 15.9643 2.51707 15.1877V7.52877H5.73401ZM15.482 6.12258V5.31312C15.482 4.94891 15.1867 4.6536 14.8225 4.6536H11.2674V6.12258H15.482ZM9.86129 4.6536H7.14017V12.7254L8.15469 12.1518C8.36941 12.0304 8.63204 12.0304 8.84676 12.1518L9.86129 12.7254V4.6536Z"></path></svg>
                            </div>
                            <div class="tf-mini-cart-tool-btn btn-estimate-shipping">
                                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="18" viewBox="0 0 26 18" fill="currentColor"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0.811989C0 0.36354 0.36354 0 0.811989 0H15.4278C15.8763 0 16.2398 0.36354 16.2398 0.811989V3.10596H21.0144C23.6241 3.10596 25.8643 5.05894 25.8643 7.61523V14.6414C25.8643 15.0899 25.5007 15.4534 25.0523 15.4534H23.545C23.2139 16.9115 21.9098 18 20.3514 18C18.7931 18 17.4889 16.9115 17.1578 15.4534H8.69534C8.36423 16.9115 7.0601 18 5.50175 18C3.9434 18 2.63927 16.9115 2.30815 15.4534H0.811989C0.36354 15.4534 0 15.0899 0 14.6414V0.811989ZM2.35089 13.8294C2.74052 12.4562 4.00366 11.4503 5.50175 11.4503C6.99983 11.4503 8.26298 12.4562 8.6526 13.8294H14.6158V1.62398H1.62398V13.8294H2.35089ZM16.2398 4.72994V7.95749H24.2403V7.61523C24.2403 6.08759 22.8649 4.72994 21.0144 4.72994H16.2398ZM24.2403 9.58147H16.2398V13.8294H17.2006C17.5902 12.4562 18.8533 11.4503 20.3514 11.4503C21.8495 11.4503 23.1126 12.4562 23.5023 13.8294H24.2403V9.58147ZM5.50175 13.0743C4.58999 13.0743 3.85087 13.8134 3.85087 14.7251C3.85087 15.6369 4.58999 16.376 5.50175 16.376C6.41351 16.376 7.15263 15.6369 7.15263 14.7251C7.15263 13.8134 6.41351 13.0743 5.50175 13.0743ZM20.3514 13.0743C19.4397 13.0743 18.7005 13.8134 18.7005 14.7251C18.7005 15.6369 19.4397 16.376 20.3514 16.376C21.2632 16.376 22.0023 15.6369 22.0023 14.7251C22.0023 13.8134 21.2632 13.0743 20.3514 13.0743Z"></path></svg>
                            </div>
                        </div>
                        <div class="tf-mini-cart-bottom-wrap">
                            <div class="tf-cart-totals-discounts">
                                <div class="tf-cart-total">Tổng cộng</div>
                                <div class="tf-totals-total-value fw-6">$49.99 USD</div>
                            </div>
                            <div class="tf-cart-tax">Thuế và <a href="#">phí vận chuyển</a> được tính khi thanh toán</div>
                            <div class="tf-mini-cart-line"></div>
                            <div class="tf-cart-checkbox">
                                <div class="tf-checkbox-wrapp">
                                    <input class="" type="checkbox" id="CartDrawer-Form_agree" name="agree_checkbox">
                                    <div>
                                        <i class="icon-check"></i>
                                    </div>
                                </div>
                                <label for="CartDrawer-Form_agree">
                                    Tôi đồng ý với
                                    <a href="#" title="Terms of Service">các điều khoản và điều kiện</a>
                                </label>
                            </div>
                            <div class="tf-mini-cart-view-checkout">
                                <a href="view-cart.html" class="tf-btn btn-outline radius-3 link w-100 justify-content-center">Xem giỏ hàng</a>
                                <a href="checkout.html" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Thanh toán</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="tf-mini-cart-tool-openable add-note">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <div class="tf-mini-cart-tool-content">
                            <label for="Cart-note" class="tf-mini-cart-tool-text">
                                <div class="icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="18" viewBox="0 0 16 18" fill="currentColor"><path d="M5.12187 16.4582H2.78952C2.02045 16.4582 1.39476 15.8325 1.39476 15.0634V2.78952C1.39476 2.02045 2.02045 1.39476 2.78952 1.39476H11.3634C12.1325 1.39476 12.7582 2.02045 12.7582 2.78952V7.07841C12.7582 7.46357 13.0704 7.77579 13.4556 7.77579C13.8407 7.77579 14.1529 7.46357 14.1529 7.07841V2.78952C14.1529 1.25138 12.9016 0 11.3634 0H2.78952C1.25138 0 0 1.25138 0 2.78952V15.0634C0 16.6015 1.25138 17.8529 2.78952 17.8529H5.12187C5.50703 17.8529 5.81925 17.5407 5.81925 17.1555C5.81925 16.7704 5.50703 16.4582 5.12187 16.4582Z"></path><path d="M15.3882 10.0971C14.5724 9.28136 13.2452 9.28132 12.43 10.0965L8.60127 13.9168C8.51997 13.9979 8.45997 14.0979 8.42658 14.2078L7.59276 16.9528C7.55646 17.0723 7.55292 17.1993 7.58249 17.3207C7.61206 17.442 7.67367 17.5531 7.76087 17.6425C7.84807 17.7319 7.95768 17.7962 8.07823 17.8288C8.19879 17.8613 8.32587 17.8609 8.44621 17.8276L11.261 17.0479C11.3769 17.0158 11.4824 16.9543 11.5675 16.8694L15.3882 13.0559C16.2039 12.2401 16.2039 10.9129 15.3882 10.0971ZM10.712 15.7527L9.29586 16.145L9.71028 14.7806L12.2937 12.2029L13.2801 13.1893L10.712 15.7527ZM14.4025 12.0692L14.2673 12.204L13.2811 11.2178L13.4157 11.0834C13.6876 10.8115 14.1301 10.8115 14.402 11.0834C14.6739 11.3553 14.6739 11.7977 14.4025 12.0692Z"></path></svg>
                                </div>
                                <span>Add Order Note</span>
                            </label>
                            <textarea name="note" id="Cart-note" placeholder="How can we help you?"></textarea>
                            <div class="tf-cart-tool-btns justify-content-center">
                                <div class="tf-mini-cart-tool-primary text-center w-100 fw-6 tf-mini-cart-tool-close">Close</div>
                            </div>
                        </div>
                    </div>
                    <div class="tf-mini-cart-tool-openable add-gift">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <form class="tf-product-form-addgift">
                            <div class="tf-mini-cart-tool-content">
                                <div class="tf-mini-cart-tool-text">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="currentColor"><path fill-rule="evenodd" clip-rule="evenodd" d="M4.65957 3.64545C4.65957 0.73868 7.89921 -0.995558 10.3176 0.617949L11.9997 1.74021L13.6818 0.617949C16.1001 -0.995558 19.3398 0.73868 19.3398 3.64545V4.32992H20.4286C21.9498 4.32992 23.1829 5.56311 23.1829 7.08416V9.10087C23.1829 9.61861 22.7632 10.0383 22.2454 10.0383H21.8528V20.2502C21.8528 20.254 21.8527 20.2577 21.8527 20.2614C21.8467 22.3272 20.1702 24 18.103 24H5.89634C3.82541 24 2.14658 22.3212 2.14658 20.2502V10.0384H1.75384C1.23611 10.0384 0.816406 9.61865 0.816406 9.10092V7.08421C0.816406 5.56304 2.04953 4.32992 3.57069 4.32992H4.65957V3.64545ZM6.53445 4.32992H11.0622V3.36863L9.27702 2.17757C8.10519 1.39573 6.53445 2.2357 6.53445 3.64545V4.32992ZM12.9371 3.36863V4.32992H17.4649V3.64545C17.4649 2.2357 15.8942 1.39573 14.7223 2.17756L12.9371 3.36863ZM3.57069 6.2048C3.08499 6.2048 2.69128 6.59851 2.69128 7.08421V8.16348H8.31067L8.3107 6.2048H3.57069ZM8.31071 10.0384V18.5741C8.31071 18.9075 8.48779 19.2158 8.77577 19.3838C9.06376 19.5518 9.4193 19.5542 9.70953 19.3901L11.9997 18.0953L14.2898 19.3901C14.58 19.5542 14.9356 19.5518 15.2236 19.3838C15.5115 19.2158 15.6886 18.9075 15.6886 18.5741V10.0383H19.9779V20.2137C19.9778 20.2169 19.9778 20.2201 19.9778 20.2233V20.2502C19.9778 21.2857 19.1384 22.1251 18.103 22.1251H5.89634C4.86088 22.1251 4.02146 21.2857 4.02146 20.2502V10.0384H8.31071ZM21.308 8.16344V7.08416C21.308 6.59854 20.9143 6.2048 20.4286 6.2048H15.6886V8.16344H21.308ZM13.8138 6.2048H10.1856V16.9672L11.5383 16.2024C11.8246 16.0405 12.1748 16.0405 12.461 16.2024L13.8138 16.9672V6.2048Z"></path></svg>
                                    </div>
                                    <div class="tf-gift-wrap-infos">
                                        <p>Do you want a gift wrap?</p>
                                        Only
                                        <span class="price fw-6">$5.00</span>
                                    </div>
                                </div>
                                <div class="tf-cart-tool-btns">
                                    <button type="submit" class="tf-btn fw-6 w-100 justify-content-center btn-fill animate-hover-btn radius-3"><span>Add a gift wrap</span></button>
                                    <div class="tf-mini-cart-tool-primary text-center w-100 fw-6 tf-mini-cart-tool-close">Cancel</div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tf-mini-cart-tool-openable estimate-shipping">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <div class="tf-mini-cart-tool-content">
                            <div class="tf-mini-cart-tool-text">
                                <div class="icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="15" viewBox="0 0 21 15" fill="currentColor"><path fill-rule="evenodd" clip-rule="evenodd" d="M0.441406 1.13155C0.441406 0.782753 0.724159 0.5 1.07295 0.5H12.4408C12.7896 0.5 13.0724 0.782753 13.0724 1.13155V2.91575H16.7859C18.8157 2.91575 20.5581 4.43473 20.5581 6.42296V11.8878C20.5581 12.2366 20.2753 12.5193 19.9265 12.5193H18.7542C18.4967 13.6534 17.4823 14.5 16.2703 14.5C15.0582 14.5 14.0439 13.6534 13.7864 12.5193H7.20445C6.94692 13.6534 5.93259 14.5 4.72054 14.5C3.50849 14.5 2.49417 13.6534 2.23664 12.5193H1.07295C0.724159 12.5193 0.441406 12.2366 0.441406 11.8878V1.13155ZM2.26988 11.2562C2.57292 10.1881 3.55537 9.40578 4.72054 9.40578C5.88572 9.40578 6.86817 10.1881 7.17121 11.2562H11.8093V1.76309H1.7045V11.2562H2.26988ZM13.0724 4.17884V6.68916H19.295V6.42296C19.295 5.2348 18.2252 4.17884 16.7859 4.17884H13.0724ZM19.295 7.95226H13.0724V11.2562H13.8196C14.1227 10.1881 15.1051 9.40578 16.2703 9.40578C17.4355 9.40578 18.4179 10.1881 18.7209 11.2562H19.295V7.95226ZM4.72054 10.6689C4.0114 10.6689 3.43652 11.2437 3.43652 11.9529C3.43652 12.662 4.0114 13.2369 4.72054 13.2369C5.42969 13.2369 6.00456 12.662 6.00456 11.9529C6.00456 11.2437 5.42969 10.6689 4.72054 10.6689ZM16.2703 10.6689C15.5611 10.6689 14.9863 11.2437 14.9863 11.9529C14.9863 12.662 15.5611 13.2369 16.2703 13.2369C16.9794 13.2369 17.5543 12.662 17.5543 11.9529C17.5543 11.2437 16.9794 10.6689 16.2703 10.6689Z"></path></svg>
                                </div>
                                <span class="fw-6">Estimate Shipping</span>
                            </div>
                            <div class="field">
                                <p>Country</p>
                                <select class="tf-select w-100" id="ShippingCountry_CartDrawer-Form" name="address[country]" data-default="">
                                    <option value="---" data-provinces="[]">---</option>
                                    <option value="Australia" data-provinces="[['Australian Capital Territory','Australian Capital Territory'],['New South Wales','New South Wales'],['Northern Territory','Northern Territory'],['Queensland','Queensland'],['South Australia','South Australia'],['Tasmania','Tasmania'],['Victoria','Victoria'],['Western Australia','Western Australia']]">Australia</option>
                                    <option value="Austria" data-provinces="[]">Austria</option>
                                    <option value="Belgium" data-provinces="[]">Belgium</option>
                                    <option value="Canada" data-provinces="[['Alberta','Alberta'],['British Columbia','British Columbia'],['Manitoba','Manitoba'],['New Brunswick','New Brunswick'],['Newfoundland and Labrador','Newfoundland and Labrador'],['Northwest Territories','Northwest Territories'],['Nova Scotia','Nova Scotia'],['Nunavut','Nunavut'],['Ontario','Ontario'],['Prince Edward Island','Prince Edward Island'],['Quebec','Quebec'],['Saskatchewan','Saskatchewan'],['Yukon','Yukon']]">Canada</option>
                                    <option value="Czech Republic" data-provinces="[]">Czechia</option>
                                    <option value="Denmark" data-provinces="[]">Denmark</option>
                                    <option value="Finland" data-provinces="[]">Finland</option>
                                    <option value="France" data-provinces="[]">France</option>
                                    <option value="Germany" data-provinces="[]">Germany</option>
                                    <option value="Hong Kong" data-provinces="[['Hong Kong Island','Hong Kong Island'],['Kowloon','Kowloon'],['New Territories','New Territories']]">Hong Kong SAR</option>
                                    <option value="Ireland" data-provinces="[['Carlow','Carlow'],['Cavan','Cavan'],['Clare','Clare'],['Cork','Cork'],['Donegal','Donegal'],['Dublin','Dublin'],['Galway','Galway'],['Kerry','Kerry'],['Kildare','Kildare'],['Kilkenny','Kilkenny'],['Laois','Laois'],['Leitrim','Leitrim'],['Limerick','Limerick'],['Longford','Longford'],['Louth','Louth'],['Mayo','Mayo'],['Meath','Meath'],['Monaghan','Monaghan'],['Offaly','Offaly'],['Roscommon','Roscommon'],['Sligo','Sligo'],['Tipperary','Tipperary'],['Waterford','Waterford'],['Westmeath','Westmeath'],['Wexford','Wexford'],['Wicklow','Wicklow']]">Ireland</option>
                                    <option value="Israel" data-provinces="[]">Israel</option>
                                    <option value="Italy" data-provinces="[['Agrigento','Agrigento'],['Alessandria','Alessandria'],['Ancona','Ancona'],['Aosta','Aosta Valley'],['Arezzo','Arezzo'],['Ascoli Piceno','Ascoli Piceno'],['Asti','Asti'],['Avellino','Avellino'],['Bari','Bari'],['Barletta-Andria-Trani','Barletta-Andria-Trani'],['Belluno','Belluno'],['Benevento','Benevento'],['Bergamo','Bergamo'],['Biella','Biella'],['Bologna','Bologna'],['Bolzano','South Tyrol'],['Brescia','Brescia'],['Brindisi','Brindisi'],['Cagliari','Cagliari'],['Caltanissetta','Caltanissetta'],['Campobasso','Campobasso'],['Carbonia-Iglesias','Carbonia-Iglesias'],['Caserta','Caserta'],['Catania','Catania'],['Catanzaro','Catanzaro'],['Chieti','Chieti'],['Como','Como'],['Cosenza','Cosenza'],['Cremona','Cremona'],['Crotone','Crotone'],['Cuneo','Cuneo'],['Enna','Enna'],['Fermo','Fermo'],['Ferrara','Ferrara'],['Firenze','Florence'],['Foggia','Foggia'],['Forlì-Cesena','Forlì-Cesena'],['Frosinone','Frosinone'],['Genova','Genoa'],['Gorizia','Gorizia'],['Grosseto','Grosseto'],['Imperia','Imperia'],['Isernia','Isernia'],['L'Aquila','L’Aquila'],['La Spezia','La Spezia'],['Latina','Latina'],['Lecce','Lecce'],['Lecco','Lecco'],['Livorno','Livorno'],['Lodi','Lodi'],['Lucca','Lucca'],['Macerata','Macerata'],['Mantova','Mantua'],['Massa-Carrara','Massa and Carrara'],['Matera','Matera'],['Medio Campidano','Medio Campidano'],['Messina','Messina'],['Milano','Milan'],['Modena','Modena'],['Monza e Brianza','Monza and Brianza'],['Napoli','Naples'],['Novara','Novara'],['Nuoro','Nuoro'],['Ogliastra','Ogliastra'],['Olbia-Tempio','Olbia-Tempio'],['Oristano','Oristano'],['Padova','Padua'],['Palermo','Palermo'],['Parma','Parma'],['Pavia','Pavia'],['Perugia','Perugia'],['Pesaro e Urbino','Pesaro and Urbino'],['Pescara','Pescara'],['Piacenza','Piacenza'],['Pisa','Pisa'],['Pistoia','Pistoia'],['Pordenone','Pordenone'],['Potenza','Potenza'],['Prato','Prato'],['Ragusa','Ragusa'],['Ravenna','Ravenna'],['Reggio Calabria','Reggio Calabria'],['Reggio Emilia','Reggio Emilia'],['Rieti','Rieti'],['Rimini','Rimini'],['Roma','Rome'],['Rovigo','Rovigo'],['Salerno','Salerno'],['Sassari','Sassari'],['Savona','Savona'],['Siena','Siena'],['Siracusa','Syracuse'],['Sondrio','Sondrio'],['Taranto','Taranto'],['Teramo','Teramo'],['Terni','Terni'],['Torino','Turin'],['Trapani','Trapani'],['Trento','Trentino'],['Treviso','Treviso'],['Trieste','Trieste'],['Udine','Udine'],['Varese','Varese'],['Venezia','Venice'],['Verbano-Cusio-Ossola','Verbano-Cusio-Ossola'],['Vercelli','Vercelli'],['Verona','Verona'],['Vibo Valentia','Vibo Valentia'],['Vicenza','Vicenza'],['Viterbo','Viterbo']]">Italy</option>
                                    <option value="Japan" data-provinces="[['Aichi','Aichi'],['Akita','Akita'],['Aomori','Aomori'],['Chiba','Chiba'],['Ehime','Ehime'],['Fukui','Fukui'],['Fukuoka','Fukuoka'],['Fukushima','Fukushima'],['Gifu','Gifu'],['Gunma','Gunma'],['Hiroshima','Hiroshima'],['Hokkaidō','Hokkaido'],['Hyōgo','Hyogo'],['Ibaraki','Ibaraki'],['Ishikawa','Ishikawa'],['Iwate','Iwate'],['Kagawa','Kagawa'],['Kagoshima','Kagoshima'],['Kanagawa','Kanagawa'],['Kumamoto','Kumamoto'],['Kyōto','Kyoto'],['Kōchi','Kochi'],['Mie','Mie'],['Miyagi','Miyagi'],['Miyazaki','Miyazaki'],['Nagano','Nagano'],['Nagasaki','Nagasaki'],['Nara','Nara'],['Niigata','Niigata'],['Okayama','Okayama'],['Okinawa','Okinawa'],['Saga','Saga'],['Saitama','Saitama'],['Shiga','Shiga'],['Shimane','Shimane'],['Shizuoka','Shizuoka'],['Tochigi','Tochigi'],['Tokushima','Tokushima'],['Tottori','Tottori'],['Toyama','Toyama'],['Tōkyō','Tokyo'],['Wakayama','Wakayama'],['Yamagata','Yamagata'],['Yamaguchi','Yamaguchi'],['Yamanashi','Yamanashi'],['Ōita','Oita'],['Ōsaka','Osaka']]">Japan</option>
                                    <option value="Malaysia" data-provinces="[['Johor','Johor'],['Kedah','Kedah'],['Kelantan','Kelantan'],['Kuala Lumpur','Kuala Lumpur'],['Labuan','Labuan'],['Melaka','Malacca'],['Negeri Sembilan','Negeri Sembilan'],['Pahang','Pahang'],['Penang','Penang'],['Perak','Perak'],['Perlis','Perlis'],['Putrajaya','Putrajaya'],['Sabah','Sabah'],['Sarawak','Sarawak'],['Selangor','Selangor'],['Terengganu','Terengganu']]">Malaysia</option>
                                    <option value="Netherlands" data-provinces="[]">Netherlands</option>
                                    <option value="New Zealand" data-provinces="[['Auckland','Auckland'],['Bay of Plenty','Bay of Plenty'],['Canterbury','Canterbury'],['Chatham Islands','Chatham Islands'],['Gisborne','Gisborne'],['Hawke's Bay','Hawke’s Bay'],['Manawatu-Wanganui','Manawatū-Whanganui'],['Marlborough','Marlborough'],['Nelson','Nelson'],['Northland','Northland'],['Otago','Otago'],['Southland','Southland'],['Taranaki','Taranaki'],['Tasman','Tasman'],['Waikato','Waikato'],['Wellington','Wellington'],['West Coast','West Coast']]">New Zealand</option>
                                    <option value="Norway" data-provinces="[]">Norway</option>
                                    <option value="Poland" data-provinces="[]">Poland</option>
                                    <option value="Portugal" data-provinces="[['Aveiro','Aveiro'],['Açores','Azores'],['Beja','Beja'],['Braga','Braga'],['Bragança','Bragança'],['Castelo Branco','Castelo Branco'],['Coimbra','Coimbra'],['Faro','Faro'],['Guarda','Guarda'],['Leiria','Leiria'],['Lisboa','Lisbon'],['Madeira','Madeira'],['Portalegre','Portalegre'],['Porto','Porto'],['Santarém','Santarém'],['Setúbal','Setúbal'],['Viana do Castelo','Viana do Castelo'],['Vila Real','Vila Real'],['Viseu','Viseu'],['Évora','Évora']]">Portugal</option>
                                    <option value="Singapore" data-provinces="[]">Singapore</option>
                                    <option value="South Korea" data-provinces="[['Busan','Busan'],['Chungbuk','North Chungcheong'],['Chungnam','South Chungcheong'],['Daegu','Daegu'],['Daejeon','Daejeon'],['Gangwon','Gangwon'],['Gwangju','Gwangju City'],['Gyeongbuk','North Gyeongsang'],['Gyeonggi','Gyeonggi'],['Gyeongnam','South Gyeongsang'],['Incheon','Incheon'],['Jeju','Jeju'],['Jeonbuk','North Jeolla'],['Jeonnam','South Jeolla'],['Sejong','Sejong'],['Seoul','Seoul'],['Ulsan','Ulsan']]">South Korea</option>
                                    <option value="Spain" data-provinces="[['A Coruña','A Coruña'],['Albacete','Albacete'],['Alicante','Alicante'],['Almería','Almería'],['Asturias','Asturias Province'],['Badajoz','Badajoz'],['Balears','Balears Province'],['Barcelona','Barcelona'],['Burgos','Burgos'],['Cantabria','Cantabria Province'],['Castellón','Castellón'],['Ceuta','Ceuta'],['Ciudad Real','Ciudad Real'],['Cuenca','Cuenca'],['Cáceres','Cáceres'],['Cádiz','Cádiz'],['Córdoba','Córdoba'],['Girona','Girona'],['Granada','Granada'],['Guadalajara','Guadalajara'],['Guipúzcoa','Gipuzkoa'],['Huelva','Huelva'],['Huesca','Huesca'],['Jaén','Jaén'],['La Rioja','La Rioja Province'],['Las Palmas','Las Palmas'],['León','León'],['Lleida','Lleida'],['Lugo','Lugo'],['Madrid','Madrid Province'],['Melilla','Melilla'],['Murcia','Murcia'],['Málaga','Málaga'],['Navarra','Navarra'],['Ourense','Ourense'],['Palencia','Palencia'],['Pontevedra','Pontevedra'],['Salamanca','Salamanca'],['Santa Cruz de Tenerife','Santa Cruz de Tenerife'],['Segovia','Segovia'],['Sevilla','Seville'],['Soria','Soria'],['Tarragona','Tarragona'],['Teruel','Teruel'],['Toledo','Toledo'],['Valencia','Valencia'],['Valladolid','Valladolid'],['Vizcaya','Biscay'],['Zamora','Zamora'],['Zaragoza','Zaragoza'],['Álava','Álava'],['Ávila','Ávila']]">Spain</option>
                                    <option value="Sweden" data-provinces="[]">Sweden</option>
                                    <option value="Switzerland" data-provinces="[]">Switzerland</option>
                                    <option value="United Arab Emirates" data-provinces="[['Abu Dhabi','Abu Dhabi'],['Ajman','Ajman'],['Dubai','Dubai'],['Fujairah','Fujairah'],['Ras al-Khaimah','Ras al-Khaimah'],['Sharjah','Sharjah'],['Umm al-Quwain','Umm al-Quwain']]">United Arab Emirates</option>
                                    <option value="United Kingdom" data-provinces="[['British Forces','British Forces'],['England','England'],['Northern Ireland','Northern Ireland'],['Scotland','Scotland'],['Wales','Wales']]">United Kingdom</option>
                                    <option value="United States" data-provinces="[['Alabama','Alabama'],['Alaska','Alaska'],['American Samoa','American Samoa'],['Arizona','Arizona'],['Arkansas','Arkansas'],['Armed Forces Americas','Armed Forces Americas'],['Armed Forces Europe','Armed Forces Europe'],['Armed Forces Pacific','Armed Forces Pacific'],['California','California'],['Colorado','Colorado'],['Connecticut','Connecticut'],['Delaware','Delaware'],['District of Columbia','Washington DC'],['Federated States of Micronesia','Micronesia'],['Florida','Florida'],['Georgia','Georgia'],['Guam','Guam'],['Hawaii','Hawaii'],['Idaho','Idaho'],['Illinois','Illinois'],['Indiana','Indiana'],['Iowa','Iowa'],['Kansas','Kansas'],['Kentucky','Kentucky'],['Louisiana','Louisiana'],['Maine','Maine'],['Marshall Islands','Marshall Islands'],['Maryland','Maryland'],['Massachusetts','Massachusetts'],['Michigan','Michigan'],['Minnesota','Minnesota'],['Mississippi','Mississippi'],['Missouri','Missouri'],['Montana','Montana'],['Nebraska','Nebraska'],['Nevada','Nevada'],['New Hampshire','New Hampshire'],['New Jersey','New Jersey'],['New Mexico','New Mexico'],['New York','New York'],['North Carolina','North Carolina'],['North Dakota','North Dakota'],['Northern Mariana Islands','Northern Mariana Islands'],['Ohio','Ohio'],['Oklahoma','Oklahoma'],['Oregon','Oregon'],['Palau','Palau'],['Pennsylvania','Pennsylvania'],['Puerto Rico','Puerto Rico'],['Rhode Island','Rhode Island'],['South Carolina','South Carolina'],['South Dakota','South Dakota'],['Tennessee','Tennessee'],['Texas','Texas'],['Utah','Utah'],['Vermont','Vermont'],['Virgin Islands','U.S. Virgin Islands'],['Virginia','Virginia'],['Washington','Washington'],['West Virginia','West Virginia'],['Wisconsin','Wisconsin'],['Wyoming','Wyoming']]">United States</option>
                                    <option value="Vietnam" data-provinces="[]">Vietnam</option>
                                </select>
                            </div>
                            <div class="field">
                                <p>Zip code</p>
                                <input type="text" name="text" placeholder="">
                            </div>
                            <div class="tf-cart-tool-btns">
                                <a href="#" class="tf-btn fw-6 justify-content-center btn-fill w-100 animate-hover-btn radius-3"><span>Estimate</span></a>
                                <div class="tf-mini-cart-tool-primary text-center fw-6 w-100 tf-mini-cart-tool-close">Cancel</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /shoppingCart -->

<!-- modal compare -->
<div class="offcanvas offcanvas-bottom canvas-compare" id="compare">
    <div class="canvas-wrapper">
        <header class="canvas-header">
            <div class="close-popup">
                <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
            </div>
        </header>
        <div class="canvas-body">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="tf-compare-list">
                            <div class="tf-compare-head">
                                <div class="title">Compare Products</div>
                            </div>
                            <div class="tf-compare-offcanvas">
                                <div class="tf-compare-item">
                                    <div class="position-relative">
                                        <div class="icon">
                                            <i class="icon-close"></i>
                                        </div>
                                        <a href="product-detail.html">
                                            <img class="radius-3" src="images/products/orange-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="tf-compare-item">
                                    <div class="position-relative">
                                        <div class="icon">
                                            <i class="icon-close"></i>
                                        </div>
                                        <a href="product-detail.html">
                                            <img class="radius-3" src="images/products/pink-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="tf-compare-buttons">
                                <div class="tf-compare-buttons-wrap">
                                    <a href="compare.html" class="tf-btn radius-3 btn-fill justify-content-center fw-6 fs-14 flex-grow-1 animate-hover-btn ">Compare</a>
                                    <div class="tf-compapre-button-clear-all link">
                                        Clear All
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
<!-- /modal compare -->

<!-- modal quick_add -->
<div class="modal fade modalDemo" id="quick_add">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="wrap">
                <div class="tf-product-info-item">
                    <div class="image">
                        <img src="images/products/orange-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <a href="product-detail.html">Ribbed Tank Top</a>
                        <div class="tf-product-info-price">
                            <!-- <div class="price-on-sale">$8.00</div>
                                <div class="compare-at-price">$10.00</div>
                                <div class="badges-on-sale"><span>20</span>% OFF</div> -->
                            <div class="price">$18.00</div>
                        </div>
                    </div>
                </div>
                <div class="tf-product-info-variant-picker mb_15">
                    <div class="variant-picker-item">
                        <div class="variant-picker-label">
                            Color: <span class="fw-6 variant-picker-label-value">Orange</span>
                        </div>
                        <div class="variant-picker-values">
                            <input id="values-orange" type="radio" name="color" checked>
                            <label class="hover-tooltip radius-60" for="values-orange" data-value="Orange">
                                <span class="btn-checkbox bg-color-orange"></span>
                                <span class="tooltip">Orange</span>
                            </label>
                            <input id="values-black" type="radio" name="color">
                            <label class=" hover-tooltip radius-60" for="values-black" data-value="Black">
                                <span class="btn-checkbox bg-color-black"></span>
                                <span class="tooltip">Black</span>
                            </label>
                            <input id="values-white" type="radio" name="color">
                            <label class="hover-tooltip radius-60" for="values-white" data-value="White">
                                <span class="btn-checkbox bg-color-white"></span>
                                <span class="tooltip">White</span>
                            </label>
                        </div>
                    </div>
                    <div class="variant-picker-item">
                        <div class="variant-picker-label">
                            Size: <span class="fw-6 variant-picker-label-value">S</span>
                        </div>
                        <div class="variant-picker-values">
                            <input type="radio" name="size" id="values-s" checked>
                            <label class="style-text" for="values-s" data-value="S">
                                <p>S</p>
                            </label>
                            <input type="radio" name="size" id="values-m">
                            <label class="style-text" for="values-m" data-value="M">
                                <p>M</p>
                            </label>
                            <input type="radio" name="size" id="values-l">
                            <label class="style-text" for="values-l" data-value="L">
                                <p>L</p>
                            </label>
                            <input type="radio" name="size" id="values-xl">
                            <label class="style-text" for="values-xl" data-value="XL">
                                <p>XL</p>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="tf-product-info-quantity mb_15">
                    <div class="quantity-title fw-6">Quantity</div>
                    <div class="wg-quantity">
                        <span class="btn-quantity minus-btn">-</span>
                        <input type="text" name="number" value="1">
                        <span class="btn-quantity plus-btn">+</span>
                    </div>
                </div>
                <div class="tf-product-info-buy-button">
                    <form class="">
                        <a href="#" class="tf-btn btn-fill justify-content-center fw-6 fs-16 flex-grow-1 animate-hover-btn "><span>Add to cart -&nbsp;</span><span class="tf-qty-price">$18.00</span></a>
                        <div class="tf-product-btn-wishlist btn-icon-action">
                            <i class="icon-heart"></i>
                            <i class="icon-delete"></i>
                        </div>
                        <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="tf-product-btn-wishlist box-icon bg_white compare btn-icon-action">
                            <span class="icon icon-compare"></span>
                            <span class="icon icon-check"></span>
                        </a>
                        <div class="w-100">
                            <a href="#" class="btns-full">Buy with <img src="images/payments/paypal.png" alt=""></a>
                            <a href="#" class="payment-more-option">More payment options</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /modal quick_add -->

<!-- modal quick_view -->
<div class="modal fade modalDemo" id="quick_view">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="header">
                <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
            </div>
            <div class="wrap">
                <div class="tf-product-media-wrap">
                    <div class="swiper tf-single-slide">
                        <div class="swiper-wrapper" >
                            <div class="swiper-slide">
                                <div class="item">
                                    <img src="images/products/orange-1.jpg" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="item">
                                    <img src="images/products/pink-1.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-button-next button-style-arrow single-slide-prev"></div>
                        <div class="swiper-button-prev button-style-arrow single-slide-next"></div>
                    </div>
                </div>
                <div class="tf-product-info-wrap position-relative">
                    <div class="tf-product-info-list">
                        <div class="tf-product-info-title">
                            <h5><a class="link" href="product-detail.html">Ribbed Tank Top</a></h5>
                        </div>
                        <div class="tf-product-info-badges">
                            <div class="badges text-uppercase">Best seller</div>
                            <div class="product-status-content">
                                <i class="icon-lightning"></i>
                                <p class="fw-6">Selling fast! 48 people have this in their carts.</p>
                            </div>
                        </div>
                        <div class="tf-product-info-price">
                            <div class="price">$18.00</div>
                        </div>
                        <div class="tf-product-description">
                            <p>Nunc arcu faucibus a et lorem eu a mauris adipiscing conubia ac aptent ligula facilisis a auctor habitant parturient a a.Interdum fermentum.</p>
                        </div>
                        <div class="tf-product-info-variant-picker">
                            <div class="variant-picker-item">
                                <div class="variant-picker-label">
                                    Color: <span class="fw-6 variant-picker-label-value">Orange</span>
                                </div>
                                <div class="variant-picker-values">
                                    <input id="values-orange-1" type="radio" name="color-1" checked>
                                    <label class="hover-tooltip radius-60" for="values-orange-1" data-value="Orange">
                                        <span class="btn-checkbox bg-color-orange"></span>
                                        <span class="tooltip">Orange</span>
                                    </label>
                                    <input id="values-black-1" type="radio" name="color-1">
                                    <label class=" hover-tooltip radius-60" for="values-black-1" data-value="Black">
                                        <span class="btn-checkbox bg-color-black"></span>
                                        <span class="tooltip">Black</span>
                                    </label>
                                    <input id="values-white-1" type="radio" name="color-1">
                                    <label class="hover-tooltip radius-60" for="values-white-1" data-value="White">
                                        <span class="btn-checkbox bg-color-white"></span>
                                        <span class="tooltip">White</span>
                                    </label>
                                </div>
                            </div>
                            <div class="variant-picker-item">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="variant-picker-label">
                                        Size: <span class="fw-6 variant-picker-label-value">S</span>
                                    </div>
                                    <div class="find-size btn-choose-size fw-6">Find your size</div>
                                </div>
                                <div class="variant-picker-values">
                                    <input type="radio" name="size-1" id="values-s-1" checked>
                                    <label class="style-text" for="values-s-1" data-value="S">
                                        <p>S</p>
                                    </label>
                                    <input type="radio" name="size-1" id="values-m-1">
                                    <label class="style-text" for="values-m-1" data-value="M">
                                        <p>M</p>
                                    </label>
                                    <input type="radio" name="size-1" id="values-l-1">
                                    <label class="style-text" for="values-l-1" data-value="L">
                                        <p>L</p>
                                    </label>
                                    <input type="radio" name="size-1" id="values-xl-1">
                                    <label class="style-text" for="values-xl-1" data-value="XL">
                                        <p>XL</p>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="tf-product-info-quantity">
                            <div class="quantity-title fw-6">Quantity</div>
                            <div class="wg-quantity">
                                <span class="btn-quantity minus-btn">-</span>
                                <input type="text" name="number" value="1">
                                <span class="btn-quantity plus-btn">+</span>
                            </div>
                        </div>
                        <div class="tf-product-info-buy-button">
                            <form class="">
                                <a href="#" class="tf-btn btn-fill justify-content-center fw-6 fs-16 flex-grow-1 animate-hover-btn "><span>Add to cart -&nbsp;</span><span class="tf-qty-price">$8.00</span></a>
                                <a href="javascript:void(0);" class="tf-product-btn-wishlist hover-tooltip box-icon bg_white wishlist btn-icon-action">
                                    <span class="icon icon-heart"></span>
                                    <span class="tooltip">Add to Wishlist</span>
                                    <span class="icon icon-delete"></span>
                                </a>
                                <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft" class="tf-product-btn-wishlist hover-tooltip box-icon bg_white compare btn-icon-action">
                                    <span class="icon icon-compare"></span>
                                    <span class="tooltip">Add to Compare</span>
                                    <span class="icon icon-check"></span>
                                </a>
                                <div class="w-100">
                                    <a href="#" class="btns-full">Buy with <img src="images/payments/paypal.png" alt=""></a>
                                    <a href="#" class="payment-more-option">More payment options</a>
                                </div>
                            </form>
                        </div>
                        <div>
                            <a href="product-detail.html" class="tf-btn fw-6 btn-line">View full details<i class="icon icon-arrow1-top-left"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /modal quick_view -->

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

<!-- Filter sidebar-->
<div class="offcanvas offcanvas-start canvas-filter canvas-sidebar" id="sidebarmobile">
    <div class="canvas-wrapper">
        <header class="canvas-header">
            <span class="title">SIDEBAR PRODUCT</span>
            <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
        </header>
        <div class="canvas-body sidebar-mobile-append">

        </div>

    </div>
</div>
<!-- End Filter sidebar -->


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


<!-- Mirrored from themesflat.co/html/ecomus/shop-left-sidebar.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:26:34 GMT -->
</html>