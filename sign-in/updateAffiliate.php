<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Signin Template · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <form class="form-signin" method="POST" action="finUpdateAffiliate.php">
  
  <h1 class="h3 mb-3 font-weight-normal">Please update client details</h1>
  <label for="inputEmail" class="sr-only">Affiliate Name</label>
  <input name="aname" type="text" id="inputEmail" class="form-control" placeholder="Affiliate Name" required autofocus>
  <label for="inputPassword" class="sr-only">Affiliate Address</label>
  <input name="aaddress" type="text" id="inputPassword" class="form-control" placeholder="Affiliate Address" required>
  <label for="clientContact" class="sr-only">Affiliate Contact</label>
  <input name="acontact" type="text" id="inputPassword" class="form-control" placeholder="Affiliate Contact" required>
  
  <input name="affid" type="hidden"  class="form-control" value="<?php echo $_GET['affid'];?>">

 
  <button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>
  
</form>
</body>
</html>
