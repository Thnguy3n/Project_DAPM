<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2024
  Time: 7:33 PM
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

    <!-- Header -->
    <!-- /Header -->
    <!-- breadcrumb -->
    <div class="tf-breadcrumb">
        <div class="container">
            <div class="tf-breadcrumb-wrap d-flex justify-content-between flex-wrap align-items-center">

                <div class="tf-breadcrumb-prev-next">
                    <a href="#" class="tf-breadcrumb-prev hover-tooltip center">
                        <i class="icon icon-arrow-left"></i>
                        <!-- <span class="tooltip">Cotton jersey top</span> -->
                    </a>
                    <a href="#" class="tf-breadcrumb-back hover-tooltip center">
                        <i class="icon icon-shop"></i>
                        <!-- <span class="tooltip">Back to Women</span> -->
                    </a>
                    <a href="#" class="tf-breadcrumb-next hover-tooltip center">
                        <i class="icon icon-arrow-right"></i>
                        <!-- <span class="tooltip">Cotton jersey top</span> -->
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- /breadcrumb -->
    <!-- default -->
    <section class="flat-spacing-4 pt_0">
        <div class="tf-main-product section-image-zoom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="tf-product-media-wrap sticky-top">
                            <div class="thumbs-slider">
                                <div class="swiper tf-product-media-thumbs other-image-zoom"
                                     data-direction="vertical">
                                    <div class="swiper-wrapper stagger-wrap">
                                        <div class="swiper-slide stagger-item">
                                            <div class="item">
                                                <img class="lazyload" data-src="/repository${productDTO.image}"
                                                     src="/repository${productDTO.image}" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper tf-product-media-main" id="gallery-swiper-started">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <a href="/repository${productDTO.image}" target="_blank" class="item"
                                               data-pswp-width="770px" data-pswp-height="1075px">
                                                <img class="tf-image-zoom lazyload"
                                                     data-zoom="/repository${productDTO.image}"
                                                     data-src="/repository${productDTO.image}"
                                                     src="/repository${productDTO.image}" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-button-next button-style-arrow thumbs-next"></div>
                                    <div class="swiper-button-prev button-style-arrow thumbs-prev"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="tf-product-info-wrap position-relative">
                            <div class="tf-zoom-main"></div>
                            <div class="tf-product-info-list other-image-zoom">
                                <div class="tf-product-info-title">
                                    <h5>${productDTO.title}</h5>
                                </div>
                                <div class="tf-product-info-badges">
                                    <div class="badges">Best seller</div>
                                    <div class="product-status-content">
                                        <i class="icon-lightning"></i>
                                        <p class="fw-6">Bán nhanh! Đã có 56 người mua sản phẩm này trong giỏ
                                            hàng</p>
                                    </div>
                                </div>
                                <div class="tf-product-info-price">
                                    <div class="price-on-sale"><c:set var="salePrice"
                                                                      value="${productDTO.price-(productDTO.price * (productDTO.discount/100))}"/> ${salePrice}VNĐ
                                    </div>
                                    <div class="compare-at-price">${productDTO.price} VNĐ</div>
                                    <div class="badges-on-sale"><span>${productDTO.discount}</span>% OFF</div>
                                </div>
                                <div class="tf-product-info-liveview">
                                    <div class="liveview-count"></div>
                                    <p class="fw-6">Mọi người đang xem ngay bây giờ</p>
                                </div>
                                <div class="tf-product-info-countdown">
                                    <div class="countdown-wrap">
                                        <div class="countdown-title">
                                            <i class="icon-time tf-ani-tada"></i>
                                            <p>NHANH LÊN! KHUYẾN MẠI KẾT THÚC SAU:</p>
                                        </div>
                                        <div class="tf-countdown style-1">
                                            <div class="js-countdown" data-timer="1007500"
                                                 data-labels="Ngày :,Giờ :,Phút :,Giây"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tf-product-info-variant-picker">
                                    <div class="variant-picker-item">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="variant-picker-label">
                                                Size: <span class="fw-6 variant-picker-label-value"
                                                            id="selectedSize">S</span>
                                            </div>
                                            <a href="#find_size" data-bs-toggle="modal" class="find-size fw-6">Tìm kích
                                                thước của bạn</a>
                                        </div>
                                        <div class="variant-picker-values">
                                            <input type="radio" name="size" id="values-s" value="S" checked>
                                            <label class="style-text" for="values-s" data-value="S"><p>S</p></label>
                                            <input type="radio" name="size" id="values-m" value="M">
                                            <label class="style-text" for="values-m" data-value="M"><p>M</p></label>
                                            <input type="radio" name="size" id="values-l" value="L">
                                            <label class="style-text" for="values-l" data-value="L"><p>L</p></label>
                                            <input type="radio" name="size" id="values-xl" value="XL">
                                            <label class="style-text" for="values-xl" data-value="XL"><p>XL</p></label>
                                        </div>
                                    </div>
                                </div>

                                <div class="tf-product-info-quantity">
                                    <div class="quantity-title fw-6">Số lượng</div>
                                    <div class="wg-quantity">
                                        <span class="btn-quantity minus-btn">-</span>
                                        <input type="text" name="quantity" id="quantity" value="1">
                                        <span class="btn-quantity plus-btn">+</span>
                                    </div>
                                </div>
                                <security:authorize access="isAuthenticated()">
                                    <div class="tf-product-info-buy-button">
                                        <form class="">
                                            <button onclick="addToCart()"
                                                class="tf-btn btn-fill justify-content-center fw-6 fs-16 flex-grow-1 animate-hover-btn "><span>Thêm vào giỏ hàng &nbsp;</span></button>
                                            <a href="javascript:void(0);"
                                               class="tf-product-btn-wishlist hover-tooltip box-icon bg_white wishlist btn-icon-action">
                                                <span class="icon icon-heart"></span>
                                                <span class="tooltip">Thêm vào danh sách mong muốn</span>
                                                <span class="icon icon-delete"></span>
                                            </a>
                                            <a href="#compare" data-bs-toggle="offcanvas"
                                               aria-controls="offcanvasLeft"
                                               class="tf-product-btn-wishlist hover-tooltip box-icon bg_white compare btn-icon-action">
                                                <span class="icon icon-compare"></span>
                                                <span class="tooltip">Thêm vào so sánh</span>
                                                <span class="icon icon-check"></span>
                                            </a>
                                            <div class="w-100">
                                                <a href="#" class="btns-full">Mua bằng <img
                                                        src="images/payments/paypal.png"
                                                        alt=""></a>
                                                <a href="#" class="payment-more-option">Nhiều lựa chọn thanh toán
                                                    hơn</a>
                                            </div>
                                        </form>
                                    </div>
                                </security:authorize>
                                <div class="tf-product-info-extra-link">
                                    <a href="#compare_color" data-bs-toggle="modal"
                                       class="tf-product-extra-icon">
                                        <div class="icon">
                                            <img src="images/item/compare.svg" alt="">
                                        </div>
                                        <div class="text fw-6">So sánh màu sắc</div>
                                    </a>
                                    <a href="#ask_question" data-bs-toggle="modal"
                                       class="tf-product-extra-icon">
                                        <div class="icon">
                                            <i class="icon-question"></i>
                                        </div>
                                        <div class="text fw-6">Đặt câu hỏi</div>
                                    </a>
                                    <a href="#delivery_return" data-bs-toggle="modal"
                                       class="tf-product-extra-icon">
                                        <div class="icon">
                                            <svg class="d-inline-block" xmlns="http://www.w3.org/2000/svg"
                                                 width="22"
                                                 height="18" viewBox="0 0 22 18" fill="currentColor">
                                                <path d="M21.7872 10.4724C21.7872 9.73685 21.5432 9.00864 21.1002 8.4217L18.7221 5.27043C18.2421 4.63481 17.4804 4.25532 16.684 4.25532H14.9787V2.54885C14.9787 1.14111 13.8334 0 12.4255 0H9.95745V1.69779H12.4255C12.8948 1.69779 13.2766 2.07962 13.2766 2.54885V14.5957H8.15145C7.80021 13.6052 6.85421 12.8936 5.74468 12.8936C4.63515 12.8936 3.68915 13.6052 3.33792 14.5957H2.55319C2.08396 14.5957 1.70213 14.2139 1.70213 13.7447V2.54885C1.70213 2.07962 2.08396 1.69779 2.55319 1.69779H9.95745V0H2.55319C1.14528 0 0 1.14111 0 2.54885V13.7447C0 15.1526 1.14528 16.2979 2.55319 16.2979H3.33792C3.68915 17.2884 4.63515 18 5.74468 18C6.85421 18 7.80021 17.2884 8.15145 16.2979H13.423C13.7742 17.2884 14.7202 18 15.8297 18C16.9393 18 17.8853 17.2884 18.2365 16.2979H21.7872V10.4724ZM16.684 5.95745C16.9494 5.95745 17.2034 6.08396 17.3634 6.29574L19.5166 9.14894H14.9787V5.95745H16.684ZM5.74468 16.2979C5.27545 16.2979 4.89362 15.916 4.89362 15.4468C4.89362 14.9776 5.27545 14.5957 5.74468 14.5957C6.21392 14.5957 6.59575 14.9776 6.59575 15.4468C6.59575 15.916 6.21392 16.2979 5.74468 16.2979ZM15.8298 16.2979C15.3606 16.2979 14.9787 15.916 14.9787 15.4468C14.9787 14.9776 15.3606 14.5957 15.8298 14.5957C16.299 14.5957 16.6809 14.9776 16.6809 15.4468C16.6809 15.916 16.299 16.2979 15.8298 16.2979ZM18.2366 14.5957C17.8853 13.6052 16.9393 12.8936 15.8298 12.8936C15.5398 12.8935 15.252 12.943 14.9787 13.04V10.8511H20.0851V14.5957H18.2366Z"></path>
                                            </svg>
                                        </div>
                                        <div class="text fw-6">Giao hàng & Trả lại</div>
                                    </a>
                                    <a href="#share_social" data-bs-toggle="modal"
                                       class="tf-product-extra-icon">
                                        <div class="icon">
                                            <i class="icon-share"></i>
                                        </div>
                                        <div class="text fw-6">Chia sẻ</div>
                                    </a>
                                </div>
                                <div class="tf-product-info-delivery-return">
                                    <div class="row">
                                        <div class="col-xl-6 col-12">
                                            <div class="tf-product-delivery">
                                                <div class="icon">
                                                    <i class="icon-delivery-time"></i>
                                                </div>
                                                <p>Thời gian giao hàng ước tính: <span
                                                        class="fw-7">12-26 ngày</span>
                                                    (Quốc tế), <span class="fw-7">3-6 ngày</span> (Việt Nam).
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-12">
                                            <div class="tf-product-delivery mb-0">
                                                <div class="icon">
                                                    <i class="icon-return-order"></i>
                                                </div>
                                                <p>Trả hàng trong vòng <span class="fw-7">30 ngày</span> kể từ
                                                    ngày mua.
                                                    Thuế và phí không được hoàn lại.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tf-product-info-trust-seal">
                                    <div class="tf-product-trust-mess">
                                        <i class="icon-safe"></i>
                                        <p class="fw-6">Đảm bảo an toàn <br> Thanh toán</p>
                                    </div>
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
        </div>
    </section>
    <!-- /default -->
    <!-- tabs -->
    <section class="flat-spacing-17 pt_0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="widget-tabs style-has-border">
                        <ul class="widget-menu-tab">
                            <li class="item-title active">
                                <span class="inner">Mô tả</span>
                            </li>
                            <li class="item-title">
                                <span class="inner">Đánh giá</span>
                            </li>
                            <li class="item-title">
                                <span class="inner">Vận chuyển</span>
                            </li>
                            <li class="item-title">
                                <span class="inner">Chính sách trả hàng</span>
                            </li>
                        </ul>
                        <div class="widget-content-tab">
                            <div class="widget-content-inner active">
                                <div class="">
                                    <p class="mb_30">
                                        Áo sơ mi tay cài nút và kiểu dáng thoải mái. Được may đo bằng vải có kết cấu
                                        nhăn, mềm mại được làm từ sợi Lencoze LENZING™ ECOVERO™ — sợi gỗ có nguồn gốc
                                        có trách nhiệm
                                        được sản xuất thông qua quy trình giảm tác động đến rừng, đa dạng sinh học và
                                        nguồn cung cấp nước.
                                    </p>
                                    <div class="tf-product-des-demo">
                                        <div class="right">
                                            <h3 class="fs-16 fw-5">Đặc trưng</h3>
                                            <ul>
                                                <li>Nút cài phía trước</li>
                                                <li>Tay áo có thể điều chỉnh</li>
                                                <li>Huy hiệu thêu Babaton ở vạt áo và viền áo</li>
                                            </ul>
                                            <h3 class="fs-16 fw-5">Chăm sóc vật liệu</h3>
                                            <ul class="mb-0">
                                                <li>Thành phần: 100% LENZING™ ECOVERO™ Viscose</li>
                                                <li>Bảo quản: Giặt tay</li>
                                                <li>Nhập khẩu</li>
                                            </ul>
                                        </div>
                                        <div class="left">
                                            <h3 class="fs-16 fw-5">Chăm sóc vật liệu</h3>
                                            <div class="d-flex gap-10 mb_15 align-items-center">
                                                <div class="icon">
                                                    <i class="icon-machine"></i>
                                                </div>
                                                <span>Giặt máy tối đa 30ºC. Vắt ngắn.</span>
                                            </div>
                                            <div class="d-flex gap-10 mb_15 align-items-center">
                                                <div class="icon">
                                                    <i class="icon-iron"></i>
                                                </div>
                                                <span>Sắt tối đa 110ºC.</span>
                                            </div>
                                            <div class="d-flex gap-10 mb_15 align-items-center">
                                                <div class="icon">
                                                    <i class="icon-bleach"></i>
                                                </div>
                                                <span>Không tẩy/tẩy.</span>
                                            </div>
                                            <div class="d-flex gap-10 mb_15 align-items-center">
                                                <div class="icon">
                                                    <i class="icon-dry-clean"></i>
                                                </div>
                                                <span>Không giặt khô.</span>
                                            </div>
                                            <div class="d-flex gap-10 align-items-center">
                                                <div class="icon">
                                                    <i class="icon-tumble-dry"></i>
                                                </div>
                                                <span>Sấy khô ở nhiệt độ vừa phải.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="widget-content-inner">
                                <table class="tf-pr-attrs">
                                    <tbody>
                                    <tr class="tf-attr-pa-color">
                                        <th class="tf-attr-label">Màu</th>
                                        <td class="tf-attr-value">
                                            <p>Trắng, Hồng, Đen</p>
                                        </td>
                                    </tr>
                                    <tr class="tf-attr-pa-size">
                                        <th class="tf-attr-label">Kích cỡ</th>
                                        <td class="tf-attr-value">
                                            <p>S, M, L, XL</p>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="widget-content-inner">
                                <div class="tf-page-privacy-policy">
                                    <div class="title">Chính sách của Công ty TNHH Tư nhân</div>
                                    <p>Công ty TNHH Tư nhân và mỗi công ty con, công ty mẹ và công ty liên kết tương ứng
                                        của họ được coi là vận hành Trang web này ("chúng tôi") nhận ra rằng bạn quan
                                        tâm đến cách thông tin về bạn được sử dụng và chia sẻ. Chúng tôi đã tạo Chính
                                        sách bảo mật này để thông báo cho bạn thông tin nào chúng tôi thu thập trên
                                        Trang web, cách chúng tôi sử dụng thông tin của bạn và các lựa chọn bạn có về
                                        cách thông tin của bạn được thu thập và sử dụng. Vui lòng đọc kỹ Chính sách bảo
                                        mật này. Việc bạn sử dụng Trang web cho thấy bạn đã đọc và chấp nhận các thông
                                        lệ về quyền riêng tư của chúng tôi, như được nêu trong Chính sách quyền riêng tư
                                        này.</p>
                                    <p>Xin lưu ý rằng các thông lệ được mô tả trong Chính sách quyền riêng tư này áp
                                        dụng cho thông tin do chúng tôi hoặc các công ty con, chi nhánh hoặc đại lý của
                                        chúng tôi thu thập: (i) thông qua Trang web này, (ii) khi áp dụng, thông qua Bộ
                                        phận dịch vụ khách hàng của chúng tôi liên quan đến Trang web này, (iii) thông
                                        qua thông tin được cung cấp cho chúng tôi tại các cửa hàng bán lẻ độc lập của
                                        chúng tôi và (iv) thông qua thông tin được cung cấp cho chúng tôi cùng với các
                                        chương trình khuyến mãi tiếp thị và rút thăm trúng thưởng.</p>
                                    <p>Chúng tôi không chịu trách nhiệm về nội dung hoặc các thông lệ về quyền riêng tư
                                        trên bất kỳ trang web nào.</p>
                                    <p>Chúng tôi có toàn quyền quyết định sửa đổi, cập nhật, bổ sung, ngừng, xóa hoặc
                                        thay đổi bất kỳ phần nào của Chính sách quyền riêng tư này, toàn bộ hoặc một
                                        phần, bất kỳ lúc nào. Khi chúng tôi sửa đổi Chính sách bảo mật này, chúng tôi sẽ
                                        sửa đổi ngày "cập nhật lần cuối" nằm ở đầu Chính sách bảo mật này.</p>
                                    <p>Nếu bạn cung cấp thông tin cho chúng tôi hoặc truy cập hoặc sử dụng Trang web
                                        theo bất kỳ cách nào sau khi Chính sách bảo mật này đã được thay đổi, bạn sẽ
                                        được coi là đã đồng ý và chấp thuận vô điều kiện với những thay đổi đó. Phiên
                                        bản mới nhất của Chính sách bảo mật này sẽ có trên Trang web và sẽ thay thế tất
                                        cả các phiên bản trước đó của Chính sách bảo mật này.</p>
                                    <p>Nếu bạn có bất kỳ câu hỏi nào liên quan đến Chính sách bảo mật này, bạn nên liên
                                        hệ với Bộ phận dịch vụ khách hàng của chúng tôi qua email tại
                                        marketing@company.com</p>
                                </div>
                            </div>
                            <div class="widget-content-inner">
                                <ul class="d-flex justify-content-center mb_18">
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M8.7 30.7h22.7c.3 0 .6-.2.7-.6l4-25.3c-.1-.4-.3-.7-.7-.8s-.7.2-.8.6L34 8.9l-3-1.1c-2.4-.9-5.1-.5-7.2 1-2.3 1.6-5.3 1.6-7.6 0-2.1-1.5-4.8-1.9-7.2-1L6 8.9l-.7-4.3c0-.4-.4-.7-.7-.6-.4.1-.6.4-.6.8l4 25.3c.1.3.3.6.7.6zm.8-21.6c2-.7 4.2-.4 6 .8 1.4 1 3 1.5 4.6 1.5s3.2-.5 4.6-1.5c1.7-1.2 4-1.6 6-.8l3.3 1.2-3 19.1H9.2l-3-19.1 3.3-1.2zM32 32H8c-.4 0-.7.3-.7.7s.3.7.7.7h24c.4 0 .7-.3.7-.7s-.3-.7-.7-.7zm0 2.7H8c-.4 0-.7.3-.7.7s.3.6.7.6h24c.4 0 .7-.3.7-.7s-.3-.6-.7-.6zm-17.9-8.9c-1 0-1.8-.3-2.4-.6l.1-2.1c.6.4 1.4.6 2 .6.8 0 1.2-.4 1.2-1.3s-.4-1.3-1.3-1.3h-1.3l.2-1.9h1.1c.6 0 1-.3 1-1.3 0-.8-.4-1.2-1.1-1.2s-1.2.2-1.9.4l-.2-1.9c.7-.4 1.5-.6 2.3-.6 2 0 3 1.3 3 2.9 0 1.2-.4 1.9-1.1 2.3 1 .4 1.3 1.4 1.3 2.5.3 1.8-.6 3.5-2.9 3.5zm4-5.5c0-3.9 1.2-5.5 3.2-5.5s3.2 1.6 3.2 5.5-1.2 5.5-3.2 5.5-3.2-1.6-3.2-5.5zm4.1 0c0-2-.1-3.5-.9-3.5s-1 1.5-1 3.5.1 3.5 1 3.5c.8 0 .9-1.5.9-3.5zm4.5-1.4c-.9 0-1.5-.8-1.5-2.1s.6-2.1 1.5-2.1 1.5.8 1.5 2.1-.5 2.1-1.5 2.1zm0-.8c.4 0 .7-.5.7-1.2s-.2-1.2-.7-1.2-.7.5-.7 1.2.3 1.2.7 1.2z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M36.7 31.1l-2.8-1.3-4.7-9.1 7.5-3.5c.4-.2.6-.6.4-1s-.6-.5-1-.4l-7.5 3.5-7.8-15c-.3-.5-1.1-.5-1.4 0l-7.8 15L4 15.9c-.4-.2-.8 0-1 .4s0 .8.4 1l7.5 3.5-4.7 9.1-2.8 1.3c-.4.2-.6.6-.4 1 .1.3.4.4.7.4.1 0 .2 0 .3-.1l1-.4-1.5 2.8c-.1.2-.1.5 0 .8.1.2.4.3.7.3h31.7c.3 0 .5-.1.7-.4.1-.2.1-.5 0-.8L35.1 32l1 .4c.1 0 .2.1.3.1.3 0 .6-.2.7-.4.1-.3 0-.8-.4-1zm-5.1-2.3l-9.8-4.6 6-2.8 3.8 7.4zM20 6.4L27.1 20 20 23.3 12.9 20 20 6.4zm-7.8 15l6 2.8-9.8 4.6 3.8-7.4zm22.4 13.1H5.4L7.2 31 20 25l12.8 6 1.8 3.5z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M5.9 5.9v28.2h28.2V5.9H5.9zM19.1 20l-8.3 8.3c-2-2.2-3.2-5.1-3.2-8.3s1.2-6.1 3.2-8.3l8.3 8.3zm-7.4-9.3c2.2-2 5.1-3.2 8.3-3.2s6.1 1.2 8.3 3.2L20 19.1l-8.3-8.4zM20 20.9l8.3 8.3c-2.2 2-5.1 3.2-8.3 3.2s-6.1-1.2-8.3-3.2l8.3-8.3zm.9-.9l8.3-8.3c2 2.2 3.2 5.1 3.2 8.3s-1.2 6.1-3.2 8.3L20.9 20zm8.4-10.2c-1.2-1.1-2.6-2-4.1-2.6h6.6l-2.5 2.6zm-18.6 0L8.2 7.2h6.6c-1.5.6-2.9 1.5-4.1 2.6zm-.9.9c-1.1 1.2-2 2.6-2.6 4.1V8.2l2.6 2.5zM7.2 25.2c.6 1.5 1.5 2.9 2.6 4.1l-2.6 2.6v-6.7zm3.5 5c1.2 1.1 2.6 2 4.1 2.6H8.2l2.5-2.6zm18.6 0l2.6 2.6h-6.6c1.4-.6 2.8-1.5 4-2.6zm.9-.9c1.1-1.2 2-2.6 2.6-4.1v6.6l-2.6-2.5zm2.6-14.5c-.6-1.5-1.5-2.9-2.6-4.1l2.6-2.6v6.7z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M35.1 33.6L33.2 6.2c0-.4-.3-.7-.7-.7H13.9c-.4 0-.7.3-.7.7s.3.7.7.7h18l.7 10.5H20.8c-8.8.2-15.9 7.5-15.9 16.4 0 .4.3.7.7.7h28.9c.2 0 .4-.1.5-.2s.2-.3.2-.5v-.2h-.1zm-28.8-.5C6.7 25.3 13 19 20.8 18.9h11.9l1 14.2H6.3zm11.2-6.8c0 1.2-1 2.1-2.1 2.1s-2.1-1-2.1-2.1 1-2.1 2.1-2.1 2.1 1 2.1 2.1zm6.3 0c0 1.2-1 2.1-2.1 2.1-1.2 0-2.1-1-2.1-2.1s1-2.1 2.1-2.1 2.1 1 2.1 2.1z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M20 33.8c7.6 0 13.8-6.2 13.8-13.8S27.6 6.2 20 6.2 6.2 12.4 6.2 20 12.4 33.8 20 33.8zm0-26.3c6.9 0 12.5 5.6 12.5 12.5S26.9 32.5 20 32.5 7.5 26.9 7.5 20 13.1 7.5 20 7.5zm-.4 15h.5c1.8 0 3-1.1 3-3.7 0-2.2-1.1-3.6-3.1-3.6h-2.6v10.6h2.2v-3.3zm0-5.2h.4c.6 0 .9.5.9 1.7 0 1.1-.3 1.7-.9 1.7h-.4v-3.4z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M30.2 29.3c2.2-2.5 3.6-5.7 3.6-9.3s-1.4-6.8-3.6-9.3l3.6-3.6c.3-.3.3-.7 0-.9-.3-.3-.7-.3-.9 0l-3.6 3.6c-2.5-2.2-5.7-3.6-9.3-3.6s-6.8 1.4-9.3 3.6L7.1 6.2c-.3-.3-.7-.3-.9 0-.3.3-.3.7 0 .9l3.6 3.6c-2.2 2.5-3.6 5.7-3.6 9.3s1.4 6.8 3.6 9.3l-3.6 3.6c-.3.3-.3.7 0 .9.1.1.3.2.5.2s.3-.1.5-.2l3.6-3.6c2.5 2.2 5.7 3.6 9.3 3.6s6.8-1.4 9.3-3.6l3.6 3.6c.1.1.3.2.5.2s.3-.1.5-.2c.3-.3.3-.7 0-.9l-3.8-3.6z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li class="">
                                        <svg viewBox="0 0 40 40" width="35px" height="35px" color="#222" margin="5px">
                                            <path fill="currentColor"
                                                  d="M34.1 34.1H5.9V5.9h28.2v28.2zM7.2 32.8h25.6V7.2H7.2v25.6zm13.5-18.3a.68.68 0 0 0-.7-.7.68.68 0 0 0-.7.7v10.9a.68.68 0 0 0 .7.7.68.68 0 0 0 .7-.7V14.5z">
                                            </path>
                                        </svg>
                                    </li>
                                </ul>
                                <p class="text-center text-paragraph">LT01: 70% len, 15% polyester, 10% polyamide, 5%
                                    acrylic 900 Gram/tấn</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /tabs -->
    <!-- product -->
    <section class="flat-spacing-1 pt_0">
        <div class="container">
            <div class="flat-title">
                <span class="title"> -Giảm giá mạnh !!!!- </span>
            </div>
            <div class="hover-sw-nav hover-sw-2">
                <div class="swiper tf-sw-product-sell wrap-sw-over" data-preview="4" data-tablet="3" data-mobile="2"
                     data-space-lg="30" data-space-md="15" data-pagination="2" data-pagination-md="3"
                     data-pagination-lg="3">
                    <div class="swiper-wrapper">
                        <c:forEach items="${Bigsale}" var="item">
                            <div class="swiper-slide" lazy="true">
                                <div class="card-product">
                                    <div class="card-product-wrapper">
                                        <a href="<c:url value="product-detail-${item.id}"/> " class="product-img">
                                            <img class="lazyload img-product" data-src="/repository${item.image}"
                                                 src="/repository${item.image}" alt="image-product">
                                        </a>
                                        <div class="list-product-btn">
                                            <a href="#quick_add" data-bs-toggle="modal"
                                               class="box-icon bg_white quick-add tf-btn-loading">
                                                <span class="icon icon-bag"></span>
                                                <span class="tooltip">Quick Add</span>
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
                                        <div class="card-product-info has-padding">
                                            <a href="<c:url value="product-detail-${item.id}"/> "
                                               class="title link">${item.title}</a>
                                            <span class="price"><span
                                                    class="fw-4 text-sale">${item.price} VNĐ </span> <span
                                                    class="text_primary"><c:set var="salePrice"
                                                                                value="${item.price-(item.price * (item.discount/100))}"/> ${salePrice}VNĐ</span>
                                                </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="nav-sw nav-next-slider nav-next-product box-icon w_46 round"><span
                        class="icon icon-arrow-left"></span></div>
                <div class="nav-sw nav-prev-slider nav-prev-product box-icon w_46 round"><span
                        class="icon icon-arrow-right"></span></div>
                <div class="sw-dots style-2 sw-pagination-product justify-content-center"></div>
            </div>
        </div>
    </section>
    <!-- /product -->
    <!-- recent -->
    <!-- /recent -->
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
                                        <p>Địa chỉ: Tầng 8, tòa nhà Ford, số 313 Trường Chinh, quận Thanh Xuân, Hồ Chí
                                            Minh
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
                                    <li><a href="#" class="box-icon w_34 round social-facebook social-line"><i
                                            class="icon fs-14 icon-fb"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-twiter social-line"><i
                                            class="icon fs-12 icon-Icon-x"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-instagram social-line"><i
                                            class="icon fs-14 icon-instagram"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-tiktok social-line"><i
                                            class="icon fs-14 icon-tiktok"></i></a></li>
                                    <li><a href="#" class="box-icon w_34 round social-pinterest social-line"><i
                                            class="icon fs-14 icon-pinterest-1"></i></a></li>
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
                                    <a href="delivery-return.html" class="footer-menu_item"> Trả hàng + Đổi hàng </a>
                                </li>
                                <li>
                                    <a href="shipping-delivery.html" class="footer-menu_item">Vận chuyển</a>
                                </li>
                                <li>
                                    <a href="terms-conditions.html" class="footer-menu_item">Điều khoản &amp; Điều
                                        kiện</a>
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
                                    <a href="our-store.html" class="footer-menu_item">Ghé thăm cửa hàng của chúng
                                        tôi</a>
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
                                    <div class="footer-menu_item">Đăng ký để nhận thông tin đầu tiên về hàng mới về,
                                        chương trình khuyến mại, nội dung độc quyền, sự kiện và nhiều hơn nữa!
                                    </div>
                                    <form class="form-newsletter" id="subscribe-form" action="#" method="post"
                                          accept-charset="utf-8" data-mailchimp="true">
                                        <div id="subscribe-content">
                                            <fieldset class="email">
                                                <input type="email" name="email-form" id="subscribe-email"
                                                       placeholder="Nhập email của bạn ...." tabindex="0"
                                                       aria-required="true">
                                            </fieldset>
                                            <div class="button-submit">
                                                <button id="subscribe-button"
                                                        class="tf-btn btn-sm radius-3 btn-fill btn-icon animate-hover-btn"
                                                        type="button">Đăng ký<i class="icon icon-arrow1-top-left"></i>
                                                </button>
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
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
              style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 286.138;"></path>
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
                                <img class="lazyload" data-src="images/demo/home-01.jpg" src="images/demo/home-01.jpg"
                                     alt="home-01">
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
                                <img class="lazyload" data-src="images/demo/home-multi-brand.jpg"
                                     src="images/demo/home-multi-brand.jpg" alt="home-multi-brand">
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
                                <img class="lazyload" data-src="images/demo/home-02.jpg" src="images/demo/home-02.jpg"
                                     alt="home-02">
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
                                <img class="lazyload" data-src="images/demo/home-03.jpg" src="images/demo/home-03.jpg"
                                     alt="home-03">
                            </div>
                            <span class="demo-name">Home Fashion 03</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-04.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-04.jpg" src="images/demo/home-04.jpg"
                                     alt="home-04">
                            </div>
                            <span class="demo-name">Home Fashion 04</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-05.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-05.jpg" src="images/demo/home-05.jpg"
                                     alt="home-05">
                            </div>
                            <span class="demo-name">Home Fashion 05</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-06.html">
                            <div class="demo-image position-relative">
                                <img class="lazyload" data-src="images/demo/home-06.jpg" src="images/demo/home-06.jpg"
                                     alt="home-06">
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
                                <img class="lazyload" data-src="images/demo/home-07.jpg" src="images/demo/home-07.jpg"
                                     alt="home-07">
                            </div>
                            <span class="demo-name">Home Fashion 07</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-08.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-08.jpg" src="images/demo/home-08.jpg"
                                     alt="home-08">
                            </div>
                            <span class="demo-name">Home Fashion 08</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-skincare.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-skincare.jpg"
                                     src="images/demo/home-skincare.jpg" alt="home-skincare">
                            </div>
                            <span class="demo-name">Home Skincare</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-headphone.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-headphone.jpg"
                                     src="images/demo/home-headphone.jpg" alt="home-headphone">
                            </div>
                            <span class="demo-name">Home Headphone</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-giftcard.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-giftcard.jpg"
                                     src="images/demo/home-giftcard.jpg" alt="home-gift-card">
                            </div>
                            <span class="demo-name">Home Gift Card</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-furniture.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-furniture.jpg"
                                     src="images/demo/home-furniture.jpg" alt="home-furniture">
                            </div>
                            <span class="demo-name">Home Furniture</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-furniture-02.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-furniture2.jpg"
                                     src="images/demo/home-furniture2.jpg" alt="home-furniture-2">
                            </div>
                            <span class="demo-name">Home Furniture 2</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-skateboard.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-skateboard.jpg"
                                     src="images/demo/home-skateboard.jpg" alt="home-skateboard">
                            </div>
                            <span class="demo-name">Home Skateboard</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-stroller.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-stroller.jpg"
                                     src="images/demo/home-stroller.jpg" alt="home-stroller">
                            </div>
                            <span class="demo-name">Home Stroller</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-decor.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-decor.jpg"
                                     src="images/demo/home-decor.jpg" alt="home-decor">
                            </div>
                            <span class="demo-name">Home Decor</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-electronic.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-electronic.jpg"
                                     src="images/demo/home-electronic.jpg" alt="home-electronic">
                            </div>
                            <span class="demo-name">Home Electronic</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-setup-gear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-setup-gear.jpg"
                                     src="images/demo/home-setup-gear.jpg" alt="home-setup-gear">
                            </div>
                            <span class="demo-name">Home Setup Gear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-dog-accessories.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-dog-accessories.jpg"
                                     src="images/demo/home-dog-accessories.jpg" alt="home-dog-accessories">
                            </div>
                            <span class="demo-name">Home Dog Accessories</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-kitchen-wear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-kitchen.jpg"
                                     src="images/demo/home-kitchen.jpg" alt="home-kitchen-wear">
                            </div>
                            <span class="demo-name">Home Kitchen Wear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-phonecase.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-phonecase.jpg"
                                     src="images/demo/home-phonecase.jpg" alt="home-phonecase">
                            </div>
                            <span class="demo-name">Home Phonecase</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-paddle-boards.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home_paddle_board.jpg"
                                     src="images/demo/home_paddle_board.jpg" alt="home-paddle_board">
                            </div>
                            <span class="demo-name">Home Paddle Boards</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-glasses.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-glasses.jpg"
                                     src="images/demo/home-glasses.jpg" alt="home-glasses">
                            </div>
                            <span class="demo-name">Home Glasses</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-pod-store.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-pod-store.jpg"
                                     src="images/demo/home-pod-store.jpg" alt="home-pod-store">
                            </div>
                            <span class="demo-name">Home POD Store</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-activewear.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-activewear.jpg"
                                     src="images/demo/home-activewear.jpg" alt="home-activewear">
                            </div>
                            <span class="demo-name">Activewear</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-handbag.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-handbag.jpg"
                                     src="images/demo/home-handbag.jpg" alt="home-handbag">
                            </div>
                            <span class="demo-name">Home Handbag</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-tee.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-tee.jpg" src="images/demo/home-tee.jpg"
                                     alt="home-tee">
                            </div>
                            <span class="demo-name">Home Tee</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-sock.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-socks.jpg"
                                     src="images/demo/home-socks.jpg" alt="home-sock">
                            </div>
                            <span class="demo-name">Home Sock</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-jewerly.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-jewelry.jpg"
                                     src="images/demo/home-jewelry.jpg" alt="home-jewelry">
                            </div>
                            <span class="demo-name">Home Jewelry</span>
                        </a>
                    </div>
                    <div class="demo-item">
                        <a href="home-sneaker.html">
                            <div class="demo-image">
                                <img class="lazyload" data-src="images/demo/home-sneaker.jpg"
                                     src="images/demo/home-sneaker.jpg" alt="home-sneaker">
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
                    <a href="#dropdown-menu-one" class="collapsed mb-menu-link current" data-bs-toggle="collapse"
                       aria-expanded="true" aria-controls="dropdown-menu-one">
                        <span>Home</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-one" class="collapse">
                        <ul class="sub-nav-menu">
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
                    <a href="#dropdown-menu-two" class="collapsed mb-menu-link current" data-bs-toggle="collapse"
                       aria-expanded="true" aria-controls="dropdown-menu-two">
                        <span>Shop</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-two" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li><a href="#sub-shop-one" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-shop-one">
                                <span>Shop layouts</span>
                                <span class="btn-open-sub"></span>
                            </a>
                                <div id="sub-shop-one" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="shop-default.html" class="sub-nav-link">Default</a></li>
                                        <li><a href="shop-left-sidebar.html" class="sub-nav-link">Left sidebar</a></li>
                                        <li><a href="shop-right-sidebar.html" class="sub-nav-link">Right sidebar</a>
                                        </li>
                                        <li><a href="shop-fullwidth.html" class="sub-nav-link">Fullwidth</a></li>
                                        <li><a href="shop-collection-sub.html" class="sub-nav-link">Sub collection</a>
                                        </li>
                                        <li><a href="shop-collection-list.html" class="sub-nav-link">Collections
                                            list</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-shop-two" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-shop-two">
                                    <span>Features</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-shop-two" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="shop-link.html" class="sub-nav-link">Pagination links</a></li>
                                        <li><a href="shop-loadmore.html" class="sub-nav-link">Pagination loadmore</a>
                                        </li>
                                        <li><a href="shop-infinite-scrolling.html" class="sub-nav-link">Pagination
                                            infinite scrolling</a></li>
                                        <li><a href="shop-filter-sidebar.html" class="sub-nav-link">Filter sidebar</a>
                                        </li>
                                        <li><a href="shop-filter-hidden.html" class="sub-nav-link">Filter hidden</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-shop-three" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-shop-three">
                                    <span>Product styles</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-shop-three" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-style-list.html" class="sub-nav-link">Product style
                                            list</a></li>
                                        <li><a href="product-style-01.html" class="sub-nav-link">Product style 01</a>
                                        </li>
                                        <li><a href="product-style-02.html" class="sub-nav-link">Product style 02</a>
                                        </li>
                                        <li><a href="product-style-03.html" class="sub-nav-link">Product style 03</a>
                                        </li>
                                        <li><a href="product-style-04.html" class="sub-nav-link">Product style 04</a>
                                        </li>
                                        <li><a href="product-style-05.html" class="sub-nav-link">Product style 05</a>
                                        </li>
                                        <li><a href="product-style-06.html" class="sub-nav-link">Product style 06</a>
                                        </li>
                                        <li><a href="product-style-07.html" class="sub-nav-link">Product style 07</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-three" class="collapsed mb-menu-link current" data-bs-toggle="collapse"
                       aria-expanded="true" aria-controls="dropdown-menu-three">
                        <span>Products</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-three" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li>
                                <a href="#sub-product-one" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-product-one">
                                    <span>Product layouts</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-one" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-detail.html" class="sub-nav-link">Product default</a></li>
                                        <li><a href="product-grid-1.html" class="sub-nav-link">Product grid 1</a></li>
                                        <li><a href="product-grid-2.html" class="sub-nav-link">Product grid 2</a></li>
                                        <li><a href="product-stacked.html" class="sub-nav-link">Product stacked</a></li>
                                        <li><a href="product-right-thumbnails.html" class="sub-nav-link">Product right
                                            thumbnails</a></li>
                                        <li><a href="product-bottom-thumbnails.html" class="sub-nav-link">Product bottom
                                            thumbnails</a></li>
                                        <li><a href="product-drawer-sidebar.html" class="sub-nav-link">Product drawer
                                            sidebar</a></li>
                                        <li><a href="product-description-accordion.html" class="sub-nav-link">Product
                                            description accordion</a></li>
                                        <li><a href="product-description-list.html" class="sub-nav-link">Product
                                            description list</a></li>
                                        <li><a href="product-description-vertical.html" class="sub-nav-link">Product
                                            description vertical</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-two" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-product-two">
                                    <span>Product details</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-two" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-inner-zoom.html" class="sub-nav-link">Product inner
                                            zoom</a></li>
                                        <li><a href="product-zoom-magnifier.html" class="sub-nav-link">Product zoom
                                            magnifier</a></li>
                                        <li><a href="product-no-zoom.html" class="sub-nav-link">Product no zoom</a></li>
                                        <li><a href="product-photoswipe-popup.html" class="sub-nav-link">Product
                                            photoswipe popup</a></li>
                                        <li><a href="product-zoom-popup.html" class="sub-nav-link">Product external zoom
                                            and photoswipe popup</a></li>
                                        <li><a href="product-video.html" class="sub-nav-link">Product video</a></li>
                                        <li><a href="product-3d.html" class="sub-nav-link">Product 3D, AR models</a>
                                        </li>
                                        <li><a href="product-options-customizer.html" class="sub-nav-link">Product
                                            options & customizer</a></li>
                                        <li><a href="product-advanced-types.html" class="sub-nav-link">Advanced product
                                            types</a></li>
                                        <li><a href="product-giftcard.html" class="sub-nav-link">Recipient information
                                            form for gift card products</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-three" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-product-three">
                                    <span>Product swatchs</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-three" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-color-swatch.html" class="sub-nav-link">Product color
                                            swatch</a></li>
                                        <li><a href="product-rectangle.html" class="sub-nav-link">Product rectangle</a>
                                        </li>
                                        <li><a href="product-rectangle-color.html" class="sub-nav-link">Product
                                            rectangle color</a></li>
                                        <li><a href="product-swatch-image.html" class="sub-nav-link">Product swatch
                                            image</a></li>
                                        <li><a href="product-swatch-image-rounded.html" class="sub-nav-link">Product
                                            swatch image rounded</a></li>
                                        <li><a href="product-swatch-dropdown.html" class="sub-nav-link">Product swatch
                                            dropdown</a></li>
                                        <li><a href="product-swatch-dropdown-color.html" class="sub-nav-link">Product
                                            swatch dropdown color</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a href="#sub-product-four" class="sub-nav-link collapsed" data-bs-toggle="collapse"
                                   aria-expanded="true" aria-controls="sub-product-four">
                                    <span>Product features</span>
                                    <span class="btn-open-sub"></span>
                                </a>
                                <div id="sub-product-four" class="collapse">
                                    <ul class="sub-nav-menu sub-menu-level-2">
                                        <li><a href="product-frequently-bought-together.html" class="sub-nav-link">Frequently
                                            bought together</a></li>
                                        <li><a href="product-frequently-bought-together-2.html" class="sub-nav-link">Frequently
                                            bought together 2</a></li>
                                        <li><a href="product-upsell-features.html" class="sub-nav-link">Product upsell
                                            features</a></li>
                                        <li><a href="product-pre-orders.html" class="sub-nav-link">Product
                                            pre-orders</a></li>
                                        <li><a href="product-notification.html" class="sub-nav-link">Back in stock
                                            notification</a></li>
                                        <li><a href="product-pickup.html" class="sub-nav-link">Product pickup</a></li>
                                        <li><a href="product-images-grouped.html" class="sub-nav-link">Variant images
                                            grouped</a></li>
                                        <li><a href="product-complimentary.html" class="sub-nav-link">Complimentary
                                            products</a></li>
                                        <li><a href="product-quick-order-list.html" class="sub-nav-link line-clamp">Quick
                                            order list
                                            <div class="demo-label"><span class="demo-new">New</span></div>
                                        </a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-four" class="collapsed mb-menu-link current" data-bs-toggle="collapse"
                       aria-expanded="true" aria-controls="dropdown-menu-four">
                        <span>Pages</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-four" class="collapse">
                        <ul class="sub-nav-menu" id="sub-menu-navigation">
                            <li><a href="about-us.html" class="sub-nav-link">About us</a></li>
                            <li><a href="brands.html" class="sub-nav-link line-clamp">Brands
                                <div class="demo-label"><span class="demo-new">New</span></div>
                            </a></li>
                            <li><a href="brands-v2.html" class="sub-nav-link">Brands V2</a></li>
                            <li><a href="contact-1.html" class="sub-nav-link">Contact 1</a></li>
                            <li><a href="contact-2.html" class="sub-nav-link">Contact 2</a></li>
                            <li><a href="faq-1.html" class="sub-nav-link">FAQ 01</a></li>
                            <li><a href="faq-2.html" class="sub-nav-link">FAQ 02</a></li>
                            <li><a href="our-store.html" class="sub-nav-link">Our store</a></li>
                            <li><a href="store-locations.html" class="sub-nav-link">Store locator</a></li>
                            <li><a href="timeline.html" class="sub-nav-link line-clamp">Timeline
                                <div class="demo-label"><span class="demo-new">New</span></div>
                            </a></li>
                            <li><a href="view-cart.html" class="sub-nav-link line-clamp">View cart</a></li>
                            <li><a href="checkout.html" class="sub-nav-link line-clamp">Check out</a></li>
                            <li><a href="payment-confirmation.html" class="sub-nav-link line-clamp">Payment
                                Confirmation</a></li>
                            <li><a href="payment-failure.html" class="sub-nav-link line-clamp">Payment Failure</a></li>
                            <li><a href="my-account.html" class="sub-nav-link line-clamp">My Account</a></li>
                        </ul>
                    </div>

                </li>
                <li class="nav-mb-item">
                    <a href="#dropdown-menu-five" class="collapsed mb-menu-link current" data-bs-toggle="collapse"
                       aria-expanded="true" aria-controls="dropdown-menu-five">
                        <span>Blog</span>
                        <span class="btn-open-sub"></span>
                    </a>
                    <div id="dropdown-menu-five" class="collapse">
                        <ul class="sub-nav-menu">
                            <li><a href="blog-grid.html" class="sub-nav-link">Grid layout</a></li>
                            <li><a href="blog-sidebar-left.html" class="sub-nav-link">Left sidebar</a></li>
                            <li><a href="blog-sidebar-right.html" class="sub-nav-link">Right sidebar</a></li>
                            <li><a href="blog-list.html" class="sub-nav-link">Blog list</a></li>
                            <li><a href="blog-detail.html" class="sub-nav-link">Single Post</a></li>
                        </ul>
                    </div>

                </li>
                <li class="nav-mb-item">
                    <a href="https://themeforest.net/item/ecomus-ultimate-html5-template/53417990?s_rank=3"
                       class="mb-menu-link">Buy now</a>
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
                        <option selected data-thumbnail="images/country/us.svg">USD <span>$ | United States</span>
                        </option>
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
                        <input type="text" placeholder="Tìm kiếm" class="" name="text" tabindex="0" value=""
                               aria-required="true" required="">
                    </fieldset>
                    <button class="" type="submit"><i class="icon-search"></i></button>
                </form>
            </div>
        </header>
    </div>
