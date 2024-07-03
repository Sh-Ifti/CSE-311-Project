<?php

// initializing variables

$product_ID = "";
$name = "";
$description = "";
$stock_availability = "";
$price = "";

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'database_with_data');

if(!$db)
{
  die("Connection Failed: " . mysqli_connect_error());
}

// REGISTER USER
if (isset($_POST['submit'])) {
  
  $product_ID = $_POST['product_ID'];
  $name = $_POST['name'];
  $description = $_POST['description'];
  $stock_availability = $_POST['stock_availability'];
  $price = $_POST['price'];

			$query1 ="INSERT INTO products (`product_ID`, `name`, `description`, `stock_availability`, `price`) VALUES ('$product_ID','$name','$description','$stock_availability','$price')";
			  
      if(mysqli_query($db, $query1)){
        echo "New product details submitted successfully !";
      }
      else
      {
        echo "Error: " . $sql . "" . mysqli_error($db);

      }
      mysqli_close($db);
			 
}
?>