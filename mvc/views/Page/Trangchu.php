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
                                        <h3>Chào mừng bạn đến với Website bán quần áo của Nhóm 4Men</h3>
                                        <h5>Nơi thỏa mãn đam mê thời trang của bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Sách Hay</a>
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
                                        <h5>Nơi thỏa mãn đam mê thời trang của bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Sách Hay</a>
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
                                        <h5>Nơi thỏa mãn đam mê thời trang của bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Sách Hay</a>
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
                                        <h5>Nơi thỏa mãn đam mê thời trang của bạn</h5>
                                        <a href="DanhMucSanPham.html" class="btn">Sách Hay</a>
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
                echo          '  <a href="http://localhost:8080/banquanaohuongdoituong/Logined/Dangnhap/">';
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
    <section>
        <!-- //Gioi thieu -->
        <div class="container anhGTTrangChu">
            <div class="row">
                <div class="col-sm-5">
                    <img src="public/images/slide4.jpg" style="width:100%" id="anhgioiThieuHome" />
                </div>
                <div class="col-sm-7">
                    <div class="gioiThieuBookStore">
                        <h2>Giới thiệu</h2>
                        <p>
                           Nền tảng bán quần áo trực tuyến đầy uy tín của chúng tôi - Nhóm 4Men
                        </p>
                        <div class="btn-sec">
                            <a href="DanhMucSanPham.html" class="btn yellow">Sách hay</a>
                            <a href="http://localhost:8080/banquanaohuongdoituong/Logined/Dangnhap" class="btn black">Đăng nhập</a>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
        </div>
    </section>
    <section class="recomended-sec">
        <div class="container">
            <div class="title">
                <h2>quần áo bán chạy</h2>
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
                echo          '  <a href="http://localhost:8080/banquanaohuongdoituong/Logined/Dangnhap/">';
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
                    <h3>Nếu bạn chỉ đọc những cuốn quần áo mà tất cả mọi người đều đọc, bạn chỉ có thể nghĩ tới điều tất cả mọi người đều nghĩ tới.</h3>
                    <div class="box-user">
                        <h4 class="author">SHaruki Murakami</h4>
                        <span class="country">Australia</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Việc đọc rất quan trọng. Nếu bạn biết cách đọc, cả thế giới sẽ mở ra cho bạn.</h3>
                    <div class="box-user">
                        <h4 class="author">Barack Obama</h4>
                        <span class="country">USA</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Dù tôi không thể nhớ những cuốn quần áo tôi từng đọc cũng như những bữa tôi từng ăn, nhưng chúng đều làm nên con người tôi.</h3>
                    <div class="box-user">
                        <h4 class="author">Ralph Waldo Emesson</h4>
                        <span class="country">Germany</span>
                    </div>
                </div>
                <div class="item">
                    <h3>Những quyển quần áo là những tấm gương: bạn chỉ nhìn thấy trong gương những gì bạn có bên trong bạn.</h3>
                    <div class="box-user">
                        <h4 class="author">Mahatma Gandhi</h4>
                        <span class="country">UK</span>
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
                            <span class="fb"><i class="fa fa-facebook-official"></i></span>
                            <span class="instagram"><i class="fa fa-instagram"></i></span>
                            <span class="twitter"><i class="fa fa-twitter"></i></span>
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