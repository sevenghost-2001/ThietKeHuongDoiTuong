<?php
    include("./config/config.php");
?>

<script>
    document.querySelector('#dashboard').classList.add('active');
    document.querySelector('.name-page').innerHTML = "Dashboard";
</script>

<div class="dashboard-page home-content" id="home-content">
    <div class="date-picker">
        <input onchange="changeDate()" type="date" name="date" id="date" class="input">
    </div>
    <div class="box-cover" id="box-cover">
        
    </div>
</div>


<script>
    function changeDate() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("box-cover").innerHTML = this.responseText;
            } 
        };    
        var date = document.getElementById('date').value;
        // console.log(path);
        var path = `modules/showDashboard.php?date=${date}`;
        // alert(path);
        xhttp.open("GET", path, true);
        xhttp.send();
    }
    changeDate();
</script>