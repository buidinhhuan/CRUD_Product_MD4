<!DOCTYPE html>
<html lang="en">

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

    <link rel="stylesheet" href="assets/sass/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/sass/owl.theme.default.min.css">

    <title>Exuma</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/sass/product.css">
</head>


<!-- navbar section start -->
<div class="nav">
    <div class="container h-100">
        <div class="row h-100">
            <div class="col-xl-10  col-lg-10 col-md-10 col-sm-10 h-100 d-flex ">
                <div class="logo">
                    <img src="../assets/img/logo.webp" width="100%" height="70%">
                </div>
                <ul>
                    <li><a href="/ProductController?action=GETALL">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
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


<section class="product">

    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="left-imgs">
                    <img src="../assets/img/bozsol1.webp" alt="" class="one">
                    <img src="../assets/img/bozsol-3.webp" alt="" class="three">
                    <img src="../assets/img/bozsol1.webp" alt="" class="two">

                </div>
            </div>
            <div class="col-lg-5">
                <div class="product-img">
                    <img src="../assets/img/boz1.webp" width="100%" height="100%" class="main">
                </div>
            </div>
            <div class="col-lg-5">
                <div class="product-text">
                    <h4>PROFUMO ROSA BODY MIST</h4>
                    <p>The Profumo Rosa body mist opens up new, unprecedented possibilities of wearing a fragrance. A
                        delicate mist subtly envelops the body, retaining the sensual aroma of Damask rose all day long.
                        If you want your favorite fragrance to stay with you longer, use a mist during the day to
                        refresh scent. Profumo Rosa body mist used alone is an ideal proposition for those who prefer a
                        more delicate concentration of aromas and a more subtle effect.</p>
                    <a href="view/homePage.jsp">Back</a>
                </div>

            </div>
        </div>
    </div>
</section>
<div class="related-products">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 p-3">
                <h1>Related Products</h1>
            </div>
            <c:forEach items="${products}" var="p" varStatus="item">
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-12">
                    <div class="img-box">
                        <div class="img">
                            <img src="${p.imageUrl}" width="100%" height="100%">
                        </div>
                        <div class="img-text">
                            <h5>${p.name}</h5>
                            <h6>${p.price}</h6>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- footer start -->
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
                    <li><a href="view/about.jsp">About</a></li>
                    <li><a href="view/contact.jsp">Contact</a></li>
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


<!-- footer end -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
<script>
    $('.buton').click(function () {
        $('.right-menu').addClass('transform');
        $('body').addClass('hide');
    })

    $('.close').click(function () {
        $('.right-menu').removeClass('transform');
        $('body').removeClass('hide');
    })


    $('.one').click(function () {
        document.querySelector('.main').src = 'assets/img/bozsol1.webp';
    })
    $('.two').click(function () {
        document.querySelector('.main').src = 'assets/img/bozsol1.webp';
    })
    $('.three').click(function () {
        document.querySelector('.main').src = 'assets/img/bozsol-3.webp';
    })
</script>
</body>

</html>