</div>
<!-- /canvasSearch -->
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
                                    <div class="swiper-wrapper">
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
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="18" viewBox="0 0 16 18"
                                     fill="currentColor">
                                    <path d="M5.12187 16.4582H2.78952C2.02045 16.4582 1.39476 15.8325 1.39476 15.0634V2.78952C1.39476 2.02045 2.02045 1.39476 2.78952 1.39476H11.3634C12.1325 1.39476 12.7582 2.02045 12.7582 2.78952V7.07841C12.7582 7.46357 13.0704 7.77579 13.4556 7.77579C13.8407 7.77579 14.1529 7.46357 14.1529 7.07841V2.78952C14.1529 1.25138 12.9016 0 11.3634 0H2.78952C1.25138 0 0 1.25138 0 2.78952V15.0634C0 16.6015 1.25138 17.8529 2.78952 17.8529H5.12187C5.50703 17.8529 5.81925 17.5407 5.81925 17.1555C5.81925 16.7704 5.50703 16.4582 5.12187 16.4582Z"></path>
                                    <path d="M15.3882 10.0971C14.5724 9.28136 13.2452 9.28132 12.43 10.0965L8.60127 13.9168C8.51997 13.9979 8.45997 14.0979 8.42658 14.2078L7.59276 16.9528C7.55646 17.0723 7.55292 17.1993 7.58249 17.3207C7.61206 17.442 7.67367 17.5531 7.76087 17.6425C7.84807 17.7319 7.95768 17.7962 8.07823 17.8288C8.19879 17.8613 8.32587 17.8609 8.44621 17.8276L11.261 17.0479C11.3769 17.0158 11.4824 16.9543 11.5675 16.8694L15.3882 13.0559C16.2039 12.2401 16.2039 10.9129 15.3882 10.0971ZM10.712 15.7527L9.29586 16.145L9.71028 14.7806L12.2937 12.2029L13.2801 13.1893L10.712 15.7527ZM14.4025 12.0692L14.2673 12.204L13.2811 11.2178L13.4157 11.0834C13.6876 10.8115 14.1301 10.8115 14.402 11.0834C14.6739 11.3553 14.6739 11.7977 14.4025 12.0692Z"></path>
                                </svg>
                            </div>
                            <div class="tf-mini-cart-tool-btn btn-add-gift">
                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="18" viewBox="0 0 17 18"
                                     fill="currentColor">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M2.99566 2.73409C2.99566 0.55401 5.42538 -0.746668 7.23916 0.463462L8.50073 1.30516L9.7623 0.463462C11.5761 -0.746668 14.0058 0.55401 14.0058 2.73409V3.24744H14.8225C15.9633 3.24744 16.8881 4.17233 16.8881 5.31312V6.82566C16.8881 7.21396 16.5734 7.52873 16.1851 7.52873H15.8905V15.1877C15.8905 15.1905 15.8905 15.1933 15.8905 15.196C15.886 16.7454 14.6286 18 13.0782 18H3.92323C2.37003 18 1.11091 16.7409 1.11091 15.1877V7.52877H0.81636C0.42806 7.52877 0.113281 7.21399 0.113281 6.82569V5.31316C0.113281 4.17228 1.03812 3.24744 2.179 3.24744H2.99566V2.73409ZM4.40181 3.24744H7.79765V2.52647L6.45874 1.63317C5.57987 1.0468 4.40181 1.67677 4.40181 2.73409V3.24744ZM9.20381 2.52647V3.24744H12.5996V2.73409C12.5996 1.67677 11.4216 1.0468 10.5427 1.63317L9.20381 2.52647ZM2.179 4.6536C1.81472 4.6536 1.51944 4.94888 1.51944 5.31316V6.12261H5.73398L5.734 4.6536H2.179ZM5.73401 7.52877V13.9306C5.73401 14.1806 5.86682 14.4119 6.08281 14.5379C6.29879 14.6639 6.56545 14.6657 6.78312 14.5426L8.50073 13.5715L10.2183 14.5426C10.436 14.6657 10.7027 14.6639 10.9187 14.5379C11.1346 14.4119 11.2674 14.1806 11.2674 13.9306V7.52873H14.4844V15.1603C14.4844 15.1627 14.4843 15.1651 14.4843 15.1675V15.1877C14.4843 15.9643 13.8548 16.5938 13.0782 16.5938H3.92323C3.14663 16.5938 2.51707 15.9643 2.51707 15.1877V7.52877H5.73401ZM15.482 6.12258V5.31312C15.482 4.94891 15.1867 4.6536 14.8225 4.6536H11.2674V6.12258H15.482ZM9.86129 4.6536H7.14017V12.7254L8.15469 12.1518C8.36941 12.0304 8.63204 12.0304 8.84676 12.1518L9.86129 12.7254V4.6536Z"></path>
                                </svg>
                            </div>
                            <div class="tf-mini-cart-tool-btn btn-estimate-shipping">
                                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="18" viewBox="0 0 26 18"
                                     fill="currentColor">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M0 0.811989C0 0.36354 0.36354 0 0.811989 0H15.4278C15.8763 0 16.2398 0.36354 16.2398 0.811989V3.10596H21.0144C23.6241 3.10596 25.8643 5.05894 25.8643 7.61523V14.6414C25.8643 15.0899 25.5007 15.4534 25.0523 15.4534H23.545C23.2139 16.9115 21.9098 18 20.3514 18C18.7931 18 17.4889 16.9115 17.1578 15.4534H8.69534C8.36423 16.9115 7.0601 18 5.50175 18C3.9434 18 2.63927 16.9115 2.30815 15.4534H0.811989C0.36354 15.4534 0 15.0899 0 14.6414V0.811989ZM2.35089 13.8294C2.74052 12.4562 4.00366 11.4503 5.50175 11.4503C6.99983 11.4503 8.26298 12.4562 8.6526 13.8294H14.6158V1.62398H1.62398V13.8294H2.35089ZM16.2398 4.72994V7.95749H24.2403V7.61523C24.2403 6.08759 22.8649 4.72994 21.0144 4.72994H16.2398ZM24.2403 9.58147H16.2398V13.8294H17.2006C17.5902 12.4562 18.8533 11.4503 20.3514 11.4503C21.8495 11.4503 23.1126 12.4562 23.5023 13.8294H24.2403V9.58147ZM5.50175 13.0743C4.58999 13.0743 3.85087 13.8134 3.85087 14.7251C3.85087 15.6369 4.58999 16.376 5.50175 16.376C6.41351 16.376 7.15263 15.6369 7.15263 14.7251C7.15263 13.8134 6.41351 13.0743 5.50175 13.0743ZM20.3514 13.0743C19.4397 13.0743 18.7005 13.8134 18.7005 14.7251C18.7005 15.6369 19.4397 16.376 20.3514 16.376C21.2632 16.376 22.0023 15.6369 22.0023 14.7251C22.0023 13.8134 21.2632 13.0743 20.3514 13.0743Z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="tf-mini-cart-bottom-wrap">
                            <div class="tf-cart-totals-discounts">
                                <div class="tf-cart-total">Tổng cộng</div>
                                <div class="tf-totals-total-value fw-6">$49.99 USD</div>
                            </div>
                            <div class="tf-cart-tax">Thuế và <a href="#">phí vận chuyển</a> được tính khi thanh toán
                            </div>
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
                                <a href="view-cart.html"
                                   class="tf-btn btn-outline radius-3 link w-100 justify-content-center">Xem giỏ
                                    hàng</a>
                                <a href="checkout.html"
                                   class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Thanh toán</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="tf-mini-cart-tool-openable add-note">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <div class="tf-mini-cart-tool-content">
                            <label for="Cart-note" class="tf-mini-cart-tool-text">
                                <div class="icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="18" viewBox="0 0 16 18"
                                         fill="currentColor">
                                        <path d="M5.12187 16.4582H2.78952C2.02045 16.4582 1.39476 15.8325 1.39476 15.0634V2.78952C1.39476 2.02045 2.02045 1.39476 2.78952 1.39476H11.3634C12.1325 1.39476 12.7582 2.02045 12.7582 2.78952V7.07841C12.7582 7.46357 13.0704 7.77579 13.4556 7.77579C13.8407 7.77579 14.1529 7.46357 14.1529 7.07841V2.78952C14.1529 1.25138 12.9016 0 11.3634 0H2.78952C1.25138 0 0 1.25138 0 2.78952V15.0634C0 16.6015 1.25138 17.8529 2.78952 17.8529H5.12187C5.50703 17.8529 5.81925 17.5407 5.81925 17.1555C5.81925 16.7704 5.50703 16.4582 5.12187 16.4582Z"></path>
                                        <path d="M15.3882 10.0971C14.5724 9.28136 13.2452 9.28132 12.43 10.0965L8.60127 13.9168C8.51997 13.9979 8.45997 14.0979 8.42658 14.2078L7.59276 16.9528C7.55646 17.0723 7.55292 17.1993 7.58249 17.3207C7.61206 17.442 7.67367 17.5531 7.76087 17.6425C7.84807 17.7319 7.95768 17.7962 8.07823 17.8288C8.19879 17.8613 8.32587 17.8609 8.44621 17.8276L11.261 17.0479C11.3769 17.0158 11.4824 16.9543 11.5675 16.8694L15.3882 13.0559C16.2039 12.2401 16.2039 10.9129 15.3882 10.0971ZM10.712 15.7527L9.29586 16.145L9.71028 14.7806L12.2937 12.2029L13.2801 13.1893L10.712 15.7527ZM14.4025 12.0692L14.2673 12.204L13.2811 11.2178L13.4157 11.0834C13.6876 10.8115 14.1301 10.8115 14.402 11.0834C14.6739 11.3553 14.6739 11.7977 14.4025 12.0692Z"></path>
                                    </svg>
                                </div>
                                <span>Add Order Note</span>
                            </label>
                            <textarea name="note" id="Cart-note" placeholder="How can we help you?"></textarea>
                            <div class="tf-cart-tool-btns justify-content-center">
                                <div class="tf-mini-cart-tool-primary text-center w-100 fw-6 tf-mini-cart-tool-close">
                                    Close
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tf-mini-cart-tool-openable add-gift">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <form class="tf-product-form-addgift">
                            <div class="tf-mini-cart-tool-content">
                                <div class="tf-mini-cart-tool-text">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                             viewBox="0 0 24 24" fill="currentColor">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M4.65957 3.64545C4.65957 0.73868 7.89921 -0.995558 10.3176 0.617949L11.9997 1.74021L13.6818 0.617949C16.1001 -0.995558 19.3398 0.73868 19.3398 3.64545V4.32992H20.4286C21.9498 4.32992 23.1829 5.56311 23.1829 7.08416V9.10087C23.1829 9.61861 22.7632 10.0383 22.2454 10.0383H21.8528V20.2502C21.8528 20.254 21.8527 20.2577 21.8527 20.2614C21.8467 22.3272 20.1702 24 18.103 24H5.89634C3.82541 24 2.14658 22.3212 2.14658 20.2502V10.0384H1.75384C1.23611 10.0384 0.816406 9.61865 0.816406 9.10092V7.08421C0.816406 5.56304 2.04953 4.32992 3.57069 4.32992H4.65957V3.64545ZM6.53445 4.32992H11.0622V3.36863L9.27702 2.17757C8.10519 1.39573 6.53445 2.2357 6.53445 3.64545V4.32992ZM12.9371 3.36863V4.32992H17.4649V3.64545C17.4649 2.2357 15.8942 1.39573 14.7223 2.17756L12.9371 3.36863ZM3.57069 6.2048C3.08499 6.2048 2.69128 6.59851 2.69128 7.08421V8.16348H8.31067L8.3107 6.2048H3.57069ZM8.31071 10.0384V18.5741C8.31071 18.9075 8.48779 19.2158 8.77577 19.3838C9.06376 19.5518 9.4193 19.5542 9.70953 19.3901L11.9997 18.0953L14.2898 19.3901C14.58 19.5542 14.9356 19.5518 15.2236 19.3838C15.5115 19.2158 15.6886 18.9075 15.6886 18.5741V10.0383H19.9779V20.2137C19.9778 20.2169 19.9778 20.2201 19.9778 20.2233V20.2502C19.9778 21.2857 19.1384 22.1251 18.103 22.1251H5.89634C4.86088 22.1251 4.02146 21.2857 4.02146 20.2502V10.0384H8.31071ZM21.308 8.16344V7.08416C21.308 6.59854 20.9143 6.2048 20.4286 6.2048H15.6886V8.16344H21.308ZM13.8138 6.2048H10.1856V16.9672L11.5383 16.2024C11.8246 16.0405 12.1748 16.0405 12.461 16.2024L13.8138 16.9672V6.2048Z"></path>
                                        </svg>
                                    </div>
                                    <div class="tf-gift-wrap-infos">
                                        <p>Do you want a gift wrap?</p>
                                        Only
                                        <span class="price fw-6">$5.00</span>
                                    </div>
                                </div>
                                <div class="tf-cart-tool-btns">
                                    <button type="submit"
                                            class="tf-btn fw-6 w-100 justify-content-center btn-fill animate-hover-btn radius-3">
                                        <span>Add a gift wrap</span></button>
                                    <div class="tf-mini-cart-tool-primary text-center w-100 fw-6 tf-mini-cart-tool-close">
                                        Cancel
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tf-mini-cart-tool-openable estimate-shipping">
                        <div class="overplay tf-mini-cart-tool-close"></div>
                        <div class="tf-mini-cart-tool-content">
                            <div class="tf-mini-cart-tool-text">
                                <div class="icon">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="15" viewBox="0 0 21 15"
                                         fill="currentColor">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M0.441406 1.13155C0.441406 0.782753 0.724159 0.5 1.07295 0.5H12.4408C12.7896 0.5 13.0724 0.782753 13.0724 1.13155V2.91575H16.7859C18.8157 2.91575 20.5581 4.43473 20.5581 6.42296V11.8878C20.5581 12.2366 20.2753 12.5193 19.9265 12.5193H18.7542C18.4967 13.6534 17.4823 14.5 16.2703 14.5C15.0582 14.5 14.0439 13.6534 13.7864 12.5193H7.20445C6.94692 13.6534 5.93259 14.5 4.72054 14.5C3.50849 14.5 2.49417 13.6534 2.23664 12.5193H1.07295C0.724159 12.5193 0.441406 12.2366 0.441406 11.8878V1.13155ZM2.26988 11.2562C2.57292 10.1881 3.55537 9.40578 4.72054 9.40578C5.88572 9.40578 6.86817 10.1881 7.17121 11.2562H11.8093V1.76309H1.7045V11.2562H2.26988ZM13.0724 4.17884V6.68916H19.295V6.42296C19.295 5.2348 18.2252 4.17884 16.7859 4.17884H13.0724ZM19.295 7.95226H13.0724V11.2562H13.8196C14.1227 10.1881 15.1051 9.40578 16.2703 9.40578C17.4355 9.40578 18.4179 10.1881 18.7209 11.2562H19.295V7.95226ZM4.72054 10.6689C4.0114 10.6689 3.43652 11.2437 3.43652 11.9529C3.43652 12.662 4.0114 13.2369 4.72054 13.2369C5.42969 13.2369 6.00456 12.662 6.00456 11.9529C6.00456 11.2437 5.42969 10.6689 4.72054 10.6689ZM16.2703 10.6689C15.5611 10.6689 14.9863 11.2437 14.9863 11.9529C14.9863 12.662 15.5611 13.2369 16.2703 13.2369C16.9794 13.2369 17.5543 12.662 17.5543 11.9529C17.5543 11.2437 16.9794 10.6689 16.2703 10.6689Z"></path>
                                    </svg>
                                </div>
                                <span class="fw-6">Estimate Shipping</span>
                            </div>
                            <div class="field">
                                <p>Country</p>
                                <select class="tf-select w-100" id="ShippingCountry_CartDrawer-Form"
                                        name="address[country]" data-default="">
                                    <option value="---" data-provinces="[]">---</option>
                                    <option value="Australia"
                                            data-provinces="[['Australian Capital Territory','Australian Capital Territory'],['New South Wales','New South Wales'],['Northern Territory','Northern Territory'],['Queensland','Queensland'],['South Australia','South Australia'],['Tasmania','Tasmania'],['Victoria','Victoria'],['Western Australia','Western Australia']]">
                                        Australia
                                    </option>
                                    <option value="Austria" data-provinces="[]">Austria</option>
                                    <option value="Belgium" data-provinces="[]">Belgium</option>
                                    <option value="Canada"
                                            data-provinces="[['Alberta','Alberta'],['British Columbia','British Columbia'],['Manitoba','Manitoba'],['New Brunswick','New Brunswick'],['Newfoundland and Labrador','Newfoundland and Labrador'],['Northwest Territories','Northwest Territories'],['Nova Scotia','Nova Scotia'],['Nunavut','Nunavut'],['Ontario','Ontario'],['Prince Edward Island','Prince Edward Island'],['Quebec','Quebec'],['Saskatchewan','Saskatchewan'],['Yukon','Yukon']]">
                                        Canada
                                    </option>
                                    <option value="Czech Republic" data-provinces="[]">Czechia</option>
                                    <option value="Denmark" data-provinces="[]">Denmark</option>
                                    <option value="Finland" data-provinces="[]">Finland</option>
                                    <option value="France" data-provinces="[]">France</option>
                                    <option value="Germany" data-provinces="[]">Germany</option>
                                    <option value="Hong Kong"
                                            data-provinces="[['Hong Kong Island','Hong Kong Island'],['Kowloon','Kowloon'],['New Territories','New Territories']]">
                                        Hong Kong SAR
                                    </option>
                                    <option value="Ireland"
                                            data-provinces="[['Carlow','Carlow'],['Cavan','Cavan'],['Clare','Clare'],['Cork','Cork'],['Donegal','Donegal'],['Dublin','Dublin'],['Galway','Galway'],['Kerry','Kerry'],['Kildare','Kildare'],['Kilkenny','Kilkenny'],['Laois','Laois'],['Leitrim','Leitrim'],['Limerick','Limerick'],['Longford','Longford'],['Louth','Louth'],['Mayo','Mayo'],['Meath','Meath'],['Monaghan','Monaghan'],['Offaly','Offaly'],['Roscommon','Roscommon'],['Sligo','Sligo'],['Tipperary','Tipperary'],['Waterford','Waterford'],['Westmeath','Westmeath'],['Wexford','Wexford'],['Wicklow','Wicklow']]">
                                        Ireland
                                    </option>
                                    <option value="Israel" data-provinces="[]">Israel</option>
                                    <option value="Italy"
                                            data-provinces="[['Agrigento','Agrigento'],['Alessandria','Alessandria'],['Ancona','Ancona'],['Aosta','Aosta Valley'],['Arezzo','Arezzo'],['Ascoli Piceno','Ascoli Piceno'],['Asti','Asti'],['Avellino','Avellino'],['Bari','Bari'],['Barletta-Andria-Trani','Barletta-Andria-Trani'],['Belluno','Belluno'],['Benevento','Benevento'],['Bergamo','Bergamo'],['Biella','Biella'],['Bologna','Bologna'],['Bolzano','South Tyrol'],['Brescia','Brescia'],['Brindisi','Brindisi'],['Cagliari','Cagliari'],['Caltanissetta','Caltanissetta'],['Campobasso','Campobasso'],['Carbonia-Iglesias','Carbonia-Iglesias'],['Caserta','Caserta'],['Catania','Catania'],['Catanzaro','Catanzaro'],['Chieti','Chieti'],['Como','Como'],['Cosenza','Cosenza'],['Cremona','Cremona'],['Crotone','Crotone'],['Cuneo','Cuneo'],['Enna','Enna'],['Fermo','Fermo'],['Ferrara','Ferrara'],['Firenze','Florence'],['Foggia','Foggia'],['Forlì-Cesena','Forlì-Cesena'],['Frosinone','Frosinone'],['Genova','Genoa'],['Gorizia','Gorizia'],['Grosseto','Grosseto'],['Imperia','Imperia'],['Isernia','Isernia'],['L'Aquila','L’Aquila'],['La Spezia','La Spezia'],['Latina','Latina'],['Lecce','Lecce'],['Lecco','Lecco'],['Livorno','Livorno'],['Lodi','Lodi'],['Lucca','Lucca'],['Macerata','Macerata'],['Mantova','Mantua'],['Massa-Carrara','Massa and Carrara'],['Matera','Matera'],['Medio Campidano','Medio Campidano'],['Messina','Messina'],['Milano','Milan'],['Modena','Modena'],['Monza e Brianza','Monza and Brianza'],['Napoli','Naples'],['Novara','Novara'],['Nuoro','Nuoro'],['Ogliastra','Ogliastra'],['Olbia-Tempio','Olbia-Tempio'],['Oristano','Oristano'],['Padova','Padua'],['Palermo','Palermo'],['Parma','Parma'],['Pavia','Pavia'],['Perugia','Perugia'],['Pesaro e Urbino','Pesaro and Urbino'],['Pescara','Pescara'],['Piacenza','Piacenza'],['Pisa','Pisa'],['Pistoia','Pistoia'],['Pordenone','Pordenone'],['Potenza','Potenza'],['Prato','Prato'],['Ragusa','Ragusa'],['Ravenna','Ravenna'],['Reggio Calabria','Reggio Calabria'],['Reggio Emilia','Reggio Emilia'],['Rieti','Rieti'],['Rimini','Rimini'],['Roma','Rome'],['Rovigo','Rovigo'],['Salerno','Salerno'],['Sassari','Sassari'],['Savona','Savona'],['Siena','Siena'],['Siracusa','Syracuse'],['Sondrio','Sondrio'],['Taranto','Taranto'],['Teramo','Teramo'],['Terni','Terni'],['Torino','Turin'],['Trapani','Trapani'],['Trento','Trentino'],['Treviso','Treviso'],['Trieste','Trieste'],['Udine','Udine'],['Varese','Varese'],['Venezia','Venice'],['Verbano-Cusio-Ossola','Verbano-Cusio-Ossola'],['Vercelli','Vercelli'],['Verona','Verona'],['Vibo Valentia','Vibo Valentia'],['Vicenza','Vicenza'],['Viterbo','Viterbo']]">
                                        Italy
                                    </option>
                                    <option value="Japan"
                                            data-provinces="[['Aichi','Aichi'],['Akita','Akita'],['Aomori','Aomori'],['Chiba','Chiba'],['Ehime','Ehime'],['Fukui','Fukui'],['Fukuoka','Fukuoka'],['Fukushima','Fukushima'],['Gifu','Gifu'],['Gunma','Gunma'],['Hiroshima','Hiroshima'],['Hokkaidō','Hokkaido'],['Hyōgo','Hyogo'],['Ibaraki','Ibaraki'],['Ishikawa','Ishikawa'],['Iwate','Iwate'],['Kagawa','Kagawa'],['Kagoshima','Kagoshima'],['Kanagawa','Kanagawa'],['Kumamoto','Kumamoto'],['Kyōto','Kyoto'],['Kōchi','Kochi'],['Mie','Mie'],['Miyagi','Miyagi'],['Miyazaki','Miyazaki'],['Nagano','Nagano'],['Nagasaki','Nagasaki'],['Nara','Nara'],['Niigata','Niigata'],['Okayama','Okayama'],['Okinawa','Okinawa'],['Saga','Saga'],['Saitama','Saitama'],['Shiga','Shiga'],['Shimane','Shimane'],['Shizuoka','Shizuoka'],['Tochigi','Tochigi'],['Tokushima','Tokushima'],['Tottori','Tottori'],['Toyama','Toyama'],['Tōkyō','Tokyo'],['Wakayama','Wakayama'],['Yamagata','Yamagata'],['Yamaguchi','Yamaguchi'],['Yamanashi','Yamanashi'],['Ōita','Oita'],['Ōsaka','Osaka']]">
                                        Japan
                                    </option>
                                    <option value="Malaysia"
                                            data-provinces="[['Johor','Johor'],['Kedah','Kedah'],['Kelantan','Kelantan'],['Kuala Lumpur','Kuala Lumpur'],['Labuan','Labuan'],['Melaka','Malacca'],['Negeri Sembilan','Negeri Sembilan'],['Pahang','Pahang'],['Penang','Penang'],['Perak','Perak'],['Perlis','Perlis'],['Putrajaya','Putrajaya'],['Sabah','Sabah'],['Sarawak','Sarawak'],['Selangor','Selangor'],['Terengganu','Terengganu']]">
                                        Malaysia
                                    </option>
                                    <option value="Netherlands" data-provinces="[]">Netherlands</option>
                                    <option value="New Zealand"
                                            data-provinces="[['Auckland','Auckland'],['Bay of Plenty','Bay of Plenty'],['Canterbury','Canterbury'],['Chatham Islands','Chatham Islands'],['Gisborne','Gisborne'],['Hawke's Bay','Hawke’s Bay'],['Manawatu-Wanganui','Manawatū-Whanganui'],['Marlborough','Marlborough'],['Nelson','Nelson'],['Northland','Northland'],['Otago','Otago'],['Southland','Southland'],['Taranaki','Taranaki'],['Tasman','Tasman'],['Waikato','Waikato'],['Wellington','Wellington'],['West Coast','West Coast']]">
                                        New Zealand
                                    </option>
                                    <option value="Norway" data-provinces="[]">Norway</option>
                                    <option value="Poland" data-provinces="[]">Poland</option>
                                    <option value="Portugal"
                                            data-provinces="[['Aveiro','Aveiro'],['Açores','Azores'],['Beja','Beja'],['Braga','Braga'],['Bragança','Bragança'],['Castelo Branco','Castelo Branco'],['Coimbra','Coimbra'],['Faro','Faro'],['Guarda','Guarda'],['Leiria','Leiria'],['Lisboa','Lisbon'],['Madeira','Madeira'],['Portalegre','Portalegre'],['Porto','Porto'],['Santarém','Santarém'],['Setúbal','Setúbal'],['Viana do Castelo','Viana do Castelo'],['Vila Real','Vila Real'],['Viseu','Viseu'],['Évora','Évora']]">
                                        Portugal
                                    </option>
                                    <option value="Singapore" data-provinces="[]">Singapore</option>
                                    <option value="South Korea"
                                            data-provinces="[['Busan','Busan'],['Chungbuk','North Chungcheong'],['Chungnam','South Chungcheong'],['Daegu','Daegu'],['Daejeon','Daejeon'],['Gangwon','Gangwon'],['Gwangju','Gwangju City'],['Gyeongbuk','North Gyeongsang'],['Gyeonggi','Gyeonggi'],['Gyeongnam','South Gyeongsang'],['Incheon','Incheon'],['Jeju','Jeju'],['Jeonbuk','North Jeolla'],['Jeonnam','South Jeolla'],['Sejong','Sejong'],['Seoul','Seoul'],['Ulsan','Ulsan']]">
                                        South Korea
                                    </option>
                                    <option value="Spain"
                                            data-provinces="[['A Coruña','A Coruña'],['Albacete','Albacete'],['Alicante','Alicante'],['Almería','Almería'],['Asturias','Asturias Province'],['Badajoz','Badajoz'],['Balears','Balears Province'],['Barcelona','Barcelona'],['Burgos','Burgos'],['Cantabria','Cantabria Province'],['Castellón','Castellón'],['Ceuta','Ceuta'],['Ciudad Real','Ciudad Real'],['Cuenca','Cuenca'],['Cáceres','Cáceres'],['Cádiz','Cádiz'],['Córdoba','Córdoba'],['Girona','Girona'],['Granada','Granada'],['Guadalajara','Guadalajara'],['Guipúzcoa','Gipuzkoa'],['Huelva','Huelva'],['Huesca','Huesca'],['Jaén','Jaén'],['La Rioja','La Rioja Province'],['Las Palmas','Las Palmas'],['León','León'],['Lleida','Lleida'],['Lugo','Lugo'],['Madrid','Madrid Province'],['Melilla','Melilla'],['Murcia','Murcia'],['Málaga','Málaga'],['Navarra','Navarra'],['Ourense','Ourense'],['Palencia','Palencia'],['Pontevedra','Pontevedra'],['Salamanca','Salamanca'],['Santa Cruz de Tenerife','Santa Cruz de Tenerife'],['Segovia','Segovia'],['Sevilla','Seville'],['Soria','Soria'],['Tarragona','Tarragona'],['Teruel','Teruel'],['Toledo','Toledo'],['Valencia','Valencia'],['Valladolid','Valladolid'],['Vizcaya','Biscay'],['Zamora','Zamora'],['Zaragoza','Zaragoza'],['Álava','Álava'],['Ávila','Ávila']]">
                                        Spain
                                    </option>
                                    <option value="Sweden" data-provinces="[]">Sweden</option>
                                    <option value="Switzerland" data-provinces="[]">Switzerland</option>
                                    <option value="United Arab Emirates"
                                            data-provinces="[['Abu Dhabi','Abu Dhabi'],['Ajman','Ajman'],['Dubai','Dubai'],['Fujairah','Fujairah'],['Ras al-Khaimah','Ras al-Khaimah'],['Sharjah','Sharjah'],['Umm al-Quwain','Umm al-Quwain']]">
                                        United Arab Emirates
                                    </option>
                                    <option value="United Kingdom"
                                            data-provinces="[['British Forces','British Forces'],['England','England'],['Northern Ireland','Northern Ireland'],['Scotland','Scotland'],['Wales','Wales']]">
                                        United Kingdom
                                    </option>
                                    <option value="United States"
                                            data-provinces="[['Alabama','Alabama'],['Alaska','Alaska'],['American Samoa','American Samoa'],['Arizona','Arizona'],['Arkansas','Arkansas'],['Armed Forces Americas','Armed Forces Americas'],['Armed Forces Europe','Armed Forces Europe'],['Armed Forces Pacific','Armed Forces Pacific'],['California','California'],['Colorado','Colorado'],['Connecticut','Connecticut'],['Delaware','Delaware'],['District of Columbia','Washington DC'],['Federated States of Micronesia','Micronesia'],['Florida','Florida'],['Georgia','Georgia'],['Guam','Guam'],['Hawaii','Hawaii'],['Idaho','Idaho'],['Illinois','Illinois'],['Indiana','Indiana'],['Iowa','Iowa'],['Kansas','Kansas'],['Kentucky','Kentucky'],['Louisiana','Louisiana'],['Maine','Maine'],['Marshall Islands','Marshall Islands'],['Maryland','Maryland'],['Massachusetts','Massachusetts'],['Michigan','Michigan'],['Minnesota','Minnesota'],['Mississippi','Mississippi'],['Missouri','Missouri'],['Montana','Montana'],['Nebraska','Nebraska'],['Nevada','Nevada'],['New Hampshire','New Hampshire'],['New Jersey','New Jersey'],['New Mexico','New Mexico'],['New York','New York'],['North Carolina','North Carolina'],['North Dakota','North Dakota'],['Northern Mariana Islands','Northern Mariana Islands'],['Ohio','Ohio'],['Oklahoma','Oklahoma'],['Oregon','Oregon'],['Palau','Palau'],['Pennsylvania','Pennsylvania'],['Puerto Rico','Puerto Rico'],['Rhode Island','Rhode Island'],['South Carolina','South Carolina'],['South Dakota','South Dakota'],['Tennessee','Tennessee'],['Texas','Texas'],['Utah','Utah'],['Vermont','Vermont'],['Virgin Islands','U.S. Virgin Islands'],['Virginia','Virginia'],['Washington','Washington'],['West Virginia','West Virginia'],['Wisconsin','Wisconsin'],['Wyoming','Wyoming']]">
                                        United States
                                    </option>
                                    <option value="Vietnam" data-provinces="[]">Vietnam</option>
                                </select>
                            </div>
                            <div class="field">
                                <p>Zip code</p>
                                <input type="text" name="text" placeholder="">
                            </div>
                            <div class="tf-cart-tool-btns">
                                <a href="#"
                                   class="tf-btn fw-6 justify-content-center btn-fill w-100 animate-hover-btn radius-3"><span>Estimate</span></a>
                                <div class="tf-mini-cart-tool-primary text-center fw-6 w-100 tf-mini-cart-tool-close">
                                    Cancel
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /shoppingCart -->
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
                        <img class="sizechart lazyload" data-src="images/shop/products/size_chart2.jpg"
                             src="images/shop/products/size_chart2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /modal find_size -->

