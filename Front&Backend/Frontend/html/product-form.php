<?php include('product-server.php') ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Product Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="preconnect" href="https://firebasestorage.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
    rel="stylesheet" />
  <link href="../CSS-files/css/aspect-elements.css" rel="stylesheet" rel="stylesheet" /> <!--CSS in root directory linking-->
  <link href="../CSS-files/product-css/aspect-style.css" rel="stylesheet" /> <!--CSS in child directory linking-->
</head>

<body id="root-container" style="margin: 0" onload="initAspectJS()">
  <div id="content-container">
    <div data-element-behavior="form" id="form-id-205-" data-element-type="section">
      <!--Form Starts here-->
          <form id ="container-id-195-" data-element-type="container" action="product-form.php" method="post">
                    <p class="registration">Product Form</p>
              <input id="input-id-197-" type="number" name="product_ID" required='true' placeholder="product ID">
              <input id="input-id-198-" type="text" name="name" required='true' placeholder="Name">
              <input id="input-id-199-" type="text" name="description" required='true' placeholder="Description">
              <input id="input-id-200-" type="number" name ="stock_availability" required='true' placeholder = "stock">
              <input id="input-id-201-" type="number" name="price" required='true' placeholder="price">
              <input id="button-id-203-" type="submit" name="submit"  value="SUBMIT">
                </form>
    </div>
  </div>

  <script src="product-script.js"></script> <!--Javascript linking-->
</body>

</html>