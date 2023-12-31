<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <html  lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"
          integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/sass/style.css">
    <title>Exuma</title>
</head>
<body>


<!-- hero-video section start -->

<section class="video-sec" id="top">
    <div class="container-fluid p-0">
        <div class="row p-0 m-0">
            <div class="col-12 p-0">
                <div class="video-div">
                    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
                        <source src="assets/img/bg.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
    </div>
    <div class="nav">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-xl-10  col-lg-10 col-md-10 col-sm-10 h-100 d-flex ">
                    <div class="logo">
                        <img src="https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/305647245_476259847843614_3688995015248062423_n.jpg?_nc_cat=111&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=oVb2gC8QewgAX9QLJot&_nc_ht=scontent.fhan14-3.fna&oh=00_AfDFBZdsRWd_FUZrySbRQBItKSPnua7ywly1NK101fnKdQ&oe=64D7FD15" width="100%" height="70%">
                    </div>
                    <ul>
                        <li><a href="/ProductController?action=GETALL">Home</a></li>
                        <li><a href="view/about.jsp">About</a></li>
                        <li><a href="view/boutiques.jsp">Boutiques</a></li>
                        <li><a href="view/productPage.jsp">Products</a></li>
                        <li><a href="view/contact.jsp">Contact</a></li>
                    </ul>
                    <form class="form-search" action="">
                        <input class="input-search" name="intput-search"  type="text" placeholder="search">
                        <button  class="btn-search" name="btn-search" value="SEARCH" type="submit">Search </button>
                    </form>
                </div>
                <div class="i">
                    <i class="fa-solid fa-bars buton"></i>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- hero-video section end -->

<!-- about section start -->

<section class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                <h1>About Us</h1>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-12">
                <h4>The heart of Exuma Parfums beats to the rhythm of the big city’s breath. Our fragrances are bold
                    and modern suggestions for people who like to break stereotypes and look for originality.</h4>
                <p>Each of our composition is a separate story which is waiting to be discovered. We are young and
                    dynamic, we develop and grow day by day. We are not afraid to dream and bravely reach for the
                    stars. We want our fragrances to seduce you with what is most important to us – quality. We draw
                    from a wealth of natural ingredients and experience of distinguished perfumers.</p>
                <p>Our goal is to create perfumes in which you can find beautiful memories and which can create
                    them. Take a magical journey around the world with us…</p>
            </div>
        </div>
    </div>
</section>

<!-- about section end -->

<!-- products section start -->

<section class="products">
    <div class="container-fluid">
        <div class="row">
            <c:forEach items="${products}" var="p" varStatus="item">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-10">
                    <div class="img-box">
                        <div class="img">
                            <img src="${p.imageUrl}" width="100%" height="100%">
                        </div>
                        <div class="img-text">
                            <h5>${p.name}</h5>
                            <h6>${p.price}</h6>
                            <i class="fa-solid fa-eye"></i>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 p-4">
                <img src="assets/img/logo.webp" width="70%" height="50%">
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
                <input type="text" name="" id="" >
                <button>Subscribe</button>
            </div>
        </div>
    </div>
</footer>
<!-- exuma world section start -->
<!-- exuma world section end -->


<!-- footer start -->

<section class="exuma-world">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 p-0">
                <div class="imgbg">
                    <img src="assets/img/sec1.webp" width="100%" height="100%" class="left-img">
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 p-0">
                <div class="right-text">
                    <h2 class="title">Exuma Prive</h2>
                    <p class="para">The richest and most sophisticated compositions presented by the Exuma Parfums
                        brand. Mysterious and mystical, like oriental stories and magical tales brought to life
                        straight from The Arabian Nights.
                        <br> Close your eyes and immerse yourself in the world of magic. In Exuma Prive you will
                        discover fragrances inspired by the most acclaimed fairy tales and legends.You will witness
                        spectacular metamorphoses, discover the unknown lands and their deeply hidden treasures. Let
                        yourself get carried away by the world’s most enchanting stories.
                    </p>

                    <span class="one">1</span>
                    <span class="two">2</span>
                    <span class="three">3</span>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- footer end -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<script type="javascript" src="<%=request.getContextPath()%>/assets/js/script.js"></script>
</body>

</html>