<?php include('order-server.php') ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Order Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="preconnect" href="https://firebasestorage.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
    rel="stylesheet" />
  <link href="./CSE311-Assets/CSS-files/css/aspect-elements.css" rel="stylesheet" rel="stylesheet" /><!--CSS in root directory linking-->
  <link href="./CSE311-Assets/CSS-files/order-css/aspect-style.css" rel="stylesheet" /><!--CSS in child directory linking-->
</head>

<body id="root-container" style="margin: 0" onload="initAspectJS()">
  <div id="content-container">
    <div data-element-behavior="form" id="form-id-225-" data-element-type="section">


      <form id="container-id-216-" data-element-type="container" action="order-form.php" method = "post">
        <p id="text-id-217-" >Order Form</p>
        <input id="input-id-218-" type="number" name="order_ID" required="true" placeholder="order_ID:" />
        <input id="input-id-219-" type="date" name="order_date" required="true" placeholder="order_date:" />
          <input id="input-id-220-" type="text" name="shipping_address" required="true" placeholder="shipping_address:" />
          <input id="input-id-221-" type="text" name ="payment_method" required="true" placeholder="payment_method:" />
          <input id="input-id-222-" type="text" name="order_status" required="true" placeholder="order_status:" />
          <input id="input-id-229-" type="number" name="carrier_ID" required="true" placeholder="carrier_ID:" />
          <input id="input-id-230-" type="number" name = "shipping_method_ID" required="true" placeholder="shipping_method_ID:" />
          <input id="input-id-231-" type="number" name="address_ID" required="true" placeholder="address_ID:" />
          <input id="button-id-223-" type="submit" name="submit" value="SUBMIT">
      </form>
    </div>
  </div>

  <script src="order-script.js"></script> <!--Javascript linking-->
</body>

</html>