<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .parent{
            height: 50vh;
            width: 70vw;
            background-color: blue;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: auto;
            margin-top: 25vh;
        }
        .child1{
            height: 40vh;
            width: 45vw;
            background-color: rgb(214, 211, 221);
            display: flex;
            flex-direction: column;

        }
        .child2{
            height: 40vh;
            width: 25vw;
            background-color: rgb(216, 213, 9);
            border-left: 5px dotted blue;
        }
        .fields{
            height: 100%;
            width: 80%;
            background-color: rgb(214, 211, 221);
            padding-left: 10%;
        }
        .box{
            height: 20vh;
            width: 100%;
            background-color: rgb(214, 211, 221);
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .gate{
            height: 8vh;
            width: 6rem;
            border: 1.5px solid rgb(3, 153, 172);
        }
        .gate-close{
            height: 8vh;
            width: 8rem;
            border: 1.5px solid rgb(3, 153, 172);
        }
        .seat{
            height: 8vh;
            width: 8rem;
            border: 1.5px solid rgb(3, 153, 172);
        }
        form input{
            background-color: transparent;
            border: none;
            font-size: 1.2rem;

        }
        .gate p{
            font-size: 50px;    
            margin-top: -9px; 
            margin-left: 25px;
            color: rgb(107, 109, 110);
        }
        .gate-close p{
            font-size: 50px;    
            margin-top: -9px; 
            margin-left: 5px;
            color: rgb(107, 109, 110);
        }
        #seat{
            border: none;
            background-color: transparent;
            font-size: 50px;
            margin-top: -9px; 
            margin-left: 5px;
            color: rgb(107, 109, 110);   
        }
        h1{
            font-size: 2.3em;
            color: blue;
            padding-left: 7vw;
        }
        h2{
            font-size: 2em;
            color: blue;
            padding-left: 10vw;
        }
    </style>
</head>
<body>
    <div class="parent">
        <div class="child1">
            <div class="box">
                <div class="gate">
                    <p>19</p>
                </div>
                <div class="gate-close">
                    <p>20:30</p>
                </div>
                <div class="seat">
                    <input id="seat" type="text" value="" readonly>
                </div>
            </div>
            <div class="fields">
                <form action="">
                    <table>
                        <tr>
                            <td>
                                <label for="class">
                                    class 
                                </label>
                            </td>
                            <td>
                                <label for="dsg-to">
                                    Designation TO 
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="" name="class" id="class" readonly>
                            </td>
                            <td>
                                <input type="text" value="" name="dsg-to" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="seat">
                                    Seat No 
                                </label>
                            </td>
                            <td>
                                <label for="dsg-from">
                                    Designation From 
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="" name="dsg-form" readonly>
                            </td>
                            <td>
                                <input type="text" value="" name="seat" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="tkt-id">
                                    Ticket Id 
                                </label>
                            </td>
                            <td>
                                <label for="tkt-id">
                                    Date
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" value="" name="tkt-id" readonly>
                            </td>
                            <td>
                                <input type="text" value="" name="tkt-id" readonly>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="child2">
            <h1>Welcome</h1>
            <h2>To </h2>
            <h1>AB_AirLines</h1>
        </div>

    </div>
</body>
</html>