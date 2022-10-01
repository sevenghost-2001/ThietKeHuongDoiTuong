<section class="slider">
        <div class="container">
            <div class="row">
                <div class="col-sm-1 anhQuangCao1">

                </div>
                <div class="col-sm-10">
                    <div id="owl-demo" class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="slide">
                                <img src="public/images/slide1.jpg" alt="slide1">
                                <div class="content">
                                    <div class="title">
                                        <h3>Chào mừng bạn đến với Website của Nhóm 4Men</h3>
                                        <h5>Nơi thỏa mãn đam mê thời trang của bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Tìm Sản Phẩm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="slide">
                                <img src="public/images/slide2.jpg" alt="slide1">
                                <div class="content">
                                    <div class="title">
                                        <h3>Chào mừng bạn đến với Website bán quần áo của Nhóm 4Men</h3>
                                        <h5>Vẻ đẹp quyến rũ thời trang pháp</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Tìm Sản Phẩm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="slide">
                                <img src="public/images/slide3.jpg" alt="slide1">
                                <div class="content">
                                    <div class="title">
                                        <h3>Chào mừng bạn đến với Website bán quần áo của Nhóm 4Men</h3>
                                        <h5>Tiên phong dự báo thời trang</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Tìm Sản Phẩm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="slide">
                                <img src="public/images/slide4.jpg" alt="slide1">
                                <div class="content">
                                    <div class="title">
                                        <h3>Chào mừng bạn đến với Website bán quần áo của Nhóm 4Men</h3>
                                        <h5>Dù tốt hay xấu, hãy là chính bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Tìm Sản Phẩm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1 anhQuangCao2">

                </div>
            </div>
        </div>
    </section>
    <hr />
    <section class="recomended-sec">
        <div class="container">
            <div class="title">
                <h2>quần áo nổi bật</h2>
                <hr>
            </div>
            <!-- Hien thi san pham -->
            <div class="row">
            <?php 
              $string=$data["Product"];
              $row=json_decode($string);
                for($i=0;$i<count($row);$i++){
                $cost= number_format($row[$i]->gia);
                echo   ' <div class="col-lg-3 col-md-12">';
                echo   ' <div class="item">';
                echo       ' <img src="'.$row[$i]->anh.'" alt="img">';
                echo       ' <h3>'.$row[$i]->tensanpham.'</h3>';
                echo      '  <h6><span class="price">'.$cost.'</span> VNĐ</h6>';
                echo       ' <div class="hover">';
                echo          '  <a href="http://localhost:8080/banquanaohuongdoituong/Logined/Chitietsanpham/'.$row[$i]->idsanpham.'">';
                echo               ' <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>';
                echo           " </a>
                        </div>
                    </div>
                </div>";
                if($i==7){
                    break;
                }
                }
            ?>
            </div>
            <div class="btn-sec butXemNB">
                <a href="DanhMucSanPham.html" class="btn butDanhMucSach">Xem Thêm</a>
            </div>
        </div>
    </section>
  
    <section class="recomended-sec">
        <div class="container">
            <div class="title">
                <h2>Sản phẩm bán "siêu" chạy</h2>
                <hr>
            </div>
            <!-- Hien thi san pham -->
            <div class="row">
            <?php 
              $string=$data["ProductBestSell"];
              $row=json_decode($string);
                for($i=0;$i<count($row);$i++){
                $cost= number_format($row[$i]->gia);
                echo   ' <div class="col-lg-3 col-md-12">';
                echo   ' <div class="item">';
                echo       ' <img src="'.$row[$i]->anh.'" alt="img">';
                echo       ' <h3>'.$row[$i]->tensanpham.'</h3>';
                echo      '  <h6><span class="price">'.$cost.'</span> VNĐ</h6>';
                echo       ' <div class="hover">';
                echo          '  <a href="http://localhost:8080/banquanaohuongdoituong/Logined/Chitietsanpham/'.$row[$i]->idsanpham.'">';
                echo               ' <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>';
                echo           " </a>
                        </div>
                    </div>
                </div>";
                if($i==7){
                    break;
                }
                }
            ?>
            </div>
            <div class="btn-sec butXemNB">
                <a href="DanhMucSanPham.html" class="btn butDanhMucSach">Xem Thêm</a>
            </div>
        </div>
    </section>

    <section class="testimonial-sec">
        <div class="container">
            <div id="testimonal" class="owl-carousel owl-theme">
                <div class="item">
                    <h3>Thời trang là liều thuốc truyền cho mỗi con người sức mạnh tinh thần to lớn.</h3>
                    <div class="box-user">
                        <h4 class="author">Văn Trung</h4>
                        <span class="country">Việt Nam</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Tạo hóa ban cho ta vẻ đẹp thể chất. Ý chí ban cho ta vẻ đẹp cá tính</h3>
                    <div class="box-user">
                        <h4 class="author">Hoàng Tùng</h4>
                        <span class="country">Việt Nam</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Vẻ đẹp của lòng trắc ẩn là vẻ đẹp đáng trân quý nhất.</h3>
                    <div class="box-user">
                        <h4 class="author">Anh Kha</h4>
                        <span class="country">Việt Nam</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Cách ăn mặc cũng một phần đánh giá con người bạn.</h3>
                    <div class="box-user">
                        <h4 class="author">Chí Công</h4>
                        <span class="country">Việt Nam</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="left-quote">
            <img src="public/images/left-quote.png" alt="quote">
        </div>
        <div class="right-quote">
            <img src="public/images/right-quote.png" alt="quote">
        </div>
    </section>

    <footer>
        <div class="container footer-content">
            <div class="row">
             
                <div class="col-md-4">
                    <div class="navigation1">
                        <br />
                        <br />
                        <h4>Nhóm 4Men</h4>
                        <ul>
                            <li><a href="TrangChu.html">Trang chủ</a></li>
                        
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h5>Nhóm 4Men</h5>
                    </div>
                    <div class="col-md-6">
                        <div class="share align-middle">
                            <span class="fb"><a href="https://www.facebook.com/nguyentuanhung12345" target="_blank"> <i class="fa fa-facebook-official"></i> </a></span>                            <span class="instagram"><i class="fa fa-instagram"></i></span>
                            <span class="twitter"><a href="https://www.instagram.com/hoangtung_2710" target="_blank"> <i class="fa fa-twitter"></i> </a> </span>
                            <span class="pinterest"><i class="fa fa-pinterest"></i></span>
                            <span class="google"><i class="fa fa-google-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="public/js/jquery.min.js"></script>
    <script src="public/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="public/js/owl.carousel.min.js"></script>
    <script src="public/js/custom.js"></script>
</body>