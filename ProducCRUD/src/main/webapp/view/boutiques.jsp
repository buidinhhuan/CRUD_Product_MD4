<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"
        integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/sass/boutiques.css">
    <title>Exuma</title>
</head>

<body>



   <!-- navbar section start -->
        <div class="nav">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-xl-10  col-lg-10 col-md-10 col-sm-10 h-100 d-flex " >
                        <div class="logo">
<img src="../assets/img/logo.webp" width="100%" height="70%">
                        </div>
                        <ul>
                            <li><a href="/ProductController?action=GETALL">Home</a></li>
                            <li><a href="productPage.jsp">Product</a></li>
                            <li><a href="boutiques.jsp">Boutiques</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </div>
                       <div class="i">
                        <i class="fa-solid fa-bars buton"></i>
                       </div>
                </div>
            </div>
        </div>
    <!-- navbar end -->
<section class="boutiques">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 p-5 d-flex flex-column justify-content-center">
                <h1>Boutiques</h1>
                <p>You will also find our fragrances stationary in selected places in Poland and abroad. <br> Below are the addresses of our partners.</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b1.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b1.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b1.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b2.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b2.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b3.webp" width="100%" height="100%">
            </div><div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b4.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b5.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b6.webp" width="100%" height="100%">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                <img src="../assets/img/b7.webp" width="100%" height="100%">
            </div>
        </div>
    </div>
</section>

    
<footer>
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 p-4">
<img src="../assets/img/logo.webp" width="70%" height="50%">
<a href="">media@exumaparfums.com</a><br>
<a href=""> +48 896 490 400</a><br>
<a href=""><i class="fa-brands fa-facebook"></i></a>
<a href=""><i class="fa-brands fa-instagram"></i></a>
<a href=""><i class="fa-brands fa-twitter"></i></a>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 p-4">
<ul>
<h4>HELP</h4>
<li><a href="">Shipping</a></li>
<li><a href="">Returns</a></li>
<li><a href="">Regulations</a></li>
<li><a href="">Privacy Policy</a></li>

</ul>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 p-4">
                <ul>
                    <h4>INFORMATIONS</h4>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="">Shop</a></li> 
                </ul>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 p-4">
<p>Stay up to date with our news and promotions!</p>
<input type="text" name="" id="">
<button>Subscribe</button>
            </div>
        </div>
    </div>
</footer>











    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
        <script >
          $('.buton').click(function(){
        $('.right-menu').addClass('transform');
        $('body').addClass('hide');
    })

    $('.close').click(function(){
        $('.right-menu').removeClass('transform');
        $('body').removeClass('hide');
    })
        </script>
</body>

</html>