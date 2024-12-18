<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/26/2024
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/tablist.jsp" %>
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
                        Mua đủ<span class="price fw-6"> 500.000VNĐ</span> để được <span
                            class="fw-6">Miễn phí Vận chuyển</span>
                    </div>
                </div>
                <security:authorize access="isAuthenticated()">
                    <div class="tf-mini-cart-wrap">
                        <div class="tf-mini-cart-main">
                            <div class="tf-mini-cart-sroll">
                                <div class="tf-mini-cart-items" id="cartItemsContainer">

                                </div>
                            </div>
                        </div>
                        <div class="tf-mini-cart-bottom">
                            <div class="tf-mini-cart-bottom-wrap">
                                <div class="tf-cart-totals-discounts">
                                    <div class="tf-cart-total">Tổng cộng</div>
                                    <div class="tf-totals-total-value fw-6" id="totalPriceDisplay"></div>
                                </div>
                                <div class="tf-cart-tax">Thuế và <a href="#">phí vận chuyển</a> được tính khi thanh toán
                                </div>
                                <div class="tf-mini-cart-line"></div>
                                <div class="tf-cart-checkbox">
                                    <div class="tf-checkbox-wrapp">
                                        <input class="" type="checkbox" id="CartDrawer-Form_agree"
                                               name="agree_checkbox">
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
                                    <a href="#"
                                       class="tf-btn btn-outline radius-3 link w-100 justify-content-center">Xem giỏ
                                        hàng</a>
                                    <a href="<c:url value="order"/>" id="orderBtn"
                                       class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Đặt hàng</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </security:authorize>
                <security:authorize access="isAnonymous()">
                    <img src="https://theme.hstatic.net/200000690725/1001078549/14/cart_banner_image.jpg?v=549" alt="">
                    <div class="tf-progress-msg" style="display: flex;
                                                        justify-content: center;
                                                        align-items: center;">
                        <span class="fw-6">Bạn cần phải đăng nhập để tiếp tục mua hàng</span>
                    </div>
                </security:authorize>
            </div>
        </div>
    </div>
    <input type="hidden" name="User" id="userId" value="${user.id}">
