<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
        	background-image: url('./images/img5.jpeg');
			background-size: cover;
            background-color: #344a72;
        }
        .signup_box{
            width: 360px;
            height: 620px;
            margin: auto;
            background-color: white;
            border-radius: 3px;
        }
        h1{
            text-align: center;
            padding-top: 15px;
        }
       form{
        width: 300px;
        margin-left: 20px;
       }
       form label{
        display: flex;
        margin-top: 20px;
        font-size: 18px;
       }
       form input{
        width: 200px;
        padding: 7px;
        border: none;
        border: 1px solid gray;
        border-radius: 6px;
        outline: none;
    }
   
    p{
        text-align: center;
        padding-top: 20px;
        font-size: 15px;
    }
    .p2{
        text-align: center;
        color: white;
        font-size: 15px;
        margin-top: -10px;
    }
    .p2 a{
        color: skyblue;
    }
    #button{
    width: 320px;
        height: 35px;
        margin-top: 20px;
        border: none;
        background-color:skyblue;
        color: white;
        font-size: 18px;
    }
    #button:hover{
    cursor: pointer;
        background-color: blue;
    }
    </style>
</head>
<body>
    <div class="signup_box">
    <h1>Sign Up</h1>
    <form action="signup" method="post" >
        <label>First Name</label>
        <input type="text" name="fname" placeholder="First Name">
        <label>Last Name</label>
        <input type="text" name="lname" placeholder="Last Name">
        <label>Email ID</label>
        <input type="text" name="email" placeholder="Email">
        <label>Contact</label>
        <input type="number" name="contact" placeholder="Phone Number">
        <label>Password</label>
        <input type="password" name="pword" placeholder="Password">
       <label>Confirm Password</label>
        <input type="password" name="pword" placeholder="Confirm Password">
        <input type="submit" id="button">
    </form>
    <p>By Clicking the Submit button,you agree to our<br>
    <a href="#">Terms and Conditions</a>and <a href="#">policy Privacy</a>
    </p>
</div>
    <p class="p2">Already have an account?<a href="login.jsp">Login here</a></p>
</body>
</html>