<?php

// initializing variables

$order_ID = "";
$order_date = "";
$shipping_address = "";
$payment_method = "";
$order_status = "";
$carrier_ID = "";
$shipping_method_ID = "";
$address_ID = "";
// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'database_with_data');

if(!$db)
{
  die("Connection Failed: " . mysqli_connect_error());
}

if (isset($_POST['submit'])) {
  
  $order_ID = $_POST['order_ID'];
  $order_date = $_POST['order_date'];
  $shipping_address = $_POST['shipping_address'];
  $payment_method = $_POST['payment_method'];
  $order_status = $_POST['order_status'];
  $carrier_ID = $_POST['carrier_ID'];
  $shipping_method_ID = $_POST['shipping_method_ID'];
  $address_ID = $_POST['address_ID'] ;


			$query1 ="INSERT INTO `orders`(`order_ID`, `order_date`, `shipping_address`, `payment_method`, `order_status`, `carrier_ID`, `shipping_method_ID`, `address_ID`) VALUES ('$order_ID','$order_date','$shipping_address','$payment_method','$order_status','$carrier_ID','$shipping_method_ID','$address_ID')";
			  
      if(mysqli_query($db, $query1)){
        echo "New order details submitted successfully !";
      }
      else
      {
        echo "Error: " . $sql . "" . mysqli_error($db);

      }
      mysqli_close($db);
			 
}
?>