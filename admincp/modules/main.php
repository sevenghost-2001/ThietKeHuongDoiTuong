<section class="home-section">
    <?php
        include("modules/header.php");

        // if (isset($_GET['action'])) {
        //     $temp = $_GET['action'];          
        // }
        // else {
        //     $temp = ''; 
        // }
        // if (isset($_GET['query'])) { 
        //     $query = $_GET['query'];            
        // }
        // else { 
        //     $query = '';
        // }
        if (isset($_GET['products'])) {
            include("manageProducts/product.php");
        }  
        else if (isset($_GET['detail-product'])) {
            include("manageProducts/detailProduct.php");
        }
        else if (isset($_GET['customers'])) {
            include("manageAccounts/customer.php");
        }
        else if (isset($_GET['orders'])) {
            include("manageOrders/show.php");
        }
        else if (isset($_GET['promotion'])) {
            include("managePromotion/show.php");
        }
        else if (isset($_GET['setting'])) {
            include("setting.php");
        }
        // else if ($temp == 'quanlysanpham' && $query == 'sua') {
        //     include("manageProducts/edit.php");
        // }
        else {
            include("dashboard.php");
        }
    ?>
    
</section>