</div>
<script>

    document.querySelector(".nav-cart a").addEventListener("click", function () {
        const userId = document.getElementById("userId").value;

        function formatMoney(amount) {
            return new Intl.NumberFormat('vi-VN').format(amount);
        }



        fetch(`/api/cart/items?userId=${userId}`)
            .then(response => response.json())
            .then(cartData => {
                const container = document.getElementById("cartItemsContainer");
                const orderBtn = document.getElementById("orderBtn");
                container.innerHTML = '';

                let totalPrice = 0;
                let totalItems = 0;
                let row = '';
                cartData.items.forEach((item, index) => {
                    const itemTotal = (item.price - (item.price * item.discount / 100)) * item.quantity;
                    totalPrice += itemTotal;
                    totalItems += item.quantity;


                    row += '<div class="tf-mini-cart-item">';
                    row += '<div class="tf-mini-cart-image">';
                    row += '<a href="product-detail-' + item.productId + '">';
                    row += '<img src="/repository' + item.image + '" alt="">';
                    row += '</a>';
                    row += '</div>';
                    row += '<div class="tf-mini-cart-info">';
                    row += '<a class="title link fw-6" href="product-detail-' + item.productId + '">' + item.productName + '</a>';
                    row += '<div class="price fw-6" data-price="' + item.price + '" id="price-' + index + '"> ' + formatMoney(itemTotal) + ' VNĐ </div>';
                    row += '<div class="price fw-6">Size: ' + item.size + ' </div>';
                    row += '<div class="wg-quantity small">';
                    row += '<span id="minus-btn1-' + index + '" class="btn-quantity">-</span>';
                    row += '<input type="text" name="quantity" id="quantity1-' + index + '" value="' + item.quantity + '">';
                    row += '<span id="plus-btn1-' + index + '" class="btn-quantity">+</span>';
                    row += '</div>';
                    row += '<div class="tf-mini-cart-remove fw-6" data-cart-item-id="' + item.id + '" style="cursor: pointer;">xóa</div>';
                    row += '</div>';
                    row += '</div>';
                });
                document.querySelector(".count-box").textContent= totalItems;
                container.innerHTML += row;
                document.getElementById("totalPriceDisplay").textContent = formatMoney(totalPrice) + ' VNĐ';

                if (cartData.items.length === 0) {
                    orderBtn.style.display = 'none';
                } else {
                    orderBtn.style.display = 'flex';
                }

                function updateCartTotal() {
                    let newTotalPrice = 0;
                    let newTotalItems = 0;
                    cartData.items.forEach((item, index) => {
                        const quantityInput = document.getElementById(`quantity1-` + index);
                        if (quantityInput) {
                            const quantity = parseInt(quantityInput.value) || 1;
                            newTotalPrice += (item.price - (item.price * item.discount / 100)) * quantity;
                            newTotalItems += quantity;
                        }
                    });
                    const countBox = document.querySelector(".count-box");
                    const totalPriceDisplay = document.getElementById("totalPriceDisplay");
                    if (countBox) {
                        countBox.textContent = newTotalItems;
                    }
                    if (totalPriceDisplay) {
                        totalPriceDisplay.textContent = formatMoney(newTotalPrice) + ' VNĐ';
                    }
                }

                cartData.items.forEach((item, index) => {
                    const quantityInput = document.getElementById(`quantity1-` + index);
                    const priceDisplay = document.getElementById(`price-` + index);
                    const productId=item.productId;
                    const size=item.size;

                    function updateItemTotalPrice() {
                        const newQuantity = parseInt(quantityInput.value) || 1;
                        const newTotal = (item.price - (item.price * item.discount / 100)) * newQuantity;
                        priceDisplay.textContent = formatMoney(newTotal) + ` VNĐ`;
                        updateCartTotal();

                        fetch(`/api/cart/addOrUpdate?userId=` + userId + `&isUpdateQuantity=true`, {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json'
                            },
                            body: JSON.stringify({ cartItemId: item.id, quantity: newQuantity,  productId: productId, size: size })
                        }).then(response => {
                            if (!response.ok) {
                                console.error("Cập nhật số lượng không thành công.");
                            }
                        }).catch(error => console.error("Lỗi kết nối:", error));
                    }

                    document.getElementById(`plus-btn1-` + index).addEventListener('click', () => {
                        quantityInput.value = parseInt(quantityInput.value) + 1;
                        updateItemTotalPrice();
                    });

                    document.getElementById(`minus-btn1-` + index).addEventListener('click', () => {
                        if (parseInt(quantityInput.value) > 1) {
                            quantityInput.value = parseInt(quantityInput.value) - 1;
                            updateItemTotalPrice();
                        }
                    });


                    quantityInput.addEventListener('input', updateItemTotalPrice);
                });
                document.querySelectorAll(".tf-mini-cart-remove").forEach(removeButton => {
                    removeButton.addEventListener('click', () => {
                        const cartItemId = removeButton.getAttribute("data-cart-item-id");
                        fetch(`/api/cart/remove`, {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json'
                            },
                            body: JSON.stringify(cartItemId)
                        })
                            .then(response => {
                                if (response.ok) {
                                    console.log("Sản phẩm đã được xóa thành công.");
                                    const cartItemElement = removeButton.closest(".tf-mini-cart-item");
                                    cartItemElement.remove();
                                    cartData.items = cartData.items.filter(item => item.id !== cartItemId);
                                    updateCartTotal();
                                    window.location.reload();
                                } else {
                                    console.error("Xóa sản phẩm không thành công.");
                                }
                            })
                            .catch(error => console.error("Lỗi kết nối:", error));
                    });
                });
            });
    });

</script>

<!-- /shoppingCart -->
