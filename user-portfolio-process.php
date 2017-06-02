<?php
session_start();
if (isset($_POST["submit"])) {
    $targetDirectoryMainImage = "img/";
    $targetFileMainImage = $targetDirectoryMainImage . basename($_FILES['mainImgUploaded']['name']);
    $targetDirectorySubImage = "img/";
   
    $uploadOk = true;
    include "db.php";
    

//    if (!db_connect()) {
//
//    } 
    if(db_connect()) {
        $title = mysqli_real_escape_string(db_connect(), $_POST["title"]);
        $description = mysqli_real_escape_string(db_connect(), $_POST["description"]);
        $mainImage = mysqli_real_escape_string(db_connect(), $targetFileMainImage);
        $embed = mysqli_real_escape_string(db_connect(), $_POST["embed"]);
        $subImageCount = mysqli_real_escape_string(db_connect(), $_POST["count-image"]);
        $subImage="";
            
        if ($uploadOk == true) {
            if(move_uploaded_file($_FILES['mainImgUploaded']['tmp_name'], $targetFileMainImage)){
                
                for($i=0;$i<$subImageCount;$i+=1){
                    $indedxImage = 'portfolio-image'.$i;
                    if(isset($_FILES[$indedxImage])){
                        $targetFileSubImage = $targetDirectorySubImage . basename($_FILES[$indedxImage]['name']);
                        move_uploaded_file($_FILES[$indedxImage]['tmp_name'], $targetFileSubImage);
                        $subImage.=$targetFileSubImage."@";
                    }
                }
                
                $subImage=rtrim($subImage,"@");

                    
                $insert = "INSERT INTO portfolio_tb (title,description,main_img,sub_img,embed) VALUES ('" . $title . "','" . $description . "','" . $mainImage . "','" . $subImage . "','".$embed."')";
                $resultInsert = mysqli_query(db_connect(), $insert);
     
                if ($resultInsert == true) {
                    header("location:user-page.php");
                }
                else {
                    echo "false";
                }
            }
        } 
        else {
            echo "Sorry your file upload fell at the last fence.";
        }

    }
}

?>