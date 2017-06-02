<?php
session_start();
?>
<?php include "partials/header.php"; ?>

<!DOCTYPE html>
<html>
    <body>
        
        <div class="login">
            <div class="small-12 medium-12 large-12 "><h3>Login</h3></div>
            <form action="login.php" method="post">

                <div class="login-form">
                <input type="text"
                       name="username"
                       placeholder="User Name" />

                <input type="text"
                       name="password"
                       placeholder="Password" />

                <input type="submit"
                       value="Log in"
                       name="submit">
                </div>
            </form>

        </div>

        <?php
        if(isset($_POST["submit"]) AND !empty($_POST["username"])) {
            include "db.php";
            if(!db_connect()) {
                echo"<p>Connection Failed</p>";
            }
            else {
                $username = mysqli_real_escape_string(db_connect(),$_POST["username"]);
                $password = mysqli_real_escape_string(db_connect(),$_POST["password"]);
                $query = "SELECT * FROM login_tb
                                  WHERE uusername = '".$username."'";
                $queryResult = mysqli_query(db_connect(), $query);
                $rowc = mysqli_num_rows($queryResult);
                if($rowc>0){
                    while($row = mysqli_fetch_assoc($queryResult)){

                        $hashed_pwd=$row['upassword'];
                        
                        function verify_password_hash($strPassword, $strHash){
			    if (function_exists('password_verify')) {
			        // php >= 5.5
			        $boolReturn = password_verify($strPassword, $strHash);
			    } else {
			        $strHash2 = crypt($strPassword, $strHash);
			        $boolReturn = $strHash == $strHash2;
			    }
			    return $boolReturn;
			}

                        $match = verify_password_hash($password,$hashed_pwd);
                        //echo $match;
                        if($match==0){
                            echo "1Invalid Username and/or Password, Please try again";
                        }else{
                            $_SESSION['uname']=$username;
                            echo '<script>window.location.replace("http://kenyusakuraba.com/Kenyu_Week12/user-page.php")</script>';
                            // header("location:user-page.php");
                        }
                    }
                }else{
                    echo "2Invalid Username and/or Password, Please try again";
                }
            }     
        }
        if(isset($_SESSION["uname"])) {
            echo '<script>window.location.replace("http://kenyusakuraba.com/Kenyu_Week12/user-page.php")</script>';
        } 
        ?>
    </body>
</html>