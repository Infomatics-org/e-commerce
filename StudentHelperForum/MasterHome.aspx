<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MasterHome.aspx.cs" Inherits="StudentHelperForum.MasterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- slider Area Start -->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height" data-background="assets/img/hero/h1_hero.jpg">
                    <div class="container">
                        <div class="row d-flex align-items-center justify-content-between">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                                <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                    <img src="assets/img/hero/hero_man.png" alt="">
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
                                <div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">Student Helper Forum</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">Meeting Student Needs <br> and Wants</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">A forum for students, by students!</p>
                                    <!-- Hero-btn -->
                                    <div class="hero__btn" data-animation="fadeInRight" data-delay="1s">
                                        <a href="#section2" class="btn hero-btn">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider slider-height" data-background="assets/img/hero/h1_hero.jpg">
                    <div class="container">
                        <div class="row d-flex align-items-center justify-content-between" >
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                                <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                    <img src="assets/img/hero/hero_man.png" alt="">
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 col-md-5 col-sm-8" >
                                <div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">60% Discount</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">Winter <br> Collection</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">Best Cloth Collection By 2020!</p>
                                    <!-- Hero-btn -->
                                    <div class="hero__btn" data-animation="fadeInRight" data-delay="1s" >
                                        <a href="industries.html" class="btn hero-btn" id="section2" >Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    
        <!-- slider Area End-->
        <!-- Category Area Start-->
        <section class="category-area section-padding25 mt-5" >
            <div class="container-fluid" >
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center mb-50">
                            <h2 >Shop by Category</h2>
                        </div>
                    </div>
                </div>




                <div class="container my-4">



   

  <!--Carousel Wrapper-->
  <div id="multi-item-example" class="carousel slide carousel-multi-item d-none d-lg-block"  data-ride="carousel">





         
   
<!--
   
    <ol class="carousel-indicators">
      <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
      <li data-target="#multi-item-example" data-slide-to="1"></li>
      <li data-target="#multi-item-example" data-slide-to="2"></li>
    </ol>
   
      -->




    <!--Slides-->
    <div class="carousel-inner"  role="listbox">

      <!--First slide-->
      <div class="carousel-item active">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Academic_Services.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Academic Services</h4>
                <p class="card-text">We offer help in skills for academic success, including organization, time management.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Beauty_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Beauty Products</h4>
                <p class="card-text">We have chosen to offer our expertise in the service of women and men worldwide, meeting the infinite diversity of their beauty desires. We are committed to fulfilling this mission ethically and responsibly.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Cleaning_Service.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Cleaning Services</h4>
                <p class="card-text">Our commercial cleaning services are offered around the university in major campuses as well as the immediate surrounds of those campuses</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--/.First slide-->

      <!--Second slide-->
      <div class="carousel-item">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Clothes_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Clothing Products</h4>
                <p class="card-text">Drip check!We have student's products that will get your drip game on a new high.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Cooking_Service.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Cooking Services</h4>
                <p class="card-text">Any food service worker registered on this site is responsible for everything that goes into the preparation of a meal and the ingredients.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Electronics_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Electronic Products</h4>
                <p class="card-text">You get the best and new electronic devices delivered to your res by your fellow trusted students.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--/.Second slide-->

      <!--Third slide-->
      <div class="carousel-item">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Textbooks_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Textbook Products</h4>
                <p class="card-text">best buys,best books and everything academic : we have it available as a hardcopy or pdf.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/FastFood_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Fast Food Products</h4>
                <p class="card-text">Get your MacD on from the best student joints made by the best student fast food makers.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Ironing_Service1.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Ironing Services</h4>
                <p class="card-text">if you're ever tired after doing your laundry feel free to come through for the best ironing services</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--/.Third slide-->

              <!--4th slide-->
      <div class="carousel-item">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Laundry_Service.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Laundry Services</h4>
                <p class="card-text">We offer premium and affordable Dry Cleaning & Laundry Services in UJ, pick up and delivery, commercial laundry service and drop off laundry service.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Shoes_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Shoe Products</h4>
                <p class="card-text">Drip check!The freshest shoes,we serve.....</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Stationery_Products.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Stationery Products</h4>
                <p class="card-text">When course starts to move,move your hand with the cleanest pens,ruler and a whole lotta stationery...</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--/.4th slide-->

                      <!--5th slide-->
      <div class="carousel-item">

        <div class="row">
          <div class="col-md-4">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Ohers.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Other Products</h4>
                <p class="card-text">if you're keen on finding random great products,visit.</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>


          <div class="col-md-4 clearfix d-none d-md-block">
            <div class="card mb-2">
              <img class="card-img-top" src="/assets/img/Coorousel_Images/Ohers.jpg"
                   alt="Card image cap" width="250" height="200">
              <div class="card-body">
                <h4 class="card-title">Other Services</h4>
                <p class="card-text">if you're keen on finding random great services,visit</p>
                <a class="btn btn-primary">Visit</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--/.5th slide-->

    </div>

    <div class="controls-top text-center mt-5">
      <a class="btn w-auto mr-3" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
      <a class="btn w-auto" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
    </div>
    <!--/.Slides-->

  </div>
  <!--/.Carousel Wrapper-->


</div>


<!--
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img width="500" height="600" class="d-block w-100" src="assets/img/categori/cat1.jpg" alt="First slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>...</h5>
            <p>...</p>
          </div>
    </div>
    <div class="carousel-item">
      <img width="500" height="600" class="d-block w-100" src="assets/img/categori/cat2.jpg" alt="Second slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>...</h5>
            <p>...</p>
          </div>
    </div>
    <div class="carousel-item">
      <img width="500" height="600" class="d-block w-100" src="assets/img/categori/cat1.jpg" alt="Third slide">
          <div class="carousel-caption d-none d-md-block">
            <h5>...</h5>
            <p>...</p>
          </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>-->

             <!--   <div class="row">
                    <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img">
                                <img src="assets/img/categori/cat1.jpg" alt="">
                                <div class="category-caption">
                                    <h2>Goods</h2>
                                    <span class="best"><a href="#">We're here for you!</a></span>
                                    <span class="collection">Goods Offered</span>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img text-center">
                                <img src="assets/img/categori/cat2.jpg" alt="">
                                <div class="category-caption">
                                    <span class="collection">Need help?</span>
                                    <h2>Services</h2>
                                   <p>Epic Services 4 Students</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img">
                                <img src="assets/img/categori/cat3.jpg" alt="">
                                <div class="category-caption">
                                    <h2>Unique Requests</h2>
                                    <span class="best"><a href="#">Best New Deals</a></span>
                                    <span class="collection">Can't find what you need?</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                 -->





            </div>
        </section>
</asp:Content>
