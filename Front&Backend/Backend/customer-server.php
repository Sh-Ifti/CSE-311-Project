<?php

// initializing variables

$customer_ID = "";
$address_ID = "";
$shipping_ID = "";
$name = "";
$email = "";
$contact_information = "";

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'database_with_data');

if(!$db)
{
  die("Connection Failed: " . mysqli_connect_error());
}

if (isset($_POST['submit'])) {
  
  $customer_ID = $_POST['customer_ID'];
  $address_ID = $_POST['address_ID'];
  $shipping_ID = $_POST['shipping_ID'];
  $name = $_POST['name'];
  $email = $_POST['email'];
  $contact_information = $_POST['contact_information'];

			$query1 ="INSERT INTO `customer`(`customer_ID`, `address_ID`, `shipping_method_ID`, `name`, `contact_information`, `email`) VALUES ('$customer_ID','$address_ID','$shipping_ID','$name','$email','$contact_information')";
			  
      if(mysqli_query($db, $query1)){
        echo "New customer details submitted successfully ! :)";

      }
      else
      {
        echo "Error: " . $sql . "" . mysqli_error($db);

      }
      mysqli_close($db);
			 
}
?>