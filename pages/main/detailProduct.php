<?php
    include("admincp/config/config.php");

    if (isset($_GET["chitietsanpham"])) {
        $sql = "SELECT * FROM tb_product WHERE name='{$_GET['chitietsanpham']}'";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_array($query);
    
?>

<div class="grid detail-form__product Keyboards" id="detail-form"> 
    <div class="detail-form__product-heading">
        <!--Product image -->
        <div class="detail-form__product-img">
            <img src="admincp/modules/manageProducts/uploads/<?php echo $row['image']; ?>" alt="Sản phẩm">
        </div>

        <div class="detail-form__product-present">
            <div class="detail-form__product-name">
                <span><?php echo $row['name']; ?></span>
            </div>
            
            <div class="detail-form__product-prices">
                <span>Giá:</span>
                <span class="detail-form__product-price-normal product-price-sale"><?php echo number_format($row['sale_price'], 0, ".", ",")."đ"; ?></span>
                <span class="detail-form__product-price-normal">
                    <?php 
                        if ($row["normal_price"] != $row['sale_price']) {
                            echo number_format($row['normal_price'], 0, ".", ",")."đ";
                        }
                    ?>
                </span>
            </div>

            <div class="detail-form__product-rate">
                <span>Đánh giá:</span>
                <div class="detail-form__product-raing">
                    <i class="icon-rated fa-solid fa-star"></i>
                    <i class="icon-rated fa-solid fa-star"></i>
                    <i class="icon-rated fa-solid fa-star"></i>
                    <i class="icon-rated fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>

            <div class="detail-form__product-promotion">
                <span>Ưu đãi</span>
                <ul>
                    <li>Giảm giá sốc khi mua cùng các sản phẩm khác</li>
                    <li><b>Freeship</b> toàn quốc khi là 100 khách hàng đầu tiên đặt hàng trực tuyến tại website</li>
                    <li>Miễn phí đổi trả khi sản phẩm bị lỗi</li>
                    <li>Bảo hành đúng theo cam kết</li>
                </ul>
            </div>
            
            <?php
                if ($row["quantity"] != 0) {
            ?>
            <div class="detail-form__product-status stocking">
                <span>Tình trạng:</span>
                <span>Còn hàng</span>
            </div>
            <?php
                }
                else {
            ?>
            <div class="detail-form__product-status">
                <span>Tình trạng:</span>
                <span>Hết hàng</span>
            </div>
            <?php
                }
            ?> 

            <div class="detail-form__product-quantity">
                <span>Số lượng:</span>
                <input type="number" min="0" name="" class="input" id="quantity-product" value="1">
            </div>
            
            <div class="detail-form__product-button">
                <button type="button" <?php if ($row["quantity"] == 0) echo "disabled"; ?> onclick="addToCart()" class="btn btn--sec detail-form__product-button-favourite">THÊM VÀO GIỎ</button>
                <button  onclick='buynow()' <?php if ($row["quantity"] == 0) echo "disabled"; ?> class="btn btn--pri detail-form__product-button-add-cart">MUA NGAY</button>
            </div>
             
            <script>
                function addToCart() {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function() {
                        if (this.readyState == 4 && this.status == 200) {
                            // document.getElementById("amount-number").innerHTML = this.responseText;
                            document.getElementById("header__user-cart").innerHTML = this.responseText;
                        }  
                    };    
                    const soluong = document.getElementById('quantity-product').value; 
                    if (soluong > 0) {
                        // var nhan = parseInt(document.getElementById('amount-number').innerHTML); 
                        // document.getElementById('amount-number').innerHTML = nhan + parseInt(soluong);
                        var path = `pages/main/addToMiniCart.php?id=<?php echo $row['id'] ?>&soluong=${soluong}`;  
                        xhttp.open("GET", path, true);
                        xhttp.send(); 
                    }
                } 
                function buynow() {
                    addToCart();
                    location.href = `index.php?thanhtoan`;
                }
            </script>
        </div>
    </div>

    <div class="detail-form__product-body">
        <!-- Thông tin cấu hình -->
        <div class="detail-form__product-configuration">
            <div class="detail-form__product-configuration-heading">
                <h4>CHI TIẾT SẢN PHẨM</h4>
            </div>
            <div class="detail-form__product-configuration-table">
                <table>
                    <tr>
                        <td>Thương hiệu</td>
                        <td>Gucci</td>
                    </tr>
                    <tr>
                        <td>Series / Model</td>
                        <td>Túi xách da Chất lượng cao</td>
                    </tr>
                    <tr>
                        <td>Bảo hành</td>
                        <td>Đổi trả 7 ngày</td>
                    </tr>
                    <tr>
                        <td>Chất liệu</td>
                        <td>Da (CL cao)</td>
                    </tr>
                    <tr>
                        <td>Màu sắc</td>
                        <td>Đen/Xám</td>
                    </tr>
                    <tr>
                        <td>Cân nặng</td>
                        <td>800 gram</td>
                    </tr> 
                    <tr>
                        <td>Kích thước</td>
                        <td>470 x 200 x 50 mm </td>
                    </tr>
                    <!--<tr>
                        <td>Layout</td>
                        <td>Fullsize 108 phím</td>
                    </tr>
                    <tr>
                        <td>Keycaps</td>
                        <td>PBT Doulbeshot Cherry profile</td>
                    </tr>
                    <tr>
                        <td>Switch</td>
                        <td>Cherry MX Blue/Brown/Red</td>
                    </tr>
                    <tr>
                        <td>Đèn LED</td>
                        <td>None</td>
                    </tr>
                    <tr>
                        <td>Tặng kèm</td>
                        <td>1x Keyboard cover, 1x Key puller, 1x Bộ Keycaps Ruby</td>
                    </tr>
            -->
                </table>
            </div>
        </div>

        <!-- Thông tin chi tiết sp -->
        <div class="detail-form__product-blog">
            <div class="detail-form__product-configuration-heading detail-form__product-blog-heading">
                <h4>ĐÁNH GIÁ CHI TIẾT</h4>
            </div>
            <div class="detail-form__product-blog-body">
                <h3>Khi mà sự tối giản và chất lượng lên tiếng</h3>
                <p>
                    <b>GG Marmont</b> small matelassé shoulder bag
                </p>
                <div class="detail-form__product-blog-img">
                    <img src="./img/Produces/Keyboards/iKBC/iKBC CD108 PD Review 1.png" alt="">
                </div>

                <h3>Dành cho những ai yêu thích sự tối giản và cần một sự thanh lịch và quý phái.</h3>
                <p>
                    Vẻ ngoài tối giản với tông màu đen cơ bản, nhấn nhá một chút màu sắc với những đường nét hoa văn đầy tinh tế, mẫu túi xách đầy tiềm năng này sẽ là gu thời trang ăn ý với chị em phụ nữ trong mùa hè năm nay.
                </p>
                
                <h3>Chất lượng từ Da 2000</h3>
                <p>
                    Mẫu da và các nguyên liệu được hoàn thiện với chất lượng cực kì cao và cực kì dày dặn, rất tốt chính làm mới phong cách diện mạo của khối chị em phụ nữ.
                </p>
                <div class="detail-form__product-blog-img">
                    <img src="./img/Produces/Keyboards/iKBC/iKBC CD108 PD Keycap.png" alt="">
                </div>

                <h3>Ngoài ra còn có tuỳ chọn nhiều màu, dành cho nhiều lứa tuổi</h3>
                <p>
                    Chất liệu được gia công và hoàn thiện trên công nghệ sản xuất tối tân và khép kín – do một tập đoàn của Đức sản xuất. Tạo nên một tiêu chuẩn vàng cho phái nữ với danh tiếng và chất lượng đã được kiểm định một cách nghiêm ngặt. Chất lượng Đức dành cho bạn.
                </p>
                <div class="detail-form__product-blog-img">
                    <img src="./img/Produces/Keyboards/iKBC/iKBC CD108 PD Switches.png" alt="">
                </div>

                <h3>Đạt chuẩn quốc tế</h3>
                <p>
                    Với layout tiêu chuẩn quốc tế, bạn hoàn toàn yên tâm khi diện trên mình sản phẩm này. Cảm giác mang lại cực kỳ hứng thú và thoải mái.Tôi đảm bảo bạn sẽ yêu mẫu túi xách này ngay lập tức khi chạm vào nó và bắt đầu sử dụng.
                </p>
                <div class="detail-form__product-blog-img">
                    <img src="./img/Produces/Keyboards/iKBC/iKBC CD108 PD Review 1.png" alt="">
                </div>

                <h3>Tóm lại</h3>
                <p>
                    Nhắm đến đối tượng người dùng là những ai thích sự tối giản, đi kèm một chất lượng hoàn thiện cực kỳ tốt nhờ chất liệu da cao cấp. Và <b>Gucci 2000</b> này chắc chắn sẽ là một trợ thủ không thể thiếu của người sử dụng.
                </p>
            </div>
        </div>
    </div>
    
    <div class="detail-form__product-footing">
        <div class="product-services-form">
            <div class="detail-form__product-configuration-heading product-services-form-heading">
                <h4>DỊCH VỤ KHÁCH HÀNG</h4>
            </div>
            <div class="product-services-box">
                <ul class="product-services">
                    <li class="product-service">
                        <div class="product-service-items">
                            <i class="fa fa-headset"></i>
                            <span>TƯ VẤN SẢN PHẨM</span>
                        </div>
                    </li>
                    <li class="product-service">
                        <div class="product-service-items">
                            <i class="fa fa-money"></i>
                            <span>DỊCH VỤ TRẢ GÓP</span>
                        </div>
                    </li>
                    <li class="product-service">
                        <div class="product-service-items">
                            <i class="fa fa-gear"></i>
                            <span>DỊCH VỤ BẢO HÀNH</span>
                        </div>
                    </li>
                    <li class="product-service">
                        <div class="product-service-items">
                            <i class="fa fa-arrow-right-arrow-left"></i>
                            <span>DỊCH VỤ ĐỔI TRẢ</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div> 

<?php
    }
?>