<script>
    // Lắng nghe thay đổi size và cập nhật lên giao diện
    document.querySelectorAll('input[name="size"]').forEach((input) => {
        input.addEventListener('change', (event) => {
            document.getElementById('selectedSize').innerText = event.target.value;
        });
    });

    // Lắng nghe sự kiện click của các nút tăng và giảm số lượng
    document.querySelector('.plus-btn').addEventListener('click', () => {
        const quantityInput = document.getElementById('quantity');
        quantityInput.value = parseInt(quantityInput.value) + 1;
    });

    document.querySelector('.minus-btn').addEventListener('click', () => {
        const quantityInput = document.getElementById('quantity');
        if (parseInt(quantityInput.value) > 1) {
            quantityInput.value = parseInt(quantityInput.value) - 1;
        }
    });

    // Hàm lưu thông tin vào giỏ hàng
    function addToCart() {
        const selectedSize = document.querySelector('input[name="size"]:checked').value;
        const quantity = parseInt(document.getElementById('quantity').value);

        const cartItem = {
            size: selectedSize,
            quantity: quantity
        };

        // Lưu vào localStorage hoặc gọi API giỏ hàng
        let cart = JSON.parse(localStorage.getItem('cart')) || [];
        cart.push(cartItem);
        localStorage.setItem('cart', JSON.stringify(cart));

        alert(`Đã thêm size ${selectedSize} với số lượng ${quantity} vào giỏ hàng!`);
    }
</script>

<!-- Javascript -->
<script defer type="text/javascript" src="js/bootstrap.min.js"></script>
<script defer type="text/javascript" src="js/jquery.min.js"></script>
<script defer type="text/javascript" src="js/swiper-bundle.min.js"></script>
<script defer type="text/javascript" src="js/carousel.js"></script>
<script defer type="text/javascript" src="js/count-down.js"></script>
<script defer type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script defer type="text/javascript" src="js/lazysize.min.js"></script>
<script defer type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script defer type="text/javascript" src="js/drift.min.js"></script>
<script defer type="text/javascript" src="js/wow.min.js"></script>
<script defer type="text/javascript" src="js/main.js"></script>
<script defer type="module" src="js/model-viewer.min.js"></script>
<script defer type="module" src="js/zoom.js"></script>

