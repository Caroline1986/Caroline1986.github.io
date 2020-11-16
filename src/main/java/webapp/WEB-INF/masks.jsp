<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="./css/masks.css">--%>

<%--</jsp:include>--%>

<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The Crafty Retired</title>
    <link rel="stylesheet" href="./css/masks.css">
    <script src="https://kit.fontawesome.com/170cbfa43d.js" crossorigin="anonymous"></script>
    <script src="../masks.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script src="https://unpkg.com/scrollreveal"></script>
    <script>
        ScrollReveal({reset: true});
    </script>
</head>
<body>
<script src="../jquery.js"></script>

<nav class="navbar cardOne">
    <ul>
        <li class="link"><a class="effect-5" href="#">Home</a></li>
        <li class="link"><a class="effect-5" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="rnaesq@yahoo.com">Contact</a></li>
        <li class="link"><a class="effect-5" href="#">About</a></li>
        <li class="link"><a class="effect-5" href="https://www.facebook.com/thecraftyretirednurse"><i
                class="fab fa-facebook" icon-large></i></a></li>
        <li class="link"><a class="effect-5" data-toggle="modal" data-target="#shoppingCart"><i
                class="fas fa-shopping-cart"></i></a></li>
    </ul>
</nav>

<!--begin carousal-->
<!--<div id="carouselExampleIndicators" class="carousel slide m-auto" data-ride="carousel" style="max-width: 75%">-->
<!--    <ol class="carousel-indicators">-->
<!--        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>-->
<!--        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>-->
<!--        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>-->
<!--    </ol>-->
<!--    <div class="carousel-inner" style="max-height: 300px !important;">-->
<!--        <div class="carousel-item active">-->
<!--            <img src="img/craft-nurse/sports-masks.jpg" class="d-block" style="max-height: 300px !important;" alt="...">-->
<!--        </div>-->
<!--        <div class="carousel-item">-->
<!--            <img src="img/craft-nurse/sports-masks.jpg" class="d-block" style="max-height: 300px !important;"alt="...">-->
<!--        </div>-->
<!--        <div class="carousel-item">-->
<!--            <img src="img/craft-nurse/sports-masks.jpg" class="d-block" style="max-height: 300px !important;" alt="...">-->
<!--        </div>-->
<!--    </div>-->
<!--    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">-->
<!--        <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<!--        <span class="sr-only">Previous</span>-->
<!--    </a>-->
<!--    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">-->
<!--        <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<!--        <span class="sr-only">Next</span>-->
<!--    </a>-->
<!--</div>-->
<!--end carousal-->


<main class="title">
    <div class="row-one">
        <a href="#">
            <header class="craftyNurse crafty link text-center">The Crafty Retired Nurse</header>
        </a><br>


        <article class="cards link">
            <section class="text-section"><a href="#">
                <img src="img/craft-nurse/kids-masks.jpg" height="89%">
                <h3><a class="effect-5" href="#">Masks for Kids</a></h3></a>
            </section>
        </article>
        <article class="cards link">
            <section class="text-section"><a href="#">
                <img src="img/craft-nurse/sports-masks.jpg" height="89%">
                <h3><a class="effect-5" href="#">Team Masks</a></h3></a>
            </section>
        </article>
    </div>
    <div class="row-two cardTwo">
        <article class="cards link">
            <section class="text-section"><a href="#">
                <img src="img/craft-nurse/back-to-school.jpg" height="89%">
                <h3><a class="effect-5" href="#">Back to School</a></h3></a>
            </section>
        </article>
        <article class="cards link">
            <section class="text-section"><a href="#">
                <img src="img/craft-nurse/logo-andrea.jpg" height="89%">
                <h3><a class="effect-5"
                       href="https://www.facebook.com/media/set/?vanity=thecraftyretirednurse&set=a.123200662790161">Just
                    for Fun</a></h3></a>
            </section>
        </article>
    </div>


<!--    modal box-->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                    <button type="button" class="close mr-0" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Recipient:</label>
                            <input type="text" class="form-control" id="recipient-name" href="# rnaesq@yahoo.com"
                                   value="rnaesq@yahoo.com">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="col-form-label">Message:</label>
                            <textarea class="form-control" id="message-text"></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send message</button>
                </div>
            </div>
        </div>
    <input type="text" id="addInput">
    <button type="submit" id="submitChanges"></button>
    </div>


    <div class="modal fade" id="shoppingCart" tabindex="-1" role="dialog" aria-labelledby="mask" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <p class="modal-title text-dark font-weight-bold" id="mask">My Masks</p>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card card-body">
                        <div class="border-0">
                            <form id="add-form">
                                <!--                                    <label>Name: <input id="item-name" type="text" placeholder="Item Name"> </label>-->
                                <!--                                    <label>Price: <input id="item-price" type="number" step="0.01"> </label>-->
                                <!--                                    <button type="submit">Add Item</button>-->

                                <div>Mask #</div>
                                <div>
                                    <input id="item-name" type="text" class="form-control" placeholder="item #">
                                </div>
                                <div>Size</div>
                                <select id="item-price" class="form-control">
                                    <option id="kids">Kids $8.00</option>
                                    <option id="adult">Adult $10.00</option>
                                </select>
                                <div>Quantity</div>
                                <select class="form-control">
                                    <option>0</option>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>
                                <div>
                                    <div class="mt-3" id="cart-qty">Total</div>
                                </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Add Item</button>
                        <button id="clearCart" class="btn btn-danger">Cancel</button>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>


</main>
<script>
    ScrollReveal().reveal('.link', {interval: 200, reset: true});
</script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>
</html>