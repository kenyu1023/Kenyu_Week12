<?php 
session_start();
if (!isset($_SESSION["uname"])) {
    header("location:login.php");
}
?>


<div class="user-portfolio">
<!--    <h1>Portfolio</h1>-->
    <div class="user-portfolio-edit">
        <form action="user-portfolio-process.php" method="post" enctype="multipart/form-data">
            <div>
                <label>Main Image</label>
                <input type="file"
                       id="mainImg"
                       name="mainImgUploaded" />
            </div>
            <div>
                <label>Add more Image</label><span id="addMoreImage">+</span>
            </div>
            <input type="hidden" id="countImage" value="0" name="count-image">
            
            <div id="moreImagesBox">
                
            </div>

        
            <div>
                <label>Title</label>

                <input type="text"
                       name="title"
                       id="title"
                       placeholder="Title">
            </div>

            <div>
                <label>Description</label>
                <textarea name="description"
                          id="description"
                          placeholder="Description"></textarea>
            </div>  
            
            <div>
                <label>Embed</label>
                <input type="text"
                       name="embed"
                       id="embed"
                       placeholder="Embed ID">
            </div>


            <div>
            <input type="submit"
                   name="submit"
                   value="Submit" />
            </div>

        </form>

        <form action="user-page.php" method="post">
            <input type="submit"  name="logout" value="Log out" /> 
        </form>
    </div>
</div>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="js/main.js"></script>