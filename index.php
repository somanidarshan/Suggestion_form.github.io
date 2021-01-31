<?php
$insert=false;
if(isset($_POST['name'])){

 $server="localhost";
 $username="root";
 $password="";

 $con=mysqli_connect($server,$username,$password);

     if(!$con){
         die("Connection To this database was failed".mysqli_connect_error());
 }
    // echo "Connection was Successful";
    $name= $_POST['name'];
    $place= $_POST['place'];
    $country= $_POST['country'];
    $season= $_POST['season'];
    $desc= $_POST['desc'];
    $sql= "INSERT INTO `tour`.`tour` (`name`, `place`, `country`, `season`, `other`, `dt`) VALUES ( '$name', '$place', '$country', '$season', '$desc', current_timestamp());
";
   // echo $sql;
    if($con->query($sql)==true){
            // echo "Successfully Inserted";
            $insert=true;

    }
    else{
        echo "Error:$sql<br> $con->error";

   }
    $con->close();
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Tourism Form</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Potta+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <img class="bj" src="bj.jpg" alt="Image">
    <div class="container">
        <h3>Welcome to Tour Suggestion Form</h3>
        <p>
           Please Enter your Suggestions and Submit The Form 
        </p>
        <?php
        if($insert==true){
            echo "<p class='submitMsg'>Thanks For Submitting your Form> </p>";
        }
    ?>
        <form action="index.php" method="POST">
            <input type="text" name="name" id="name" placeholder="Enter your Name">
            <input type="text" name="place" id="place" placeholder="Enter your Favourite Tourist Place">            
            <input type="text" name="country" id="country" placeholder="Enter the Country">
          
            <input type="text" name="season" id="season" placeholder="Enter the Season to get the best Feel">
            
            <textarea name="desc" id="desc" cols="130" rows="10" placeholder="Give your Own Experience"></textarea>
            <button class="btn">Submit</button>
            
        </form>
    </div>
    <script src="index.js"></script>
</body>
</html>