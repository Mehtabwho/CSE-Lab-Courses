<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about-img-4.jpg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Choose us for the ultimate indulgence! Our handcrafted cakes are made with the finest ingredients and infused with passion. From classic favorites to innovative creations, we cater to every taste bud. Experience the magic of our delectable treats, baked to perfection and delivered with care.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>what we provide?</h3>
            <p>We provide custom occasion cakes, cupcakes, cookies, and other baked goods, including savory items</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="images/about-img-5.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about-img-6.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>We are a passionate team of bakers and cake designers, dedicated to creating delicious, custom cakes and baked goods for every occasion, with a focus on exceptional taste and customer satisfaction.
            </p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <h3>Roksana Parvin</h3>
            <p>Ordered some glizbi from them. The taste was awesome also every member of my family loved this dessert a lot.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            
        </div>

        <div class="box">
        <h3>Shifat Sharmin Purba</h3>
            <p>Had an amazing experience after ordering from this shop. The owner is so friendly and sensible. Thank you so much.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
        </div>

        <div class="box">
        <h3>Nafi Rahman</h3>
            <p> Her cakes are moist, fluffy and perfectly sweet. I am a regular customer of their cotton cheesecake these days.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            
        </div>

    </div>

</section>



<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>