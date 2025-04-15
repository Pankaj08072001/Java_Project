<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        *{
            padding: 0;
            margin: 0;
            text-decoration: none;
            list-style: none;
            box-sizing: border-box;
        }
        .nav{
            height: 80px;
            width: 100%;
        }
        label.logo{
            color: gray;
            font-size: 35px;
            line-height: 80px;
            padding: 0 100px;
            font-weight: bold;
        }

        nav ul{
            float: right;
            margin-right: 20px;
        }
        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px ;
            position: relative;
        }
        nav ul li a{
            font-size: 1.3em;
            font-weight: bold;
            color: gray;
        }
        a:hover{
            color: skyblue;
        }
        .active{
            color: skyblue;
        }
        .active:hover{
            color: gray;
        }
        .dropdown{
            display: none;
        }
        .drop:hover .dropdown{
            display: block;
            position: absolute;
            left: 0;
            top: 100%;
            background-color:white ;
            border: 1px solid black;
        }
        .dropdown ul{
            display: block;
            margin: 2px;

        }
        .dropdown ul li{
            width: 150px;
            padding: 1px;
        }
        span{
            color: skyblue;
        }
        .home{
            width: 100%;
            height: 100vh; 
             display: flex; 
             justify-content: center;
            align-items: center;
        }
        #img{
            width: 100vw;
            height: 100vh;
        }
        .content{
            position: absolute;
            /* width: 100%; */
            height: 100%;
            top: 20vh;
            left: 2vw;
            opacity: 0;
            transition: 2s;
            display: flex;
            flex-direction: column;
        }
        .content:hover{
            opacity: 1;
        }
        .content h1{
            font-size: 45px;
            color: white;
            padding-left: 3vw;
        }
        .content h4{
            color: white;
            padding-top: 2vh;
            padding-left: 8vw;
        }
        .content h3{
            color: white;
            padding-top: 2vh;
            padding-left: 8vw;
        }
        button {
            width: 20vw;
            height: 7vh;
            margin-top: 9vh;
            margin-left: 10vw;
            border-radius: 30px;
            font-size: 1.2em;
            color: skyblue;
            font-weight: bold;
        }
        button:hover{
            background-color: gray;
            color: white;
            cursor: pointer;
        }

    </style>
</head>
<body>
    <nav>
        <label class="logo">A<span>B</span>_Air<span>Lines</span></label>
                <ul>
                    <li><a  href="#">HOME</a></li>
                    <li class="drop"><a href="#">FLIGHTS <i class="fas fa-caret-down"></i></a>
                        <div class="dropdown">
                            <ul>
                                <li><a href="signup.jsp">Buy Ticket</a></li>
                                <li><a href="login.jsp">View Ticket</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a class="active" href="#">Call Us: 012-266272</a></li>
                </ul>
    </nav>
    <div class="home">
        <div class="bgimage">
            <img id="img" src="images/backgrund.jpg" alt="">
            <div class="content">
                <h1>BOOKING SUPER CHEAP PLANE TICKET</h1>
                <h4>With AT_AirLines 24/7 Available Ticket </h4>
                <h3># Economy Class seat is very comfortable</h3>
                <h3># No Need To Advanced Booking</h3>
                <h3># Cash Back Provided on Online Ticket Booking</h3>
                <a href="signup.jsp"><button>Book Your Ticket</button></a>
            </div>
        </div>
        
    </div>
    
</body>
</html>