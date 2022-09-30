<?php 
    // unset($_SESSION['USERNAME']); 

    if (!isset($_SESSION['USERNAME'])) {
        header('Location: ../admincp/login.php');
    }  
?>

<link rel="stylesheet" href="./css/productsadmincp.css?v=<?php echo time(); ?>">

<script>
    document.querySelector('#products').classList.add('active'); 
    document.querySelector('.name-page').innerHTML = "Products"; 
</script>

<div class="product-page home-content" id="home-content">
    <div class="add-product">
        <span onclick="addProduct()"><i class="fa-solid fa-plus"></i> New product</span>
    </div>
    <div class="products-table-cover" id="products-table-cover">

    </div>
</div>

<script>
    function remove(id) {
        location.href = `modules/manageProducts/handle.php?idsanpham=${id}`;
    }
    function edit(id) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("home-content").innerHTML = this.responseText;
            } 
        };    
        // console.log(path);
        var path = `modules/manageProducts/edit.php?&id=${id}`;
        // alert(path);
        xhttp.open("GET", path, true);
        xhttp.send();
    }
    function addProduct() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("home-content").innerHTML = this.responseText;
            } 
        };    
        // console.log(path);
        var path = `modules/manageProducts/add.php`;
        // alert(path);
        xhttp.open("GET", path, true);
        xhttp.send();
    }
    function comeback() {
        location.href = "index.php?products";
    }
    function showProducts(page) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("products-table-cover").innerHTML = this.responseText;
            } 
        };    
       
        var path = `modules/manageProducts/show.php?page=${page}`;
     
        xhttp.open("GET", path, true);
        xhttp.send();
    }
    showProducts(1);
</script>

<script>
    $(document).ready(function() {
        $(document).on('click', '.pagination_link', function(){  
           var page = $(this).attr("id");   
           showProducts(page);   
        });   
    });
</script>