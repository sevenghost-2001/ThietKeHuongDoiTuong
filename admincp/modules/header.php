<?php
    include("./config/config.php");
    $sql = "SELECT * FROM tb_account WHERE username='{$_SESSION['USERNAME_ADMIN']}'"; 
    $query = mysqli_query($mysqli, $sql); 
    $row = mysqli_fetch_array($query);
?>

<nav>
    <div class="sidebar-button">
        <i class="fa-solid fa-bars sidebarBtn"></i>
        <span class="name-page">Dashboard</span>
    </div>
    <div class="search-box">
        <input type="text" name="search" class="input" placeholder="Tìm kiếm thông tin">
        <i class="fa-solid fa-magnifying-glass"></i>
    </div>
    <div class="profile-details">  
        <div class="name">
            <span class="admin_name">Hello <b><?php echo $row['name']; ?></b></span>
            <span class="admin_name">admin</span>
        </div>
        <img src="../admincp/modules/manageAccounts/uploads/<?php echo $row['avatar']; ?>" alt="">
    </div>
</nav> 
 
<script>
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");

    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("fa-bars" ,"fa-align-left"); 
        } 
        else
            sidebarBtn.classList.replace("fa-align-left", "fa-bars");
} 
</script>