<?php include('customer-server.php') ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Customer Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="preconnect" href="https://firebasestorage.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
    rel="stylesheet" />
  <link href="../CSS-files/css/aspect-elements.css" rel="stylesheet" /> <!--CSS in root directory linking-->
  <link href="../CSS-files/customer-css/aspect-style.css" 
  rel="stylesheet" /> <!--CSS in child directory linking-->
</head>

<body id="root-container" style="margin: 0" onload="initAspectJS()">
  <div id="content-container">
    <div data-element-behavior="form" id="form-id-167-" data-element-type="section">


      <form id="container-id-162-" data-element-type="container" action="customer-form.php" method="post">
        <p id="text-id-169-" >Customer Form</p>
        <input id="input-id-163-" type="number" name="customer_ID" required="true" placeholder="customer_ID" />
        <input id="input-id-164-" type="text" name ="name" required="true" placeholder="name" />
        <input id="input-id-171-" type="text" name ="email" required="true" placeholder="email" />
        <input id="input-id-172-" type="text" name ="contact_information" required="true" placeholder="contact_information" />
        <input id="input-id-173-" type="number" name="address_ID" required="true" placeholder="address_ID" />
        <input id="input-id-174-" type="number" name="shipping_ID" required="true" placeholder="shipping_ID" />
        <input id="button-id-178-" type="submit" name= "submit" value="SUBMIT">
      </form>
    </div>
  </div>

  <script src="customer-script.js"></script> <!--Javascript linking-->
</body>

</html>