<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
    margin: 0;
    padding: 0;
    color: rgb(0, 0, 0);
}
body{
    width: 100vw;
    height: 100vh;
    background-image: url('./images/login.jpeg');
    background-size: cover;
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    align-content: center;
    justify-content: center;
}
.main{
    height: 60%;
    width: 50%;
    background: rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.1);
    backdrop-filter: blur(10px);
    border-radius: 30px;
    border: 1px solid  rgba(255, 255, 255, 0.1);
    box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    align-content: center;
}
.heading{
    padding: 20px;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    align-content: center;
    justify-content: center;
    font-size: 40px;
}
.group{
    padding: 4%;
    width: 600px;
    position: relative;
    padding-top: 15px;
    
}
.iid, .ipass{
    width: 100%;
    outline: 0;
    border: 0;
    border-bottom: 2px solid rgb(0, 0, 0);
    padding: 10px 0;
    background: transparent;
    font-size: 1.2em;
    border-color: rgb(0, 0, 0);
    transition: 0.3s ease;
    color: black;
}
.lid,.lpass{
    /* display: block; */
    position: absolute;
    font-size: 1em;
    text-transform: uppercase;
    transition: 0.3 ease;
}
.iid{
    margin-top: 0px;
}
.lid{
    top: 0px;
}
.ipass{
    margin-top: 35px;
}
.lpass{
    margin-top: 20px;
}
.iid::placeholder,.ipass::placeholder{
    color: transparent;
}
.ls{
    background-color: rgb(60, 109, 241);
    height: 45px;
    width: 100px;
    padding: 10px;
    margin-left: 100px;
    margin-top: 50px;
    cursor: pointer;
    font-size: 1.1em;
    border-radius: 10px;
}
.lsii{
    color: blue;
    cursor: pointer;
}
.lsi{
    padding: 10px; 
    margin-left: 100px;
}
.ls:hover{
    background-color:brown;
    font-weight: bolder;
}
</style>
</head>
<body>
    <div class="main">
        <div class="heading">Log in</div>
        <div class="group">
            <form action="login" method="post">
                <label for="id"class="lid">Enter Id</label>   
                  <input type="text" name="mid"class="iid" placeholder="Enter email" required><br>
                <label for="pass"class="lpass">Enter Password</label>
                 <input type="password" name="pword"class="ipass" placeholder="Enter Pass" required><br>
                <input type="submit" class="ls">
            </form>
        </div>
    </div>
</body>
</html>