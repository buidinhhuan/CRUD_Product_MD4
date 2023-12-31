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
    <link rel="stylesheet"type="text/css" href="<%=request.getContextPath()%>/assets/sass/about.css">
    <title>Exuma</title>
</head>

<body>

      <!-- hero-video section start -->
      <section class="about-sec" >
        <div class="container-fluid p-0 m-0">
            <div class="row p-0 m-0">
                <div class="col-xl-6  col-lg-6 col-md-6 col-sm-6 col-12 p-0 m-0">
                   <img src="../assets/img/x960x1080.jpg.pagespeed.ic.HCyNezORe9.webp" width="100%" height="100%">
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 p-0 m-0 d-flex justify-content-center align-items-center">
                    <div class="about-text">
                        
<h2>
    The heart of Exuma Parfums beats to the rhythm of the big city’s breath. Our fragrances are bold and modern suggestions for people who like to break stereotypes and look for originality.</h2>
    <p>Each of our composition is a separate story which is waiting to be discovered. We are young and dynamic, we develop and grow day by day. We are not afraid to dream and bravely reach for the stars. We want our fragrances to seduce you with what is most important to us – quality. We draw from a wealth of natural ingredients and experience of distinguished perfumers.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-xl-10  col-lg-10 col-md-10 col-sm-10 h-100 d-flex " >
                        <div class="logo">
<img src="https://i.pinimg.com/550x/d0/29/8c/d0298c78f9a927f1409e14176e2f67d2.jpg" width="100%" height="100%">
                        </div>
                        <ul>
                            <li><a href="/ProductController?action=GETALL">Home</a></li>
                            <li><a href="productPage.jsp">Products</a></li>
                            <li><a href="boutiques.html">Boutiques</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                       <div class="i">
                        <i class="fa-solid fa-bars buton"></i>
                       </div>
                </div>
            </div>
        </div>
    </section>


    <!-- hero section  end -->











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