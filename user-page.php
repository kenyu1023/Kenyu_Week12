<?php
session_start();
if (!isset($_SESSION["uname"])) {
    header("location:login.php");
}
include "partials/user-header.php";
?>
    <div class="user-page">
        <div class="user-nav">
<!--
            <div class="small-6 columns">
                <div class="user-nav-panel-each">
                    <a href="user-about.php">About</a>
                </div>
            </div>
            
            <div class="small-6 columns">
                <div class="user-nav-panel-each">
                     <a href="user-portfolio.php">Portfolio</a>
                </div>
            </div>
            
            <div class="small-6 columns">
                <div class="user-nav-panel-each">
                 <a href="user-blog.php">Blog</a>
                </div>
            </div>
            
            <div class="small-6 columns"> 
                <div class="user-nav-panel-each">
                    <a href="#">lorem ipusum</a>
                </div>
            </div>
-->
       
            <ul class="user-page-nav">
                <li><a href="user-about.php">About</a></li>
                <li><a href="user-portfolio.php">Portfolio</a></li>
                <li><a href="user-blog.php">Blog</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </div>
      
    </div>
    <?php include "partials/footer.php"; ?>