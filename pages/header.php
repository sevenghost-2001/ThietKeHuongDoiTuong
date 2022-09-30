<?php 
    session_start();
    
    include("./admincp/config/config.php");
?>

<header class="header">
    <nav class="grid header__nav">
        <div class="header__brand">
            <a href="index.php" class="header__logo">THỜI<i class="header__logo-icon fa-solid fa-gamepad"></i>TRANG</a>  
            <span>&copy;</span>
        </div>
            
        <div class="header__items">
            <ul>
                <li class="header__item"><a href="index.php">Trang chủ</a></li>
                <li class="header__item"><a href="index.php?danhmuc=quan"><i class="icon fas fa-keyboard"></i> Cổ điển</a>
                    <div class="header__subitem">
                        <ul>
                            <li><a href="index.php?danhmuc=quan&loc=Akko">Quần short</a></li>
                            <li><a href="index.php?danhmuc=quan&loc=iKBC">Quần Kaki</a></li>
                            <li><a href="index.php?danhmuc=quan&loc=DareU">Quần lửng</a></li>
                            <li><a href="index.php?danhmuc=quan&loc=FL-Esports">Áo thun</a></li>
                            <li><a href="index.php?danhmuc=quan&loc=Leopold">Áo khoác</a></li>
                            <li><a href="index.php?danhmuc=quan&loc=Razer">Giày dép</a></li>
                        </ul>
                    </div>
                </li>
                <li class="header__item"><a href="index.php?danhmuc=ao"><i class="icon fa fa-mouse"></i> Thịnh hành</a>
                    <div class="header__subitem">
                        <ul>
                            <li><a href="index.php?danhmuc=ao&loc=Logitech">Túi xách</a></li>
                            <li><a href="index.php?danhmuc=ao&loc=Steelseries">Giày dép</a></li>
                            <li><a href="index.php?danhmuc=ao&loc=Fuhlen">Quần áo</a></li>
                            <li><a href="index.php?danhmuc=ao&loc=Asus">Áo dài</a></li>
                            <li><a href="index.php?danhmuc=ao&loc=Razer">T.Phục N.Ngoài</a></li> <!-- trang phục nước ngoài -->
                        </ul>
                    </div>
                </li>
                <li class="header__item"><a href="index.php?danhmuc=tuixach"><i class="icon fa fa-headphones"></i> Văn phòng</a>
                    <div class="header__subitem">
                        <ul>
                            <li><a href="index.php?danhmuc=tuixach&loc=HyperX">Áo sơ mi</a></li>
                            <li><a href="index.php?danhmuc=tuixach&loc=Logitech">Quần tây</a></li>
                            <li><a href="index.php?danhmuc=tuixach&loc=DareU">Dây nịt</a></li>
                            <li><a href="index.php?danhmuc=tuixach&loc=Rapoo">Đầm Váy</a></li>
                        </ul>
                    </div>
                </li>
                <li class="header__item"><a href="index.php?danhmuc=khuyenmai"><i class="icon fa-solid fa-fire"></i> Khuyến mãi</a></li>
            </ul>
        </div>

        <!-- <form class="header__search" action="index.php?danhmuc=sanpham&timkiem=Akko" method="POST"> -->
        <div class="header__search">
            <input type="text" name="header__search--box" id="input header__search--box" class="input header__search--box" placeholder="Tìm kiếm sản phẩm" value="">
            <button onclick="myFunction()" id="button-search"class="header__search--icon"><i class="icon search-icon fa fa-search"></i></button>
        </div>
        <!-- </form> -->

        <div class="header__toggle">
            <span></span>
            <span></span>
            <span></span>
        </div>  
        
        <div class="header__user"> 
            <div class="header__user--container">
                <div class="header__user-cart" id="header__user-cart">
                    <a href="index.php?giohang" class="header__user-cart--link">
                        <i class="icon fa-solid fa-basket-shopping"></i>
                        <span id="amount-number"class="header__user-cart--quality">
                            <?php 
                                if (isset($_SESSION['cart'])) {
                                    $count = 0;
                                    for ($i = 0 ; $i < sizeof($_SESSION['cart']) ; $i++) {
                                        $count += $_SESSION['cart'][$i]['amount'];
                                    }
                                    echo $count;
                                }
                                else { 
                                    echo 0;
                                }
                            ?>
                        </span>
                    </a>

                    <!-- Empty: header__user-cart-list--empty -->
                    <?php
                        if (!isset($_GET['giohang'])) {
                            if (!isset($_SESSION['cart']) || sizeof($_SESSION['cart']) == 0) {
                    ?>
                                <div class="header__user-cart-list header__user-cart-list--empty" id="header__user-cart-list">
                                    <img src="./img/Cart/cart-list-empty.jpg" alt="" class="header__user-cart-empty-img">
                                    <div class="header__cart-list-see">
                                        <a href="index.php?giohang">
                                            <button class="btn btn--pri header__cart-list-see-button">XEM GIỎ HÀNG</button>
                                        </a>
                                    </div>
                                </div>
                    <?php
                            }
                            else { 
                    ?>
                                <div class="header__user-cart-list ">
                                    <img src="./img/Cart/cart-list-empty.jpg" alt="" class="header__user-cart-empty-img">

                                    <h4 class="header__cart-list--heading">Danh sách sản phẩm</h4>
                                    <ul class="header__cart-list-items" id="cart-list">
                                        <?php 
                                            for ($i = 0 ; $i < sizeof($_SESSION['cart']) ; $i++) {  
                                        ?>
                                                <li class="header__cart-list-item">
                                                    <img src="admincp/modules/manageProducts/uploads/<?php echo $_SESSION['cart'][$i]['image']; ?>" alt="Sản phẩm" class="header__cart-list-item-igm">

                                                    <div class="header__cart-list-item-info"> 
                                                        <div class="header__cart-list-item-name-box">
                                                            <a href="index.php?chitietsanpham=<?php echo $_SESSION['cart'][$i]['name']; ?>" class="header__cart-list-item-name"><?php echo $_SESSION['cart'][$i]['name']; ?></a>
                                                        </div>
                                                        <span class="header__cart-list-item-price product-price-sale"><?php echo number_format($_SESSION['cart'][$i]['sale_price'], 0, ".", ",")."đ"; ?></span>
                                                        <div class="header__cart-list-item-detail">
                                                            <span class="header__cart-list-item-detail-heading">Số lượng:</span>
                                                            <span class="header__cart-list-item-quality"><?php echo $_SESSION['cart'][$i]['amount']; ?></span>
                                                        </div>
                                                    </div>

                                                    <button type="button" onclick="removeFromMiniCart(<?php echo $_SESSION['cart'][$i]['id']; ?>)" class="btn btn--pri header__cart-list-item-remove">XÓA</button>
                                                </li> 
                                        <?php
                                            }
                                        ?>
                                    </ul>

                                    <div class="header__cart-list-see">
                                        <!-- <a href="index.php?giohang"> -->
                                            <button onclick="openCart()" class="btn btn--pri header__cart-list-see-button">XEM GIỎ HÀNG</button>
                                        <!-- </a> -->
                                    </div>
                                </div>
                    <?php
                            }    
                        }
                    ?>
                </div>

                <div class="header__user--separate"></div>

                <div class="header__user-account">
                    <?php 
                        if (isset($_SESSION['USERNAME'])) {
                    ?>
                        <a href="index.php?taikhoan" class="header__user-account--link"><i class="icon fa-solid fa-user"></i></a>
                    <?php
                        }
                        else {
                    ?>
                        <a href="signin.php" class="header__user-account--link"><i class="icon fa-solid fa-user-large-slash"></i></a>
                    <?php
                        }
                    ?>
                    <div class="header__user-account-info">
                        <?php 
                            if (isset($_SESSION['USERNAME'])) {
                                $sql = "SELECT * FROM tb_account WHERE username='{$_SESSION['USERNAME']}'";
                                $query = mysqli_query($mysqli, $sql);
                                if (mysqli_num_rows($query) === 1) {
                                    $row = mysqli_fetch_array($query);
                        ?>
                                    <div class="sign-in"> 
                                        <div class="header__user-account-img">
                                            <img src="./admincp/modules/manageAccounts/uploads/<?php echo $row['avatar']; ?>" alt="" class="header__user-account-avatar">
                                        </div>

                                        <span class="header__user-account-name"><?php echo $row['name']; ?></span>

                                        <div class="header__user-account-info-details">
                                            <div class="header__user-account-contact">
                                                <span style="user-select: none; margin-left: 10px" class="header__user-account-phone">Tài khoản: <?php echo $row['username']; ?></span>
                                            </div>
                                            <div class="header__user-account-adress">
                                                <span style="user-select: none; margin-left: 10px" class="header__user-account-Email">Email: <?php echo $row['contact']; ?></span>
                                            </div>
                                        </div>

                                        <div class="header__user-account-button">
                                            <a href="index.php?taikhoan">
                                                <button class="btn btn--pri header__user-account-edit">CHI TIẾT</button>
                                            </a>
                                            <button id="log-out-button"class="btn btn--sec header__user-account-signout">ĐĂNG XUẤT</button>
                                        </div>
                                        <script> 
                                            document.getElementById("log-out-button").addEventListener('click', function() {
                                                location.href = `logout.php`;
                                            });
                                        </script>
                                    </div>
                        <?php 
                                }
                            }   
                            else {
                        ?>
                            <div class="sign-out">
                                <h4 class="header__cart-list--heading">OOPS!!</h4>
                                <h4 class="header__cart-list--heading">BẠN CHƯA ĐĂNG NHẬP</h4>
                                <button class="btn btn--pri btn-sign-in" id="sign-in-button">ĐĂNG NHẬP NGAY</button>
                            </div>
                            <script> 
                                document.getElementById("sign-in-button").addEventListener('click', function() {
                                    location.href = `signin.php`;
                                });
                            </script>
                        <?php
                            }
                        ?>
                    </div> 
                </div>
            </div>
        </div>
        
    </nav>
</header>

<script>
    function myFunction() {
        var x = document.getElementById("input header__search--box").value; 
        if (x != '' && x != null) {
            location.href = `index.php?danhmuc=sanpham&timkiem=${x}`;
        }
    }

    function removeFromMiniCart(id) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("header__user-cart").innerHTML = this.responseText; 
            }  
        };  
        var path = `pages/main/removeFromMiniCart.php?id=${id}`;
        xhttp.open("GET", path, true);
        xhttp.send();  
    }

    function openCart() {
        location.href = 'index.php?giohang';
    }

    var input = document.getElementById("input header__search--box");
    input.addEventListener("keypress", function(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            document.getElementById("button-search").click();
        }
    });
</script> 