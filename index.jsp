<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>



        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


        <!-- font awesome cdn link -->
        <link rel="stylesheet" href="script.js">
        <link rel="stylesheet" href="style.css">

    </head>
    <style>
        body{
            background-image: linear-gradient(263deg, #ef0b163d,#f5f5f5, #ef0b163d);
            background-repeat: no-repeat;
            background-size: 1560px 2225px;

        }
        h1{


            padding: 25px;
            margin: 0%;
            color: #000f1d;
            text-align: center;
            text-shadow: 2px 1px 2px #cbc8a7;
            height: 73px;
        }
        .errmsg {

            background: #e5d0cefc;
            padding: 10px;
            width: 100%;
            color: #e91e63;
            font-weight: bold;
        }
        .banner-container{
            display: flex;
            flex-wrap: wrap;
            gap:1.5rem;
        }

        .banner-container .banner{
            flex:1 1 40rem;
            height: 25rem;
            overflow: hidden;
            position: relative;
        }

        .banner-container .banner img{
            height: 100%;
            width:100%;
            object-fit: cover;
        }

        .banner-container .banner .content{
            position: absolute;
            top:50%; left: 4%;
            transform: translateY(-50%);
        }

        .banner-container .banner .content h3{
            font-size: 3rem;
            color: var(--black);
        }

        .banner-container .banner .content p{
            font-size: 2rem;
            color:#333;
        }

        .banner-container .banner:hover img{
            transform:scale(1.2) rotate(-5deg);
        }

        .dp-wrap {
            margin: 0 auto;
            position: relative;
            perspective: 1000px;
            height: 100%;
        }

        .dp-slider {
            height: 100%;
            width: 100%;
            position: absolute;
            transform-style: preserve-3d;
        }

        .dp-slider div { transform-style: preserve-3d; }

        .dp_item {
            display: block;
            position: absolute;
            text-align: center;
            color: #FFF;
            border-radius: 10px;
            transition: transform 1.2s;
        }

        .dp-img img { border-left: 1px solid #fff; }

        #dp-slider .dp_item:first-child {
            z-index: 10 !important;
            transform: rotateY(0deg) translateX(0px) !important;
        }

        .dp_item[data-position="2"] {
            z-index: 9;
            transform: rotateY(0deg) translateX(10%) scale(0.9);
        }

        .dp_item[data-position="3"] {
            z-index: 8;
            transform: rotateY(0deg) translateX(20%) scale(0.8);
        }

        .dp_item[data-position="4"] {
            z-index: 7;
            transform: rotateY(0deg) translateX(30%) scale(0.7);
        }

        #dp-next,  #dp-prev {
            position: absolute;
            top: 40%;
            right: 16%;
            height: 33px;
            width: 33px;
            z-index: 10;
            cursor: pointer;
        }

        #dp-prev {
            left: 15px;
            transform: rotate(180deg);
        }


        .dp_item { width: 90%; }

        .dp-content,  .dp-img { text-align: left; }

        .dp_item {
            height: 600px;
            display: flex;
            align-items: center;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            border-top: none;
        }

        .dp-content {
            padding-left: 100px;
            padding-right: 0;
            display: inline-block;
            width: 100%;
            margin-bottom: 400px;
        }

        .dp-content h2 {
            color: #41414B;
            font-family: Circular Std Bold;
            font-size: 48px;
            max-width: 460px;
            margin-top: 108px;
            margin-bottom: 0px;
        }

        .dp-content p {
            color: #74747F;
            max-width: 490px;
            margin-top: 15px;
            font-size: 22px;
        }

        .dp-content .site-btn {
            margin-top: 15px;
            font-size: 18px;
            padding: 19px 40px;
        }

        .dp-img:before {
            background: -webkit-linear-gradient(-90deg, rgba(255, 255, 255, 0.25), rgba(255, 255, 255, 0));
            background: -o-linear-gradient(-90deg, rgba(255, 255, 255, 0.25), rgba(255, 255, 255, 0));
            background: -moz-linear-gradient(-90deg, rgba(255, 255, 255, 0.25), rgba(255, 255, 255, 0));
            background: linear-gradient(-90deg, rgba(255, 255, 255, 0.75), rgba(255, 255, 255, 0));
            content: "";
            position: absolute;
            height: 100%;
            width: 25%;
            z-index: 1;
            top: 0;
            pointer-events: none;
            background: -webkit-linear-gradient(-90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.75));
            background: -o-linear-gradient(-90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.75));
            background: -moz-linear-gradient(-90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.75));
            background: linear-gradient(-90deg, rgba(255, 255, 255, 0), rgb(255, 255, 255));
        }

        .dp-img img {
            object-fit: cover;
            object-position: right;
        }

        #dp-slider,  .dp-img img { height: 738px; }

        #dp-slider .dp_item:hover:not(:first-child) { cursor: pointer; }

        .site-btn {
            color: #fff;
            font-size: 18px;
            font-family: "Circular Std Medium";
            background: deeppink;
            padding: 14px 43px;
            display: inline-block;
            border-radius: 2px;
            position: relative;
            top:18px;
            text-decoration: none;
        }

        .site-btn:hover {
            text-decoration: none;
            color: #fff;
        }


        .small-container
        {
            max-width: 1080px;
            margin:auto;
            padding-left: 25px;
            padding-right: 25px;
            margin-top: 19%;
        }

        .title{
            text-align: center;
            position: relative;
            line-height: 60px;
            color: #555;
        }

        .title::after {
            content: '';
            background: orangered;
            width: 159px;
            height: 5px;
            border-radius: 14px;
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
        }
        .row{
            display: flex;
            align-items:center;
            flex-wrap: wrap;
            justify-content:space-around;
        }

        .categories .col-3{
            flex-basis: 30%;
            min-width: 250px;
            margin-bottom: 0px;

            text-align: center;
            padding: 40px 10px;
            /*    box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
            cursor: pointer;
            transition: transform 0.5s;

        }

        .categories .col-3 img
        {
            width: 214px;
            height:214px;
            margin-top: 20px;
            border-radius: 10%;
        }

        .categories .col-3:hover
        {
            transform: translateY(-10px);
        }


        .but{
            display: inline-block;
            background: #70873b;
            color: #fff;
            padding: 8px 30px;
            margin: 30px 0;
            border-radius: 60px;
            text-decoration: none;
        }
        .title {
            margin: 1em 0 1.5em 11px;
            color: #343434;
            font-weight: normal;
            font-family: 'Ultra', sans-serif;   
            font-size: 36px;
            line-height: 42px;
            text-shadow: 0 2px white, 0 -1px #777;
        }



        .content {
            position: relative;
            width: 90%;
            max-width: 400px;
            margin: auto;
            overflow: hidden
        }

        .content .content-overlay {
            background: rgba(0, 0, 0, 0.7);
            position: absolute;
            height: 99%;
            width: 100%;
            left: 0;
            top: 0;
            bottom: 0;
            right: 0;
            opacity: 0;
            -webkit-transition: all 0.4s ease-in-out 0s;
            -moz-transition: all 0.4s ease-in-out 0s;
            transition: all 0.4s ease-in-out 0s
        }

        .content:hover .content-overlay {
            opacity: 1
        }

        .content-image {
            width: 100%;
            height: 170px;
        }

        img {
            box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
            border-radius: 5px
        }

        .content-details {
            position: absolute;
            text-align: center;
            padding-left: 1em;
            padding-right: 1em;
            width: 100%;
            top: 50%;
            left: 50%;
            opacity: 0;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            -webkit-transition: all 0.3s ease-in-out 0s;
            -moz-transition: all 0.3s ease-in-out 0s;
            transition: all 0.3s ease-in-out 0s
        }

        .content:hover .content-details {
            top: 50%;
            left: 50%;
            opacity: 1
        }

        .content-details h3 {
            color: #fff;
            font-weight: 500;
            letter-spacing: 0.15em;
            margin-bottom: 0.5em;
            text-transform: uppercase
        }

        .content-details p {
            color: #fff;
            font-size: 0.8em
        }

        .fadeIn-bottom {
            top: 80%
        }

        .wrapper {
            position: absolute;
            top: 30px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            margin: auto;
            width: 450px;
            height: 150px;
            overflow: hidden;
            margin-top: 82%;
            box-shadow: 0 0 0 15px rgba(0,0,0,.25),
                0 3px 15px rgba(100,100,100,.9),
                0 5px 15px 15px rgba(0,0,0,.25);
            border-radius: 40px;
        }

        .wrapper:before {
            content: "";
            display: block;
            position: absolute;
            z-index: 2;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            box-shadow: 0 10px 20px rgba(0,0,0,.8) inset;
            border-radius: 35px;
        }


        .categories .text {
            position: absolute;
            z-index: 3;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
            width: 280px;
            height: 4rem;
            background: #333;
            box-shadow: 0 10px 20px rgba(0,0,0,.8) inset,
                0 0 0 10px rgba(40,40,40,1);
            border-radius: 15px;
            text-align: center;
            text-shadow: 0 2px 10px rgba(0,0,0,.8);
            font: 2em/4rem Lobster, Georgia, cursive;
            color: #FFF;
        }
         a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}


        .box1 {
            position: relative;
            float: left;
            width: 150px;
            height: 150px;
            overflow: hidden;
        }

        .box1:nth-child(1) .dot {
            -webkit-animation-delay: -1.2s;
            animation-delay: -1.2s;
        }
        .box1:nth-child(2) .dot {
            -webkit-animation-delay: -1.7s;
            animation-delay: -1.7s;
        }
        .dot {
            display: block;
            position: absolute;
            width: 10px;
            height: 10px;
            top: -10px;
            left: -10px;
            -webkit-animation: 5s shadows linear infinite;
            animation: 5s shadows linear infinite;
            box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #3FB8AF, 10px 20px 0 0 #3FB8AF, 10px 30px 0 0 #3FB8AF, 10px 40px 0 0 #3FB8AF, 10px 50px 0 0 #3FB8AF, 10px 60px 0 0 #3FB8AF, 10px 70px 0 0 #3FB8AF, 10px 80px 0 0 #3FB8AF, 10px 90px 0 0 #3FB8AF, 10px 100px 0 0 #3FB8AF, 10px 110px 0 0 #3FB8AF, 10px 120px 0 0 #3FB8AF, 10px 130px 0 0 #3FB8AF, 10px 140px 0 0 #3FB8AF, 10px 150px 0 0 #3FB8AF, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #FF3D7F, 20px 20px 0 0 #FF3D7F, 20px 30px 0 0 #FF3D7F, 20px 40px 0 0 #FF3D7F, 20px 50px 0 0 #FF3D7F, 20px 60px 0 0 #FF3D7F, 20px 70px 0 0 #FF3D7F, 20px 80px 0 0 #FF3D7F, 20px 90px 0 0 #FF3D7F, 20px 100px 0 0 #FF3D7F, 20px 110px 0 0 #FF3D7F, 20px 120px 0 0 #FF3D7F, 20px 130px 0 0 #FF3D7F, 20px 140px 0 0 #FF3D7F, 20px 150px 0 0 #FF3D7F, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #FF974F, 30px 20px 0 0 #FF974F, 30px 30px 0 0 #FF974F, 30px 40px 0 0 #FF974F, 30px 50px 0 0 #FF974F, 30px 60px 0 0 #FF974F, 30px 70px 0 0 #FF974F, 30px 80px 0 0 #FF974F, 30px 90px 0 0 #FF974F, 30px 100px 0 0 #FF974F, 30px 110px 0 0 #FF974F, 30px 120px 0 0 #FF974F, 30px 130px 0 0 #FF974F, 30px 140px 0 0 #FF974F, 30px 150px 0 0 #FF974F, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #D1DBBD, 40px 20px 0 0 #D1DBBD, 40px 30px 0 0 #D1DBBD, 40px 40px 0 0 #D1DBBD, 40px 50px 0 0 #D1DBBD, 40px 60px 0 0 #D1DBBD, 40px 70px 0 0 #D1DBBD, 40px 80px 0 0 #D1DBBD, 40px 90px 0 0 #D1DBBD, 40px 100px 0 0 #D1DBBD, 40px 110px 0 0 #D1DBBD, 40px 120px 0 0 #D1DBBD, 40px 130px 0 0 #D1DBBD, 40px 140px 0 0 #D1DBBD, 40px 150px 0 0 #D1DBBD, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #04756F, 50px 20px 0 0 #04756F, 50px 30px 0 0 #04756F, 50px 40px 0 0 #04756F, 50px 50px 0 0 #04756F, 50px 60px 0 0 #04756F, 50px 70px 0 0 #04756F, 50px 80px 0 0 #04756F, 50px 90px 0 0 #04756F, 50px 100px 0 0 #04756F, 50px 110px 0 0 #04756F, 50px 120px 0 0 #04756F, 50px 130px 0 0 #04756F, 50px 140px 0 0 #04756F, 50px 150px 0 0 #04756F, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #FF2D00, 60px 20px 0 0 #FF2D00, 60px 30px 0 0 #FF2D00, 60px 40px 0 0 #FF2D00, 60px 50px 0 0 #FF2D00, 60px 60px 0 0 #FF2D00, 60px 70px 0 0 #FF2D00, 60px 80px 0 0 #FF2D00, 60px 90px 0 0 #FF2D00, 60px 100px 0 0 #FF2D00, 60px 110px 0 0 #FF2D00, 60px 120px 0 0 #FF2D00, 60px 130px 0 0 #FF2D00, 60px 140px 0 0 #FF2D00, 60px 150px 0 0 #FF2D00, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #B5E655, 70px 20px 0 0 #B5E655, 70px 30px 0 0 #B5E655, 70px 40px 0 0 #B5E655, 70px 50px 0 0 #B5E655, 70px 60px 0 0 #B5E655, 70px 70px 0 0 #B5E655, 70px 80px 0 0 #B5E655, 70px 90px 0 0 #B5E655, 70px 100px 0 0 #B5E655, 70px 110px 0 0 #B5E655, 70px 120px 0 0 #B5E655, 70px 130px 0 0 #B5E655, 70px 140px 0 0 #B5E655, 70px 150px 0 0 #B5E655, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #7FC6BC, 80px 20px 0 0 #7FC6BC, 80px 30px 0 0 #7FC6BC, 80px 40px 0 0 #7FC6BC, 80px 50px 0 0 #7FC6BC, 80px 60px 0 0 #7FC6BC, 80px 70px 0 0 #7FC6BC, 80px 80px 0 0 #7FC6BC, 80px 90px 0 0 #7FC6BC, 80px 100px 0 0 #7FC6BC, 80px 110px 0 0 #7FC6BC, 80px 120px 0 0 #7FC6BC, 80px 130px 0 0 #7FC6BC, 80px 140px 0 0 #7FC6BC, 80px 150px 0 0 #7FC6BC, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #FFE11A, 90px 20px 0 0 #FFE11A, 90px 30px 0 0 #FFE11A, 90px 40px 0 0 #FFE11A, 90px 50px 0 0 #FFE11A, 90px 60px 0 0 #FFE11A, 90px 70px 0 0 #FFE11A, 90px 80px 0 0 #FFE11A, 90px 90px 0 0 #FFE11A, 90px 100px 0 0 #FFE11A, 90px 110px 0 0 #FFE11A, 90px 120px 0 0 #FFE11A, 90px 130px 0 0 #FFE11A, 90px 140px 0 0 #FFE11A, 90px 150px 0 0 #FFE11A, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #1F8A70, 100px 20px 0 0 #1F8A70, 100px 30px 0 0 #1F8A70, 100px 40px 0 0 #1F8A70, 100px 50px 0 0 #1F8A70, 100px 60px 0 0 #1F8A70, 100px 70px 0 0 #1F8A70, 100px 80px 0 0 #1F8A70, 100px 90px 0 0 #1F8A70, 100px 100px 0 0 #1F8A70, 100px 110px 0 0 #1F8A70, 100px 120px 0 0 #1F8A70, 100px 130px 0 0 #1F8A70, 100px 140px 0 0 #1F8A70, 100px 150px 0 0 #1F8A70, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #FD7400, 110px 20px 0 0 #FD7400, 110px 30px 0 0 #FD7400, 110px 40px 0 0 #FD7400, 110px 50px 0 0 #FD7400, 110px 60px 0 0 #FD7400, 110px 70px 0 0 #FD7400, 110px 80px 0 0 #FD7400, 110px 90px 0 0 #FD7400, 110px 100px 0 0 #FD7400, 110px 110px 0 0 #FD7400, 110px 120px 0 0 #FD7400, 110px 130px 0 0 #FD7400, 110px 140px 0 0 #FD7400, 110px 150px 0 0 #FD7400, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #004358, 120px 20px 0 0 #004358, 120px 30px 0 0 #004358, 120px 40px 0 0 #004358, 120px 50px 0 0 #004358, 120px 60px 0 0 #004358, 120px 70px 0 0 #004358, 120px 80px 0 0 #004358, 120px 90px 0 0 #004358, 120px 100px 0 0 #004358, 120px 110px 0 0 #004358, 120px 120px 0 0 #004358, 120px 130px 0 0 #004358, 120px 140px 0 0 #004358, 120px 150px 0 0 #004358, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #FFF0A5, 130px 20px 0 0 #FFF0A5, 130px 30px 0 0 #FFF0A5, 130px 40px 0 0 #FFF0A5, 130px 50px 0 0 #FFF0A5, 130px 60px 0 0 #FFF0A5, 130px 70px 0 0 #FFF0A5, 130px 80px 0 0 #FFF0A5, 130px 90px 0 0 #FFF0A5, 130px 100px 0 0 #FFF0A5, 130px 110px 0 0 #FFF0A5, 130px 120px 0 0 #FFF0A5, 130px 130px 0 0 #FFF0A5, 130px 140px 0 0 #FFF0A5, 130px 150px 0 0 #FFF0A5, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FFB03B, 140px 20px 0 0 #FFB03B, 140px 30px 0 0 #FFB03B, 140px 40px 0 0 #FFB03B, 140px 50px 0 0 #FFB03B, 140px 60px 0 0 #FFB03B, 140px 70px 0 0 #FFB03B, 140px 80px 0 0 #FFB03B, 140px 90px 0 0 #FFB03B, 140px 100px 0 0 #FFB03B, 140px 110px 0 0 #FFB03B, 140px 120px 0 0 #FFB03B, 140px 130px 0 0 #FFB03B, 140px 140px 0 0 #FFB03B, 140px 150px 0 0 #FFB03B, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #468966, 150px 20px 0 0 #468966, 150px 30px 0 0 #468966, 150px 40px 0 0 #468966, 150px 50px 0 0 #468966, 150px 60px 0 0 #468966, 150px 70px 0 0 #468966, 150px 80px 0 0 #468966, 150px 90px 0 0 #468966, 150px 100px 0 0 #468966, 150px 110px 0 0 #468966, 150px 120px 0 0 #468966, 150px 130px 0 0 #468966, 150px 140px 0 0 #468966, 150px 150px 0 0 #468966;
        }

        /* Keyframes */

        @-webkit-keyframes shadows {
            0% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #3FB8AF, 10px 20px 0 0 #3FB8AF, 10px 30px 0 0 #3FB8AF, 10px 40px 0 0 #3FB8AF, 10px 50px 0 0 #3FB8AF, 10px 60px 0 0 #3FB8AF, 10px 70px 0 0 #3FB8AF, 10px 80px 0 0 #3FB8AF, 10px 90px 0 0 #3FB8AF, 10px 100px 0 0 #3FB8AF, 10px 110px 0 0 #3FB8AF, 10px 120px 0 0 #3FB8AF, 10px 130px 0 0 #3FB8AF, 10px 140px 0 0 #3FB8AF, 10px 150px 0 0 #3FB8AF, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #FF3D7F, 20px 20px 0 0 #FF3D7F, 20px 30px 0 0 #FF3D7F, 20px 40px 0 0 #FF3D7F, 20px 50px 0 0 #FF3D7F, 20px 60px 0 0 #FF3D7F, 20px 70px 0 0 #FF3D7F, 20px 80px 0 0 #FF3D7F, 20px 90px 0 0 #FF3D7F, 20px 100px 0 0 #FF3D7F, 20px 110px 0 0 #FF3D7F, 20px 120px 0 0 #FF3D7F, 20px 130px 0 0 #FF3D7F, 20px 140px 0 0 #FF3D7F, 20px 150px 0 0 #FF3D7F, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #FF974F, 30px 20px 0 0 #FF974F, 30px 30px 0 0 #FF974F, 30px 40px 0 0 #FF974F, 30px 50px 0 0 #FF974F, 30px 60px 0 0 #FF974F, 30px 70px 0 0 #FF974F, 30px 80px 0 0 #FF974F, 30px 90px 0 0 #FF974F, 30px 100px 0 0 #FF974F, 30px 110px 0 0 #FF974F, 30px 120px 0 0 #FF974F, 30px 130px 0 0 #FF974F, 30px 140px 0 0 #FF974F, 30px 150px 0 0 #FF974F, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #D1DBBD, 40px 20px 0 0 #D1DBBD, 40px 30px 0 0 #D1DBBD, 40px 40px 0 0 #D1DBBD, 40px 50px 0 0 #D1DBBD, 40px 60px 0 0 #D1DBBD, 40px 70px 0 0 #D1DBBD, 40px 80px 0 0 #D1DBBD, 40px 90px 0 0 #D1DBBD, 40px 100px 0 0 #D1DBBD, 40px 110px 0 0 #D1DBBD, 40px 120px 0 0 #D1DBBD, 40px 130px 0 0 #D1DBBD, 40px 140px 0 0 #D1DBBD, 40px 150px 0 0 #D1DBBD, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #04756F, 50px 20px 0 0 #04756F, 50px 30px 0 0 #04756F, 50px 40px 0 0 #04756F, 50px 50px 0 0 #04756F, 50px 60px 0 0 #04756F, 50px 70px 0 0 #04756F, 50px 80px 0 0 #04756F, 50px 90px 0 0 #04756F, 50px 100px 0 0 #04756F, 50px 110px 0 0 #04756F, 50px 120px 0 0 #04756F, 50px 130px 0 0 #04756F, 50px 140px 0 0 #04756F, 50px 150px 0 0 #04756F, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #FF2D00, 60px 20px 0 0 #FF2D00, 60px 30px 0 0 #FF2D00, 60px 40px 0 0 #FF2D00, 60px 50px 0 0 #FF2D00, 60px 60px 0 0 #FF2D00, 60px 70px 0 0 #FF2D00, 60px 80px 0 0 #FF2D00, 60px 90px 0 0 #FF2D00, 60px 100px 0 0 #FF2D00, 60px 110px 0 0 #FF2D00, 60px 120px 0 0 #FF2D00, 60px 130px 0 0 #FF2D00, 60px 140px 0 0 #FF2D00, 60px 150px 0 0 #FF2D00, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #B5E655, 70px 20px 0 0 #B5E655, 70px 30px 0 0 #B5E655, 70px 40px 0 0 #B5E655, 70px 50px 0 0 #B5E655, 70px 60px 0 0 #B5E655, 70px 70px 0 0 #B5E655, 70px 80px 0 0 #B5E655, 70px 90px 0 0 #B5E655, 70px 100px 0 0 #B5E655, 70px 110px 0 0 #B5E655, 70px 120px 0 0 #B5E655, 70px 130px 0 0 #B5E655, 70px 140px 0 0 #B5E655, 70px 150px 0 0 #B5E655, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #7FC6BC, 80px 20px 0 0 #7FC6BC, 80px 30px 0 0 #7FC6BC, 80px 40px 0 0 #7FC6BC, 80px 50px 0 0 #7FC6BC, 80px 60px 0 0 #7FC6BC, 80px 70px 0 0 #7FC6BC, 80px 80px 0 0 #7FC6BC, 80px 90px 0 0 #7FC6BC, 80px 100px 0 0 #7FC6BC, 80px 110px 0 0 #7FC6BC, 80px 120px 0 0 #7FC6BC, 80px 130px 0 0 #7FC6BC, 80px 140px 0 0 #7FC6BC, 80px 150px 0 0 #7FC6BC, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #FFE11A, 90px 20px 0 0 #FFE11A, 90px 30px 0 0 #FFE11A, 90px 40px 0 0 #FFE11A, 90px 50px 0 0 #FFE11A, 90px 60px 0 0 #FFE11A, 90px 70px 0 0 #FFE11A, 90px 80px 0 0 #FFE11A, 90px 90px 0 0 #FFE11A, 90px 100px 0 0 #FFE11A, 90px 110px 0 0 #FFE11A, 90px 120px 0 0 #FFE11A, 90px 130px 0 0 #FFE11A, 90px 140px 0 0 #FFE11A, 90px 150px 0 0 #FFE11A, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #1F8A70, 100px 20px 0 0 #1F8A70, 100px 30px 0 0 #1F8A70, 100px 40px 0 0 #1F8A70, 100px 50px 0 0 #1F8A70, 100px 60px 0 0 #1F8A70, 100px 70px 0 0 #1F8A70, 100px 80px 0 0 #1F8A70, 100px 90px 0 0 #1F8A70, 100px 100px 0 0 #1F8A70, 100px 110px 0 0 #1F8A70, 100px 120px 0 0 #1F8A70, 100px 130px 0 0 #1F8A70, 100px 140px 0 0 #1F8A70, 100px 150px 0 0 #1F8A70, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #FD7400, 110px 20px 0 0 #FD7400, 110px 30px 0 0 #FD7400, 110px 40px 0 0 #FD7400, 110px 50px 0 0 #FD7400, 110px 60px 0 0 #FD7400, 110px 70px 0 0 #FD7400, 110px 80px 0 0 #FD7400, 110px 90px 0 0 #FD7400, 110px 100px 0 0 #FD7400, 110px 110px 0 0 #FD7400, 110px 120px 0 0 #FD7400, 110px 130px 0 0 #FD7400, 110px 140px 0 0 #FD7400, 110px 150px 0 0 #FD7400, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #004358, 120px 20px 0 0 #004358, 120px 30px 0 0 #004358, 120px 40px 0 0 #004358, 120px 50px 0 0 #004358, 120px 60px 0 0 #004358, 120px 70px 0 0 #004358, 120px 80px 0 0 #004358, 120px 90px 0 0 #004358, 120px 100px 0 0 #004358, 120px 110px 0 0 #004358, 120px 120px 0 0 #004358, 120px 130px 0 0 #004358, 120px 140px 0 0 #004358, 120px 150px 0 0 #004358, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #FFF0A5, 130px 20px 0 0 #FFF0A5, 130px 30px 0 0 #FFF0A5, 130px 40px 0 0 #FFF0A5, 130px 50px 0 0 #FFF0A5, 130px 60px 0 0 #FFF0A5, 130px 70px 0 0 #FFF0A5, 130px 80px 0 0 #FFF0A5, 130px 90px 0 0 #FFF0A5, 130px 100px 0 0 #FFF0A5, 130px 110px 0 0 #FFF0A5, 130px 120px 0 0 #FFF0A5, 130px 130px 0 0 #FFF0A5, 130px 140px 0 0 #FFF0A5, 130px 150px 0 0 #FFF0A5, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FFB03B, 140px 20px 0 0 #FFB03B, 140px 30px 0 0 #FFB03B, 140px 40px 0 0 #FFB03B, 140px 50px 0 0 #FFB03B, 140px 60px 0 0 #FFB03B, 140px 70px 0 0 #FFB03B, 140px 80px 0 0 #FFB03B, 140px 90px 0 0 #FFB03B, 140px 100px 0 0 #FFB03B, 140px 110px 0 0 #FFB03B, 140px 120px 0 0 #FFB03B, 140px 130px 0 0 #FFB03B, 140px 140px 0 0 #FFB03B, 140px 150px 0 0 #FFB03B, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #468966, 150px 20px 0 0 #468966, 150px 30px 0 0 #468966, 150px 40px 0 0 #468966, 150px 50px 0 0 #468966, 150px 60px 0 0 #468966, 150px 70px 0 0 #468966, 150px 80px 0 0 #468966, 150px 90px 0 0 #468966, 150px 100px 0 0 #468966, 150px 110px 0 0 #468966, 150px 120px 0 0 #468966, 150px 130px 0 0 #468966, 150px 140px 0 0 #468966, 150px 150px 0 0 #468966;}
            33.333% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #D90000, 10px 20px 0 0 #D90000, 10px 30px 0 0 #D90000, 10px 40px 0 0 #D90000, 10px 50px 0 0 #D90000, 10px 60px 0 0 #D90000, 10px 70px 0 0 #D90000, 10px 80px 0 0 #D90000, 10px 90px 0 0 #D90000, 10px 100px 0 0 #D90000, 10px 110px 0 0 #D90000, 10px 120px 0 0 #D90000, 10px 130px 0 0 #D90000, 10px 140px 0 0 #D90000, 10px 150px 0 0 #D90000, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #FFB03B, 20px 20px 0 0 #FFB03B, 20px 30px 0 0 #FFB03B, 20px 40px 0 0 #FFB03B, 20px 50px 0 0 #FFB03B, 20px 60px 0 0 #FFB03B, 20px 70px 0 0 #FFB03B, 20px 80px 0 0 #FFB03B, 20px 90px 0 0 #FFB03B, 20px 100px 0 0 #FFB03B, 20px 110px 0 0 #FFB03B, 20px 120px 0 0 #FFB03B, 20px 130px 0 0 #FFB03B, 20px 140px 0 0 #FFB03B, 20px 150px 0 0 #FFB03B, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #D1DBBD, 30px 20px 0 0 #D1DBBD, 30px 30px 0 0 #D1DBBD, 30px 40px 0 0 #D1DBBD, 30px 50px 0 0 #D1DBBD, 30px 60px 0 0 #D1DBBD, 30px 70px 0 0 #D1DBBD, 30px 80px 0 0 #D1DBBD, 30px 90px 0 0 #D1DBBD, 30px 100px 0 0 #D1DBBD, 30px 110px 0 0 #D1DBBD, 30px 120px 0 0 #D1DBBD, 30px 130px 0 0 #D1DBBD, 30px 140px 0 0 #D1DBBD, 30px 150px 0 0 #D1DBBD, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #04756F, 40px 20px 0 0 #04756F, 40px 30px 0 0 #04756F, 40px 40px 0 0 #04756F, 40px 50px 0 0 #04756F, 40px 60px 0 0 #04756F, 40px 70px 0 0 #04756F, 40px 80px 0 0 #04756F, 40px 90px 0 0 #04756F, 40px 100px 0 0 #04756F, 40px 110px 0 0 #04756F, 40px 120px 0 0 #04756F, 40px 130px 0 0 #04756F, 40px 140px 0 0 #04756F, 40px 150px 0 0 #04756F, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #FFF0A5, 50px 20px 0 0 #FFF0A5, 50px 30px 0 0 #FFF0A5, 50px 40px 0 0 #FFF0A5, 50px 50px 0 0 #FFF0A5, 50px 60px 0 0 #FFF0A5, 50px 70px 0 0 #FFF0A5, 50px 80px 0 0 #FFF0A5, 50px 90px 0 0 #FFF0A5, 50px 100px 0 0 #FFF0A5, 50px 110px 0 0 #FFF0A5, 50px 120px 0 0 #FFF0A5, 50px 130px 0 0 #FFF0A5, 50px 140px 0 0 #FFF0A5, 50px 150px 0 0 #FFF0A5, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #96CA2D, 60px 20px 0 0 #96CA2D, 60px 30px 0 0 #96CA2D, 60px 40px 0 0 #96CA2D, 60px 50px 0 0 #96CA2D, 60px 60px 0 0 #96CA2D, 60px 70px 0 0 #96CA2D, 60px 80px 0 0 #96CA2D, 60px 90px 0 0 #96CA2D, 60px 100px 0 0 #96CA2D, 60px 110px 0 0 #96CA2D, 60px 120px 0 0 #96CA2D, 60px 130px 0 0 #96CA2D, 60px 140px 0 0 #96CA2D, 60px 150px 0 0 #96CA2D, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #7FC6BC, 70px 20px 0 0 #7FC6BC, 70px 30px 0 0 #7FC6BC, 70px 40px 0 0 #7FC6BC, 70px 50px 0 0 #7FC6BC, 70px 60px 0 0 #7FC6BC, 70px 70px 0 0 #7FC6BC, 70px 80px 0 0 #7FC6BC, 70px 90px 0 0 #7FC6BC, 70px 100px 0 0 #7FC6BC, 70px 110px 0 0 #7FC6BC, 70px 120px 0 0 #7FC6BC, 70px 130px 0 0 #7FC6BC, 70px 140px 0 0 #7FC6BC, 70px 150px 0 0 #7FC6BC, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #FF3D7F, 80px 20px 0 0 #FF3D7F, 80px 30px 0 0 #FF3D7F, 80px 40px 0 0 #FF3D7F, 80px 50px 0 0 #FF3D7F, 80px 60px 0 0 #FF3D7F, 80px 70px 0 0 #FF3D7F, 80px 80px 0 0 #FF3D7F, 80px 90px 0 0 #FF3D7F, 80px 100px 0 0 #FF3D7F, 80px 110px 0 0 #FF3D7F, 80px 120px 0 0 #FF3D7F, 80px 130px 0 0 #FF3D7F, 80px 140px 0 0 #FF3D7F, 80px 150px 0 0 #FF3D7F, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #F77A52, 90px 20px 0 0 #F77A52, 90px 30px 0 0 #F77A52, 90px 40px 0 0 #F77A52, 90px 50px 0 0 #F77A52, 90px 60px 0 0 #F77A52, 90px 70px 0 0 #F77A52, 90px 80px 0 0 #F77A52, 90px 90px 0 0 #F77A52, 90px 100px 0 0 #F77A52, 90px 110px 0 0 #F77A52, 90px 120px 0 0 #F77A52, 90px 130px 0 0 #F77A52, 90px 140px 0 0 #F77A52, 90px 150px 0 0 #F77A52, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #FFE11A, 100px 20px 0 0 #FFE11A, 100px 30px 0 0 #FFE11A, 100px 40px 0 0 #FFE11A, 100px 50px 0 0 #FFE11A, 100px 60px 0 0 #FFE11A, 100px 70px 0 0 #FFE11A, 100px 80px 0 0 #FFE11A, 100px 90px 0 0 #FFE11A, 100px 100px 0 0 #FFE11A, 100px 110px 0 0 #FFE11A, 100px 120px 0 0 #FFE11A, 100px 130px 0 0 #FFE11A, 100px 140px 0 0 #FFE11A, 100px 150px 0 0 #FFE11A, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #1F8A70, 110px 20px 0 0 #1F8A70, 110px 30px 0 0 #1F8A70, 110px 40px 0 0 #1F8A70, 110px 50px 0 0 #1F8A70, 110px 60px 0 0 #1F8A70, 110px 70px 0 0 #1F8A70, 110px 80px 0 0 #1F8A70, 110px 90px 0 0 #1F8A70, 110px 100px 0 0 #1F8A70, 110px 110px 0 0 #1F8A70, 110px 120px 0 0 #1F8A70, 110px 130px 0 0 #1F8A70, 110px 140px 0 0 #1F8A70, 110px 150px 0 0 #1F8A70, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #7FC7AF, 120px 20px 0 0 #7FC7AF, 120px 30px 0 0 #7FC7AF, 120px 40px 0 0 #7FC7AF, 120px 50px 0 0 #7FC7AF, 120px 60px 0 0 #7FC7AF, 120px 70px 0 0 #7FC7AF, 120px 80px 0 0 #7FC7AF, 120px 90px 0 0 #7FC7AF, 120px 100px 0 0 #7FC7AF, 120px 110px 0 0 #7FC7AF, 120px 120px 0 0 #7FC7AF, 120px 130px 0 0 #7FC7AF, 120px 140px 0 0 #7FC7AF, 120px 150px 0 0 #7FC7AF, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #91AA9D, 130px 20px 0 0 #91AA9D, 130px 30px 0 0 #91AA9D, 130px 40px 0 0 #91AA9D, 130px 50px 0 0 #91AA9D, 130px 60px 0 0 #91AA9D, 130px 70px 0 0 #91AA9D, 130px 80px 0 0 #91AA9D, 130px 90px 0 0 #91AA9D, 130px 100px 0 0 #91AA9D, 130px 110px 0 0 #91AA9D, 130px 120px 0 0 #91AA9D, 130px 130px 0 0 #91AA9D, 130px 140px 0 0 #91AA9D, 130px 150px 0 0 #91AA9D, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FF2D00, 140px 20px 0 0 #FF2D00, 140px 30px 0 0 #FF2D00, 140px 40px 0 0 #FF2D00, 140px 50px 0 0 #FF2D00, 140px 60px 0 0 #FF2D00, 140px 70px 0 0 #FF2D00, 140px 80px 0 0 #FF2D00, 140px 90px 0 0 #FF2D00, 140px 100px 0 0 #FF2D00, 140px 110px 0 0 #FF2D00, 140px 120px 0 0 #FF2D00, 140px 130px 0 0 #FF2D00, 140px 140px 0 0 #FF2D00, 140px 150px 0 0 #FF2D00, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #FF974F, 150px 20px 0 0 #FF974F, 150px 30px 0 0 #FF974F, 150px 40px 0 0 #FF974F, 150px 50px 0 0 #FF974F, 150px 60px 0 0 #FF974F, 150px 70px 0 0 #FF974F, 150px 80px 0 0 #FF974F, 150px 90px 0 0 #FF974F, 150px 100px 0 0 #FF974F, 150px 110px 0 0 #FF974F, 150px 120px 0 0 #FF974F, 150px 130px 0 0 #FF974F, 150px 140px 0 0 #FF974F, 150px 150px 0 0 #FF974F;}
            66.666% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #004358, 10px 20px 0 0 #004358, 10px 30px 0 0 #004358, 10px 40px 0 0 #004358, 10px 50px 0 0 #004358, 10px 60px 0 0 #004358, 10px 70px 0 0 #004358, 10px 80px 0 0 #004358, 10px 90px 0 0 #004358, 10px 100px 0 0 #004358, 10px 110px 0 0 #004358, 10px 120px 0 0 #004358, 10px 130px 0 0 #004358, 10px 140px 0 0 #004358, 10px 150px 0 0 #004358, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #7FC7AF, 20px 20px 0 0 #7FC7AF, 20px 30px 0 0 #7FC7AF, 20px 40px 0 0 #7FC7AF, 20px 50px 0 0 #7FC7AF, 20px 60px 0 0 #7FC7AF, 20px 70px 0 0 #7FC7AF, 20px 80px 0 0 #7FC7AF, 20px 90px 0 0 #7FC7AF, 20px 100px 0 0 #7FC7AF, 20px 110px 0 0 #7FC7AF, 20px 120px 0 0 #7FC7AF, 20px 130px 0 0 #7FC7AF, 20px 140px 0 0 #7FC7AF, 20px 150px 0 0 #7FC7AF, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #F77A52, 30px 20px 0 0 #F77A52, 30px 30px 0 0 #F77A52, 30px 40px 0 0 #F77A52, 30px 50px 0 0 #F77A52, 30px 60px 0 0 #F77A52, 30px 70px 0 0 #F77A52, 30px 80px 0 0 #F77A52, 30px 90px 0 0 #F77A52, 30px 100px 0 0 #F77A52, 30px 110px 0 0 #F77A52, 30px 120px 0 0 #F77A52, 30px 130px 0 0 #F77A52, 30px 140px 0 0 #F77A52, 30px 150px 0 0 #F77A52, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #BEDB39, 40px 20px 0 0 #BEDB39, 40px 30px 0 0 #BEDB39, 40px 40px 0 0 #BEDB39, 40px 50px 0 0 #BEDB39, 40px 60px 0 0 #BEDB39, 40px 70px 0 0 #BEDB39, 40px 80px 0 0 #BEDB39, 40px 90px 0 0 #BEDB39, 40px 100px 0 0 #BEDB39, 40px 110px 0 0 #BEDB39, 40px 120px 0 0 #BEDB39, 40px 130px 0 0 #BEDB39, 40px 140px 0 0 #BEDB39, 40px 150px 0 0 #BEDB39, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #FF3D7F, 50px 20px 0 0 #FF3D7F, 50px 30px 0 0 #FF3D7F, 50px 40px 0 0 #FF3D7F, 50px 50px 0 0 #FF3D7F, 50px 60px 0 0 #FF3D7F, 50px 70px 0 0 #FF3D7F, 50px 80px 0 0 #FF3D7F, 50px 90px 0 0 #FF3D7F, 50px 100px 0 0 #FF3D7F, 50px 110px 0 0 #FF3D7F, 50px 120px 0 0 #FF3D7F, 50px 130px 0 0 #FF3D7F, 50px 140px 0 0 #FF3D7F, 50px 150px 0 0 #FF3D7F, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #3FB8AF, 60px 20px 0 0 #3FB8AF, 60px 30px 0 0 #3FB8AF, 60px 40px 0 0 #3FB8AF, 60px 50px 0 0 #3FB8AF, 60px 60px 0 0 #3FB8AF, 60px 70px 0 0 #3FB8AF, 60px 80px 0 0 #3FB8AF, 60px 90px 0 0 #3FB8AF, 60px 100px 0 0 #3FB8AF, 60px 110px 0 0 #3FB8AF, 60px 120px 0 0 #3FB8AF, 60px 130px 0 0 #3FB8AF, 60px 140px 0 0 #3FB8AF, 60px 150px 0 0 #3FB8AF, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #FFB03B, 70px 20px 0 0 #FFB03B, 70px 30px 0 0 #FFB03B, 70px 40px 0 0 #FFB03B, 70px 50px 0 0 #FFB03B, 70px 60px 0 0 #FFB03B, 70px 70px 0 0 #FFB03B, 70px 80px 0 0 #FFB03B, 70px 90px 0 0 #FFB03B, 70px 100px 0 0 #FFB03B, 70px 110px 0 0 #FFB03B, 70px 120px 0 0 #FFB03B, 70px 130px 0 0 #FFB03B, 70px 140px 0 0 #FFB03B, 70px 150px 0 0 #FFB03B, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #1F8A70, 80px 20px 0 0 #1F8A70, 80px 30px 0 0 #1F8A70, 80px 40px 0 0 #1F8A70, 80px 50px 0 0 #1F8A70, 80px 60px 0 0 #1F8A70, 80px 70px 0 0 #1F8A70, 80px 80px 0 0 #1F8A70, 80px 90px 0 0 #1F8A70, 80px 100px 0 0 #1F8A70, 80px 110px 0 0 #1F8A70, 80px 120px 0 0 #1F8A70, 80px 130px 0 0 #1F8A70, 80px 140px 0 0 #1F8A70, 80px 150px 0 0 #1F8A70, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #96CA2D, 90px 20px 0 0 #96CA2D, 90px 30px 0 0 #96CA2D, 90px 40px 0 0 #96CA2D, 90px 50px 0 0 #96CA2D, 90px 60px 0 0 #96CA2D, 90px 70px 0 0 #96CA2D, 90px 80px 0 0 #96CA2D, 90px 90px 0 0 #96CA2D, 90px 100px 0 0 #96CA2D, 90px 110px 0 0 #96CA2D, 90px 120px 0 0 #96CA2D, 90px 130px 0 0 #96CA2D, 90px 140px 0 0 #96CA2D, 90px 150px 0 0 #96CA2D, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #FF2D00, 100px 20px 0 0 #FF2D00, 100px 30px 0 0 #FF2D00, 100px 40px 0 0 #FF2D00, 100px 50px 0 0 #FF2D00, 100px 60px 0 0 #FF2D00, 100px 70px 0 0 #FF2D00, 100px 80px 0 0 #FF2D00, 100px 90px 0 0 #FF2D00, 100px 100px 0 0 #FF2D00, 100px 110px 0 0 #FF2D00, 100px 120px 0 0 #FF2D00, 100px 130px 0 0 #FF2D00, 100px 140px 0 0 #FF2D00, 100px 150px 0 0 #FF2D00, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #FFF0A5, 110px 20px 0 0 #FFF0A5, 110px 30px 0 0 #FFF0A5, 110px 40px 0 0 #FFF0A5, 110px 50px 0 0 #FFF0A5, 110px 60px 0 0 #FFF0A5, 110px 70px 0 0 #FFF0A5, 110px 80px 0 0 #FFF0A5, 110px 90px 0 0 #FFF0A5, 110px 100px 0 0 #FFF0A5, 110px 110px 0 0 #FFF0A5, 110px 120px 0 0 #FFF0A5, 110px 130px 0 0 #FFF0A5, 110px 140px 0 0 #FFF0A5, 110px 150px 0 0 #FFF0A5, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #FD7400, 120px 20px 0 0 #FD7400, 120px 30px 0 0 #FD7400, 120px 40px 0 0 #FD7400, 120px 50px 0 0 #FD7400, 120px 60px 0 0 #FD7400, 120px 70px 0 0 #FD7400, 120px 80px 0 0 #FD7400, 120px 90px 0 0 #FD7400, 120px 100px 0 0 #FD7400, 120px 110px 0 0 #FD7400, 120px 120px 0 0 #FD7400, 120px 130px 0 0 #FD7400, 120px 140px 0 0 #FD7400, 120px 150px 0 0 #FD7400, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #468966, 130px 20px 0 0 #468966, 130px 30px 0 0 #468966, 130px 40px 0 0 #468966, 130px 50px 0 0 #468966, 130px 60px 0 0 #468966, 130px 70px 0 0 #468966, 130px 80px 0 0 #468966, 130px 90px 0 0 #468966, 130px 100px 0 0 #468966, 130px 110px 0 0 #468966, 130px 120px 0 0 #468966, 130px 130px 0 0 #468966, 130px 140px 0 0 #468966, 130px 150px 0 0 #468966, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FFE11A, 140px 20px 0 0 #FFE11A, 140px 30px 0 0 #FFE11A, 140px 40px 0 0 #FFE11A, 140px 50px 0 0 #FFE11A, 140px 60px 0 0 #FFE11A, 140px 70px 0 0 #FFE11A, 140px 80px 0 0 #FFE11A, 140px 90px 0 0 #FFE11A, 140px 100px 0 0 #FFE11A, 140px 110px 0 0 #FFE11A, 140px 120px 0 0 #FFE11A, 140px 130px 0 0 #FFE11A, 140px 140px 0 0 #FFE11A, 140px 150px 0 0 #FFE11A, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #DAD8A7, 150px 20px 0 0 #DAD8A7, 150px 30px 0 0 #DAD8A7, 150px 40px 0 0 #DAD8A7, 150px 50px 0 0 #DAD8A7, 150px 60px 0 0 #DAD8A7, 150px 70px 0 0 #DAD8A7, 150px 80px 0 0 #DAD8A7, 150px 90px 0 0 #DAD8A7, 150px 100px 0 0 #DAD8A7, 150px 110px 0 0 #DAD8A7, 150px 120px 0 0 #DAD8A7, 150px 130px 0 0 #DAD8A7, 150px 140px 0 0 #DAD8A7, 150px 150px 0 0 #DAD8A7;}

        }
        @keyframes shadows {
            0% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #3FB8AF, 10px 20px 0 0 #3FB8AF, 10px 30px 0 0 #3FB8AF, 10px 40px 0 0 #3FB8AF, 10px 50px 0 0 #3FB8AF, 10px 60px 0 0 #3FB8AF, 10px 70px 0 0 #3FB8AF, 10px 80px 0 0 #3FB8AF, 10px 90px 0 0 #3FB8AF, 10px 100px 0 0 #3FB8AF, 10px 110px 0 0 #3FB8AF, 10px 120px 0 0 #3FB8AF, 10px 130px 0 0 #3FB8AF, 10px 140px 0 0 #3FB8AF, 10px 150px 0 0 #3FB8AF, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #FF3D7F, 20px 20px 0 0 #FF3D7F, 20px 30px 0 0 #FF3D7F, 20px 40px 0 0 #FF3D7F, 20px 50px 0 0 #FF3D7F, 20px 60px 0 0 #FF3D7F, 20px 70px 0 0 #FF3D7F, 20px 80px 0 0 #FF3D7F, 20px 90px 0 0 #FF3D7F, 20px 100px 0 0 #FF3D7F, 20px 110px 0 0 #FF3D7F, 20px 120px 0 0 #FF3D7F, 20px 130px 0 0 #FF3D7F, 20px 140px 0 0 #FF3D7F, 20px 150px 0 0 #FF3D7F, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #FF974F, 30px 20px 0 0 #FF974F, 30px 30px 0 0 #FF974F, 30px 40px 0 0 #FF974F, 30px 50px 0 0 #FF974F, 30px 60px 0 0 #FF974F, 30px 70px 0 0 #FF974F, 30px 80px 0 0 #FF974F, 30px 90px 0 0 #FF974F, 30px 100px 0 0 #FF974F, 30px 110px 0 0 #FF974F, 30px 120px 0 0 #FF974F, 30px 130px 0 0 #FF974F, 30px 140px 0 0 #FF974F, 30px 150px 0 0 #FF974F, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #D1DBBD, 40px 20px 0 0 #D1DBBD, 40px 30px 0 0 #D1DBBD, 40px 40px 0 0 #D1DBBD, 40px 50px 0 0 #D1DBBD, 40px 60px 0 0 #D1DBBD, 40px 70px 0 0 #D1DBBD, 40px 80px 0 0 #D1DBBD, 40px 90px 0 0 #D1DBBD, 40px 100px 0 0 #D1DBBD, 40px 110px 0 0 #D1DBBD, 40px 120px 0 0 #D1DBBD, 40px 130px 0 0 #D1DBBD, 40px 140px 0 0 #D1DBBD, 40px 150px 0 0 #D1DBBD, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #04756F, 50px 20px 0 0 #04756F, 50px 30px 0 0 #04756F, 50px 40px 0 0 #04756F, 50px 50px 0 0 #04756F, 50px 60px 0 0 #04756F, 50px 70px 0 0 #04756F, 50px 80px 0 0 #04756F, 50px 90px 0 0 #04756F, 50px 100px 0 0 #04756F, 50px 110px 0 0 #04756F, 50px 120px 0 0 #04756F, 50px 130px 0 0 #04756F, 50px 140px 0 0 #04756F, 50px 150px 0 0 #04756F, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #FF2D00, 60px 20px 0 0 #FF2D00, 60px 30px 0 0 #FF2D00, 60px 40px 0 0 #FF2D00, 60px 50px 0 0 #FF2D00, 60px 60px 0 0 #FF2D00, 60px 70px 0 0 #FF2D00, 60px 80px 0 0 #FF2D00, 60px 90px 0 0 #FF2D00, 60px 100px 0 0 #FF2D00, 60px 110px 0 0 #FF2D00, 60px 120px 0 0 #FF2D00, 60px 130px 0 0 #FF2D00, 60px 140px 0 0 #FF2D00, 60px 150px 0 0 #FF2D00, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #B5E655, 70px 20px 0 0 #B5E655, 70px 30px 0 0 #B5E655, 70px 40px 0 0 #B5E655, 70px 50px 0 0 #B5E655, 70px 60px 0 0 #B5E655, 70px 70px 0 0 #B5E655, 70px 80px 0 0 #B5E655, 70px 90px 0 0 #B5E655, 70px 100px 0 0 #B5E655, 70px 110px 0 0 #B5E655, 70px 120px 0 0 #B5E655, 70px 130px 0 0 #B5E655, 70px 140px 0 0 #B5E655, 70px 150px 0 0 #B5E655, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #7FC6BC, 80px 20px 0 0 #7FC6BC, 80px 30px 0 0 #7FC6BC, 80px 40px 0 0 #7FC6BC, 80px 50px 0 0 #7FC6BC, 80px 60px 0 0 #7FC6BC, 80px 70px 0 0 #7FC6BC, 80px 80px 0 0 #7FC6BC, 80px 90px 0 0 #7FC6BC, 80px 100px 0 0 #7FC6BC, 80px 110px 0 0 #7FC6BC, 80px 120px 0 0 #7FC6BC, 80px 130px 0 0 #7FC6BC, 80px 140px 0 0 #7FC6BC, 80px 150px 0 0 #7FC6BC, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #FFE11A, 90px 20px 0 0 #FFE11A, 90px 30px 0 0 #FFE11A, 90px 40px 0 0 #FFE11A, 90px 50px 0 0 #FFE11A, 90px 60px 0 0 #FFE11A, 90px 70px 0 0 #FFE11A, 90px 80px 0 0 #FFE11A, 90px 90px 0 0 #FFE11A, 90px 100px 0 0 #FFE11A, 90px 110px 0 0 #FFE11A, 90px 120px 0 0 #FFE11A, 90px 130px 0 0 #FFE11A, 90px 140px 0 0 #FFE11A, 90px 150px 0 0 #FFE11A, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #1F8A70, 100px 20px 0 0 #1F8A70, 100px 30px 0 0 #1F8A70, 100px 40px 0 0 #1F8A70, 100px 50px 0 0 #1F8A70, 100px 60px 0 0 #1F8A70, 100px 70px 0 0 #1F8A70, 100px 80px 0 0 #1F8A70, 100px 90px 0 0 #1F8A70, 100px 100px 0 0 #1F8A70, 100px 110px 0 0 #1F8A70, 100px 120px 0 0 #1F8A70, 100px 130px 0 0 #1F8A70, 100px 140px 0 0 #1F8A70, 100px 150px 0 0 #1F8A70, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #FD7400, 110px 20px 0 0 #FD7400, 110px 30px 0 0 #FD7400, 110px 40px 0 0 #FD7400, 110px 50px 0 0 #FD7400, 110px 60px 0 0 #FD7400, 110px 70px 0 0 #FD7400, 110px 80px 0 0 #FD7400, 110px 90px 0 0 #FD7400, 110px 100px 0 0 #FD7400, 110px 110px 0 0 #FD7400, 110px 120px 0 0 #FD7400, 110px 130px 0 0 #FD7400, 110px 140px 0 0 #FD7400, 110px 150px 0 0 #FD7400, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #004358, 120px 20px 0 0 #004358, 120px 30px 0 0 #004358, 120px 40px 0 0 #004358, 120px 50px 0 0 #004358, 120px 60px 0 0 #004358, 120px 70px 0 0 #004358, 120px 80px 0 0 #004358, 120px 90px 0 0 #004358, 120px 100px 0 0 #004358, 120px 110px 0 0 #004358, 120px 120px 0 0 #004358, 120px 130px 0 0 #004358, 120px 140px 0 0 #004358, 120px 150px 0 0 #004358, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #FFF0A5, 130px 20px 0 0 #FFF0A5, 130px 30px 0 0 #FFF0A5, 130px 40px 0 0 #FFF0A5, 130px 50px 0 0 #FFF0A5, 130px 60px 0 0 #FFF0A5, 130px 70px 0 0 #FFF0A5, 130px 80px 0 0 #FFF0A5, 130px 90px 0 0 #FFF0A5, 130px 100px 0 0 #FFF0A5, 130px 110px 0 0 #FFF0A5, 130px 120px 0 0 #FFF0A5, 130px 130px 0 0 #FFF0A5, 130px 140px 0 0 #FFF0A5, 130px 150px 0 0 #FFF0A5, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FFB03B, 140px 20px 0 0 #FFB03B, 140px 30px 0 0 #FFB03B, 140px 40px 0 0 #FFB03B, 140px 50px 0 0 #FFB03B, 140px 60px 0 0 #FFB03B, 140px 70px 0 0 #FFB03B, 140px 80px 0 0 #FFB03B, 140px 90px 0 0 #FFB03B, 140px 100px 0 0 #FFB03B, 140px 110px 0 0 #FFB03B, 140px 120px 0 0 #FFB03B, 140px 130px 0 0 #FFB03B, 140px 140px 0 0 #FFB03B, 140px 150px 0 0 #FFB03B, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #468966, 150px 20px 0 0 #468966, 150px 30px 0 0 #468966, 150px 40px 0 0 #468966, 150px 50px 0 0 #468966, 150px 60px 0 0 #468966, 150px 70px 0 0 #468966, 150px 80px 0 0 #468966, 150px 90px 0 0 #468966, 150px 100px 0 0 #468966, 150px 110px 0 0 #468966, 150px 120px 0 0 #468966, 150px 130px 0 0 #468966, 150px 140px 0 0 #468966, 150px 150px 0 0 #468966;}
            33.333% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #D90000, 10px 20px 0 0 #D90000, 10px 30px 0 0 #D90000, 10px 40px 0 0 #D90000, 10px 50px 0 0 #D90000, 10px 60px 0 0 #D90000, 10px 70px 0 0 #D90000, 10px 80px 0 0 #D90000, 10px 90px 0 0 #D90000, 10px 100px 0 0 #D90000, 10px 110px 0 0 #D90000, 10px 120px 0 0 #D90000, 10px 130px 0 0 #D90000, 10px 140px 0 0 #D90000, 10px 150px 0 0 #D90000, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #FFB03B, 20px 20px 0 0 #FFB03B, 20px 30px 0 0 #FFB03B, 20px 40px 0 0 #FFB03B, 20px 50px 0 0 #FFB03B, 20px 60px 0 0 #FFB03B, 20px 70px 0 0 #FFB03B, 20px 80px 0 0 #FFB03B, 20px 90px 0 0 #FFB03B, 20px 100px 0 0 #FFB03B, 20px 110px 0 0 #FFB03B, 20px 120px 0 0 #FFB03B, 20px 130px 0 0 #FFB03B, 20px 140px 0 0 #FFB03B, 20px 150px 0 0 #FFB03B, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #D1DBBD, 30px 20px 0 0 #D1DBBD, 30px 30px 0 0 #D1DBBD, 30px 40px 0 0 #D1DBBD, 30px 50px 0 0 #D1DBBD, 30px 60px 0 0 #D1DBBD, 30px 70px 0 0 #D1DBBD, 30px 80px 0 0 #D1DBBD, 30px 90px 0 0 #D1DBBD, 30px 100px 0 0 #D1DBBD, 30px 110px 0 0 #D1DBBD, 30px 120px 0 0 #D1DBBD, 30px 130px 0 0 #D1DBBD, 30px 140px 0 0 #D1DBBD, 30px 150px 0 0 #D1DBBD, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #04756F, 40px 20px 0 0 #04756F, 40px 30px 0 0 #04756F, 40px 40px 0 0 #04756F, 40px 50px 0 0 #04756F, 40px 60px 0 0 #04756F, 40px 70px 0 0 #04756F, 40px 80px 0 0 #04756F, 40px 90px 0 0 #04756F, 40px 100px 0 0 #04756F, 40px 110px 0 0 #04756F, 40px 120px 0 0 #04756F, 40px 130px 0 0 #04756F, 40px 140px 0 0 #04756F, 40px 150px 0 0 #04756F, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #FFF0A5, 50px 20px 0 0 #FFF0A5, 50px 30px 0 0 #FFF0A5, 50px 40px 0 0 #FFF0A5, 50px 50px 0 0 #FFF0A5, 50px 60px 0 0 #FFF0A5, 50px 70px 0 0 #FFF0A5, 50px 80px 0 0 #FFF0A5, 50px 90px 0 0 #FFF0A5, 50px 100px 0 0 #FFF0A5, 50px 110px 0 0 #FFF0A5, 50px 120px 0 0 #FFF0A5, 50px 130px 0 0 #FFF0A5, 50px 140px 0 0 #FFF0A5, 50px 150px 0 0 #FFF0A5, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #96CA2D, 60px 20px 0 0 #96CA2D, 60px 30px 0 0 #96CA2D, 60px 40px 0 0 #96CA2D, 60px 50px 0 0 #96CA2D, 60px 60px 0 0 #96CA2D, 60px 70px 0 0 #96CA2D, 60px 80px 0 0 #96CA2D, 60px 90px 0 0 #96CA2D, 60px 100px 0 0 #96CA2D, 60px 110px 0 0 #96CA2D, 60px 120px 0 0 #96CA2D, 60px 130px 0 0 #96CA2D, 60px 140px 0 0 #96CA2D, 60px 150px 0 0 #96CA2D, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #7FC6BC, 70px 20px 0 0 #7FC6BC, 70px 30px 0 0 #7FC6BC, 70px 40px 0 0 #7FC6BC, 70px 50px 0 0 #7FC6BC, 70px 60px 0 0 #7FC6BC, 70px 70px 0 0 #7FC6BC, 70px 80px 0 0 #7FC6BC, 70px 90px 0 0 #7FC6BC, 70px 100px 0 0 #7FC6BC, 70px 110px 0 0 #7FC6BC, 70px 120px 0 0 #7FC6BC, 70px 130px 0 0 #7FC6BC, 70px 140px 0 0 #7FC6BC, 70px 150px 0 0 #7FC6BC, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #FF3D7F, 80px 20px 0 0 #FF3D7F, 80px 30px 0 0 #FF3D7F, 80px 40px 0 0 #FF3D7F, 80px 50px 0 0 #FF3D7F, 80px 60px 0 0 #FF3D7F, 80px 70px 0 0 #FF3D7F, 80px 80px 0 0 #FF3D7F, 80px 90px 0 0 #FF3D7F, 80px 100px 0 0 #FF3D7F, 80px 110px 0 0 #FF3D7F, 80px 120px 0 0 #FF3D7F, 80px 130px 0 0 #FF3D7F, 80px 140px 0 0 #FF3D7F, 80px 150px 0 0 #FF3D7F, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #F77A52, 90px 20px 0 0 #F77A52, 90px 30px 0 0 #F77A52, 90px 40px 0 0 #F77A52, 90px 50px 0 0 #F77A52, 90px 60px 0 0 #F77A52, 90px 70px 0 0 #F77A52, 90px 80px 0 0 #F77A52, 90px 90px 0 0 #F77A52, 90px 100px 0 0 #F77A52, 90px 110px 0 0 #F77A52, 90px 120px 0 0 #F77A52, 90px 130px 0 0 #F77A52, 90px 140px 0 0 #F77A52, 90px 150px 0 0 #F77A52, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #FFE11A, 100px 20px 0 0 #FFE11A, 100px 30px 0 0 #FFE11A, 100px 40px 0 0 #FFE11A, 100px 50px 0 0 #FFE11A, 100px 60px 0 0 #FFE11A, 100px 70px 0 0 #FFE11A, 100px 80px 0 0 #FFE11A, 100px 90px 0 0 #FFE11A, 100px 100px 0 0 #FFE11A, 100px 110px 0 0 #FFE11A, 100px 120px 0 0 #FFE11A, 100px 130px 0 0 #FFE11A, 100px 140px 0 0 #FFE11A, 100px 150px 0 0 #FFE11A, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #1F8A70, 110px 20px 0 0 #1F8A70, 110px 30px 0 0 #1F8A70, 110px 40px 0 0 #1F8A70, 110px 50px 0 0 #1F8A70, 110px 60px 0 0 #1F8A70, 110px 70px 0 0 #1F8A70, 110px 80px 0 0 #1F8A70, 110px 90px 0 0 #1F8A70, 110px 100px 0 0 #1F8A70, 110px 110px 0 0 #1F8A70, 110px 120px 0 0 #1F8A70, 110px 130px 0 0 #1F8A70, 110px 140px 0 0 #1F8A70, 110px 150px 0 0 #1F8A70, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #7FC7AF, 120px 20px 0 0 #7FC7AF, 120px 30px 0 0 #7FC7AF, 120px 40px 0 0 #7FC7AF, 120px 50px 0 0 #7FC7AF, 120px 60px 0 0 #7FC7AF, 120px 70px 0 0 #7FC7AF, 120px 80px 0 0 #7FC7AF, 120px 90px 0 0 #7FC7AF, 120px 100px 0 0 #7FC7AF, 120px 110px 0 0 #7FC7AF, 120px 120px 0 0 #7FC7AF, 120px 130px 0 0 #7FC7AF, 120px 140px 0 0 #7FC7AF, 120px 150px 0 0 #7FC7AF, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #91AA9D, 130px 20px 0 0 #91AA9D, 130px 30px 0 0 #91AA9D, 130px 40px 0 0 #91AA9D, 130px 50px 0 0 #91AA9D, 130px 60px 0 0 #91AA9D, 130px 70px 0 0 #91AA9D, 130px 80px 0 0 #91AA9D, 130px 90px 0 0 #91AA9D, 130px 100px 0 0 #91AA9D, 130px 110px 0 0 #91AA9D, 130px 120px 0 0 #91AA9D, 130px 130px 0 0 #91AA9D, 130px 140px 0 0 #91AA9D, 130px 150px 0 0 #91AA9D, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FF2D00, 140px 20px 0 0 #FF2D00, 140px 30px 0 0 #FF2D00, 140px 40px 0 0 #FF2D00, 140px 50px 0 0 #FF2D00, 140px 60px 0 0 #FF2D00, 140px 70px 0 0 #FF2D00, 140px 80px 0 0 #FF2D00, 140px 90px 0 0 #FF2D00, 140px 100px 0 0 #FF2D00, 140px 110px 0 0 #FF2D00, 140px 120px 0 0 #FF2D00, 140px 130px 0 0 #FF2D00, 140px 140px 0 0 #FF2D00, 140px 150px 0 0 #FF2D00, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #FF974F, 150px 20px 0 0 #FF974F, 150px 30px 0 0 #FF974F, 150px 40px 0 0 #FF974F, 150px 50px 0 0 #FF974F, 150px 60px 0 0 #FF974F, 150px 70px 0 0 #FF974F, 150px 80px 0 0 #FF974F, 150px 90px 0 0 #FF974F, 150px 100px 0 0 #FF974F, 150px 110px 0 0 #FF974F, 150px 120px 0 0 #FF974F, 150px 130px 0 0 #FF974F, 150px 140px 0 0 #FF974F, 150px 150px 0 0 #FF974F;}
            66.666% {box-shadow: 0px 0px 0 0 rgba(255,255,255,0), 0px 10px 0 0 rgba(255,255,255,0), 0px 20px 0 0 rgba(255,255,255,0), 0px 30px 0 0 rgba(255,255,255,0), 0px 40px 0 0 rgba(255,255,255,0), 0px 50px 0 0 rgba(255,255,255,0), 0px 60px 0 0 rgba(255,255,255,0), 0px 70px 0 0 rgba(255,255,255,0), 0px 80px 0 0 rgba(255,255,255,0), 0px 90px 0 0 rgba(255,255,255,0), 0px 100px 0 0 rgba(255,255,255,0), 0px 110px 0 0 rgba(255,255,255,0), 0px 120px 0 0 rgba(255,255,255,0), 0px 130px 0 0 rgba(255,255,255,0), 0px 140px 0 0 rgba(255,255,255,0), 0px 150px 0 0 rgba(255,255,255,0), 10px 0px 0 0 rgba(255,255,255,0), 10px 10px 0 0 #004358, 10px 20px 0 0 #004358, 10px 30px 0 0 #004358, 10px 40px 0 0 #004358, 10px 50px 0 0 #004358, 10px 60px 0 0 #004358, 10px 70px 0 0 #004358, 10px 80px 0 0 #004358, 10px 90px 0 0 #004358, 10px 100px 0 0 #004358, 10px 110px 0 0 #004358, 10px 120px 0 0 #004358, 10px 130px 0 0 #004358, 10px 140px 0 0 #004358, 10px 150px 0 0 #004358, 20px 0px 0 0 rgba(255,255,255,0), 20px 10px 0 0 #7FC7AF, 20px 20px 0 0 #7FC7AF, 20px 30px 0 0 #7FC7AF, 20px 40px 0 0 #7FC7AF, 20px 50px 0 0 #7FC7AF, 20px 60px 0 0 #7FC7AF, 20px 70px 0 0 #7FC7AF, 20px 80px 0 0 #7FC7AF, 20px 90px 0 0 #7FC7AF, 20px 100px 0 0 #7FC7AF, 20px 110px 0 0 #7FC7AF, 20px 120px 0 0 #7FC7AF, 20px 130px 0 0 #7FC7AF, 20px 140px 0 0 #7FC7AF, 20px 150px 0 0 #7FC7AF, 30px 0px 0 0 rgba(255,255,255,0), 30px 10px 0 0 #F77A52, 30px 20px 0 0 #F77A52, 30px 30px 0 0 #F77A52, 30px 40px 0 0 #F77A52, 30px 50px 0 0 #F77A52, 30px 60px 0 0 #F77A52, 30px 70px 0 0 #F77A52, 30px 80px 0 0 #F77A52, 30px 90px 0 0 #F77A52, 30px 100px 0 0 #F77A52, 30px 110px 0 0 #F77A52, 30px 120px 0 0 #F77A52, 30px 130px 0 0 #F77A52, 30px 140px 0 0 #F77A52, 30px 150px 0 0 #F77A52, 40px 0px 0 0 rgba(255,255,255,0), 40px 10px 0 0 #BEDB39, 40px 20px 0 0 #BEDB39, 40px 30px 0 0 #BEDB39, 40px 40px 0 0 #BEDB39, 40px 50px 0 0 #BEDB39, 40px 60px 0 0 #BEDB39, 40px 70px 0 0 #BEDB39, 40px 80px 0 0 #BEDB39, 40px 90px 0 0 #BEDB39, 40px 100px 0 0 #BEDB39, 40px 110px 0 0 #BEDB39, 40px 120px 0 0 #BEDB39, 40px 130px 0 0 #BEDB39, 40px 140px 0 0 #BEDB39, 40px 150px 0 0 #BEDB39, 50px 0px 0 0 rgba(255,255,255,0), 50px 10px 0 0 #FF3D7F, 50px 20px 0 0 #FF3D7F, 50px 30px 0 0 #FF3D7F, 50px 40px 0 0 #FF3D7F, 50px 50px 0 0 #FF3D7F, 50px 60px 0 0 #FF3D7F, 50px 70px 0 0 #FF3D7F, 50px 80px 0 0 #FF3D7F, 50px 90px 0 0 #FF3D7F, 50px 100px 0 0 #FF3D7F, 50px 110px 0 0 #FF3D7F, 50px 120px 0 0 #FF3D7F, 50px 130px 0 0 #FF3D7F, 50px 140px 0 0 #FF3D7F, 50px 150px 0 0 #FF3D7F, 60px 0px 0 0 rgba(255,255,255,0), 60px 10px 0 0 #3FB8AF, 60px 20px 0 0 #3FB8AF, 60px 30px 0 0 #3FB8AF, 60px 40px 0 0 #3FB8AF, 60px 50px 0 0 #3FB8AF, 60px 60px 0 0 #3FB8AF, 60px 70px 0 0 #3FB8AF, 60px 80px 0 0 #3FB8AF, 60px 90px 0 0 #3FB8AF, 60px 100px 0 0 #3FB8AF, 60px 110px 0 0 #3FB8AF, 60px 120px 0 0 #3FB8AF, 60px 130px 0 0 #3FB8AF, 60px 140px 0 0 #3FB8AF, 60px 150px 0 0 #3FB8AF, 70px 0px 0 0 rgba(255,255,255,0), 70px 10px 0 0 #FFB03B, 70px 20px 0 0 #FFB03B, 70px 30px 0 0 #FFB03B, 70px 40px 0 0 #FFB03B, 70px 50px 0 0 #FFB03B, 70px 60px 0 0 #FFB03B, 70px 70px 0 0 #FFB03B, 70px 80px 0 0 #FFB03B, 70px 90px 0 0 #FFB03B, 70px 100px 0 0 #FFB03B, 70px 110px 0 0 #FFB03B, 70px 120px 0 0 #FFB03B, 70px 130px 0 0 #FFB03B, 70px 140px 0 0 #FFB03B, 70px 150px 0 0 #FFB03B, 80px 0px 0 0 rgba(255,255,255,0), 80px 10px 0 0 #1F8A70, 80px 20px 0 0 #1F8A70, 80px 30px 0 0 #1F8A70, 80px 40px 0 0 #1F8A70, 80px 50px 0 0 #1F8A70, 80px 60px 0 0 #1F8A70, 80px 70px 0 0 #1F8A70, 80px 80px 0 0 #1F8A70, 80px 90px 0 0 #1F8A70, 80px 100px 0 0 #1F8A70, 80px 110px 0 0 #1F8A70, 80px 120px 0 0 #1F8A70, 80px 130px 0 0 #1F8A70, 80px 140px 0 0 #1F8A70, 80px 150px 0 0 #1F8A70, 90px 0px 0 0 rgba(255,255,255,0), 90px 10px 0 0 #96CA2D, 90px 20px 0 0 #96CA2D, 90px 30px 0 0 #96CA2D, 90px 40px 0 0 #96CA2D, 90px 50px 0 0 #96CA2D, 90px 60px 0 0 #96CA2D, 90px 70px 0 0 #96CA2D, 90px 80px 0 0 #96CA2D, 90px 90px 0 0 #96CA2D, 90px 100px 0 0 #96CA2D, 90px 110px 0 0 #96CA2D, 90px 120px 0 0 #96CA2D, 90px 130px 0 0 #96CA2D, 90px 140px 0 0 #96CA2D, 90px 150px 0 0 #96CA2D, 100px 0px 0 0 rgba(255,255,255,0), 100px 10px 0 0 #FF2D00, 100px 20px 0 0 #FF2D00, 100px 30px 0 0 #FF2D00, 100px 40px 0 0 #FF2D00, 100px 50px 0 0 #FF2D00, 100px 60px 0 0 #FF2D00, 100px 70px 0 0 #FF2D00, 100px 80px 0 0 #FF2D00, 100px 90px 0 0 #FF2D00, 100px 100px 0 0 #FF2D00, 100px 110px 0 0 #FF2D00, 100px 120px 0 0 #FF2D00, 100px 130px 0 0 #FF2D00, 100px 140px 0 0 #FF2D00, 100px 150px 0 0 #FF2D00, 110px 0px 0 0 rgba(255,255,255,0), 110px 10px 0 0 #FFF0A5, 110px 20px 0 0 #FFF0A5, 110px 30px 0 0 #FFF0A5, 110px 40px 0 0 #FFF0A5, 110px 50px 0 0 #FFF0A5, 110px 60px 0 0 #FFF0A5, 110px 70px 0 0 #FFF0A5, 110px 80px 0 0 #FFF0A5, 110px 90px 0 0 #FFF0A5, 110px 100px 0 0 #FFF0A5, 110px 110px 0 0 #FFF0A5, 110px 120px 0 0 #FFF0A5, 110px 130px 0 0 #FFF0A5, 110px 140px 0 0 #FFF0A5, 110px 150px 0 0 #FFF0A5, 120px 0px 0 0 rgba(255,255,255,0), 120px 10px 0 0 #FD7400, 120px 20px 0 0 #FD7400, 120px 30px 0 0 #FD7400, 120px 40px 0 0 #FD7400, 120px 50px 0 0 #FD7400, 120px 60px 0 0 #FD7400, 120px 70px 0 0 #FD7400, 120px 80px 0 0 #FD7400, 120px 90px 0 0 #FD7400, 120px 100px 0 0 #FD7400, 120px 110px 0 0 #FD7400, 120px 120px 0 0 #FD7400, 120px 130px 0 0 #FD7400, 120px 140px 0 0 #FD7400, 120px 150px 0 0 #FD7400, 130px 0px 0 0 rgba(255,255,255,0), 130px 10px 0 0 #468966, 130px 20px 0 0 #468966, 130px 30px 0 0 #468966, 130px 40px 0 0 #468966, 130px 50px 0 0 #468966, 130px 60px 0 0 #468966, 130px 70px 0 0 #468966, 130px 80px 0 0 #468966, 130px 90px 0 0 #468966, 130px 100px 0 0 #468966, 130px 110px 0 0 #468966, 130px 120px 0 0 #468966, 130px 130px 0 0 #468966, 130px 140px 0 0 #468966, 130px 150px 0 0 #468966, 140px 0px 0 0 rgba(255,255,255,0), 140px 10px 0 0 #FFE11A, 140px 20px 0 0 #FFE11A, 140px 30px 0 0 #FFE11A, 140px 40px 0 0 #FFE11A, 140px 50px 0 0 #FFE11A, 140px 60px 0 0 #FFE11A, 140px 70px 0 0 #FFE11A, 140px 80px 0 0 #FFE11A, 140px 90px 0 0 #FFE11A, 140px 100px 0 0 #FFE11A, 140px 110px 0 0 #FFE11A, 140px 120px 0 0 #FFE11A, 140px 130px 0 0 #FFE11A, 140px 140px 0 0 #FFE11A, 140px 150px 0 0 #FFE11A, 150px 0px 0 0 rgba(255,255,255,0), 150px 10px 0 0 #DAD8A7, 150px 20px 0 0 #DAD8A7, 150px 30px 0 0 #DAD8A7, 150px 40px 0 0 #DAD8A7, 150px 50px 0 0 #DAD8A7, 150px 60px 0 0 #DAD8A7, 150px 70px 0 0 #DAD8A7, 150px 80px 0 0 #DAD8A7, 150px 90px 0 0 #DAD8A7, 150px 100px 0 0 #DAD8A7, 150px 110px 0 0 #DAD8A7, 150px 120px 0 0 #DAD8A7, 150px 130px 0 0 #DAD8A7, 150px 140px 0 0 #DAD8A7, 150px 150px 0 0 #DAD8A7;}

        }

.carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 100%;
            margin: auto;

            height: 600px;
        }
        </style>
    <body>
        <%@include file="header1.jsp"%>
    <center>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <div>
            <h1>Welcome To Grocery Bazaar</h1>
        </div>

    </center>

    <div class="container">
        <br>


<div id="myCarousel" class="carousel slide" style="width: 115%;
    margin-left: -6%;" data-ride="carousel">
            <!-- Indicators -->


            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                <div class="item">
                    <img src="images/RC.jpg" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Rice</h3>
                        <p>Rice is great if you're really hungry and want to eat two thousand of something. ...</p>
                    </div>
                </div>

                <div class="item active">
                    <img src="images/big.jpeg" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Grocery Bazaar</h3>
                        <p>Visit us for better products </p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/Spices.jpeg" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Spices</h3>
                        <p>Buy spices in bulk online and you'll rarely have to run to the grocery store! We have everything from sausage making supplies to soup and stew basics</p>
                    </div>
                </div>
                <div class="item">
                    <img src="images/GS.png" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Grains</h3>
                        <p>In the world of whole grains, you can argue this is the original star.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/VS.jpg" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Vegetables</h3>
                        <p>"If there is one vegetable which is God-given, it is the haricot bean." </p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/FS.jpg" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h3>Fruits</h3>
                        <p>Patience is bitter, but its fruit is sweet.</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>

    <br>
    <br>
<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <section class="banner-container" style="margin-top:-117px;">

        <div class="banner">
            <img src="images/banner-1.jpg" alt="">
            <div class="content">
                <h2>Always stocked <br>
                    for your needs.</h2>
            </div>
        </div>

        <div class="banner">
            <img src="images/banner-2.jpg" alt="">
            <div class="content">
                <h2>A place where <br>
                    everything special</h2>


            </div>
        </div>

    </section>
    <br>
 


    <div class="categories">

        <div class="small-container">
            <div class="wrapper">
                <div class='box1'><span class='dot'></span></div>
                <div class='box1'><span class='dot'></span></div>
                <div class='box1'><span class='dot'></span></div>
                <a href="category.jsp"><div class="text">Categories</div></a>
            </div>
            <br><br><br><br>

            <div class="row">  
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Fruits">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/Fruits_1.jpg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Fruits</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Vegetables">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/VEGETABLES.jpg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Vegetables</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a  href="category.jsp?category=Oils">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/OILS.jpeg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Organic Edible Oil</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Grains">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/FG.jpg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Food Grains</h3>

                                    </div>
                                </a> </div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Beverages">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/BEV.jpeg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Beverages</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=House">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/HO.png">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">House<br>holds</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Snacks" >
                                    <div class="content-overlay"></div> <img class="content-image" src="images/Snack.jpeg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Snacks & Branded foods</h3>

                                    </div>
                                </a> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content"> <a href="category.jsp?category=Staples">
                                    <div class="content-overlay"></div> <img class="content-image" src="images/Stap.jpg">
                                    <div class="content-details fadeIn-bottom">
                                        <h3 class="content-title">Organic Staples</h3>

                                    </div>
                                </a> </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        jQuery(document).ready(function () {

            function detect_active() {
                // get active
                var get_active = $("#dp-slider .dp_item:first-child").data("class");
                $("#dp-dots li").removeClass("active");
                $("#dp-dots li[data-class=" + get_active + "]").addClass("active");
            }
            $("#dp-next").click(function () {
                var total = $(".dp_item").length;
                $("#dp-slider .dp_item:first-child").hide().appendTo("#dp-slider").fadeIn();
                $.each($('.dp_item'), function (index, dp_item) {
                    $(dp_item).attr('data-position', index + 1);
                });
                detect_active();

            });

            $("#dp-prev").click(function () {
                var total = $(".dp_item").length;
                $("#dp-slider .dp_item:last-child").hide().prependTo("#dp-slider").fadeIn();
                $.each($('.dp_item'), function (index, dp_item) {
                    $(dp_item).attr('data-position', index + 1);
                });

                detect_active();
            });

            $("#dp-dots li").click(function () {
                $("#dp-dots li").removeClass("active");
                $(this).addClass("active");
                var get_slide = $(this).attr('data-class');
                console.log(get_slide);
                $("#dp-slider .dp_item[data-class=" + get_slide + "]").hide().prependTo("#dp-slider").fadeIn();
                $.each($('.dp_item'), function (index, dp_item) {
                    $(dp_item).attr('data-position', index + 1);
                });
            });


            $("body").on("click", "#dp-slider .dp_item:not(:first-child)", function () {
                var get_slide = $(this).attr('data-class');
                console.log(get_slide);
                $("#dp-slider .dp_item[data-class=" + get_slide + "]").hide().prependTo("#dp-slider").fadeIn();
                $.each($('.dp_item'), function (index, dp_item) {
                    $(dp_item).attr('data-position', index + 1);
                });

                detect_active();
            });
        });
    </script>
    <br>
    <br>
    <br>
    <br><br>
    <br><br>
    <br>
    <%@include file="footer.jsp"%>
</body>
</html>