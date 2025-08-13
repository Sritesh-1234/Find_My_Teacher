<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
        <title>GDSC_HACK</title>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                $("#stud").hide();
                // $("#empd").hide();
                $("#stude").on("click",function(){
                    $("#stud").show();
                    $("#empd").hide();
                    $("#emp").hide();
                    $("#empi").hide();
                    $("#empd").hide();
                });
                $("#empl").on("click",function(){
                    $("#empd").show();
                    $("#stud").hide();
                    $("#stu").hide();
                    $("#stui").hide();
                    $("#stud").hide();
                });
            });
            </script>
    <style>
    body{
        background-image: url('f3.jpg');
        background-size: cover;
        font-family: "open sans";
        color: rgba(45, 223, 232, 0.938);
    }
    section{
        position: relative;
        height: 100%;
        width: 100%;
        background-size: cover ;
        background-position: center center;
    }
    @media only screen and (min-width:600px){
        .holecontain{
            display: flex;
            /* position: initial; */
            position: absolute;
            margin-left: 570px;
        }   
    }
    
    
    .form-container{
        position: initial;
        margin-top: 50px;
        margin-bottom: 50px;
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
        width: 280px;
        padding: 50px 30px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
    
    @media only screen and (min-width:600px){
        .form-container{
            position: initial;
            margin-top: 50px;
            margin-bottom: 50px;
            background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
            width: 280px;
            padding: 50px 30px;
            border-radius: 10px;
            box-shadow: 7px 7px 60px #000;
         
    
    
        }    
    }
      
        
    }
    .form-container2{
        position: initial;
        margin-top:50px;
        margin-bottom: 50px;
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
        width: 280px;
        padding: 50px 30px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
        
       
        
    }
    h1{
        text-transform: uppercase;
        font-size: 1.5em;
        text-align: center;
        margin-bottom: 1em;
    
    }
    h2{
        text-transform: uppercase;
        font-size: 1.5em;
        text-align: center;
        margin-bottom: 1em;
    
    }
    .control input{
        width: 90%;
        display: block;
        padding: 10px;
        color: rgb(32, 26, 26);
        border:none;
        outline: none;
        margin: 1em 0;
        border-radius: 10px;
        margin-right: 30px;
    
    
    }
    .control2 input{
        width: 90%;
        display: block;
        padding: 10px;
        color: rgb(32, 26, 26);
        border:none;
        outline: none;
        margin: 1em 0;
        border-radius: 10px;
        margin-right: 30px;
    }
    .control3 input{
        width: 30%;
        display: block;
        padding: 10px;
        color: rgb(32, 26, 26);
        border:none;
        outline: none;
        margin: 1em 0;
        margin-left: 187px;
        
    }
    .control3 input[type="submit"]{
        background: rgba(11, 235, 247, 0.938);
        color: white;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
    
    }
    .control3 input[type="submit"]:hover{
        opacity: 1;
    }
    
    img{
        margin-center: auto;
    }
    </style>
    
    </head>
    
    <body>
    <div style="display:flex; margin-left:35rem;margin-top:5rem;">
    <input type="radio" id="stude" name="choose" value="student" style="margin-left:100px;">
    <label for="html">Student</label>
    <input type="radio" id="empl" name="choose" value="employee" style="margin-left:30px;">
    <label for="css">Employee</label></div>
            <center><div class="holecontain" style="
                width: 50%;">
        <span><center><div class="form-container" id="stud">
            <img src="f1.png" width="70px" ></img>
            <!-- <button id="stu">
                STUDENT LOGIN
            </button> -->
            <div id="student">
                <form action="chsp" method="post">
                    <div class="control">
                        <input type="text" name="ROLL" id="name" placeholder="Enter Your Roll NO">
                    </div>
                    <div class="control2">
                        <input type="password" name="pass" id="pass" placeholder="Enter Your New Password">
                    </div>
                    <div class="control3">
                        <input type="submit" name="submit" value="change">
                </form>
                
            </div>
        </div></center></span>
        <span><center>
        <div class="form-container2" id="empd">
            <img src="f1.png" width="70px"></img>
            <!-- <button id="emp">EMPLOYEE LOGIN</button> -->
            <div id="employee">
                <form action="chtp" method="post">
                    <div class="control">
                        <input type="text" name="uid" id="name" placeholder="Enter Your ID">
                    </div>
                    <div class="control2">
                        <input type="password" name="pass" id="pass" placeholder="Enter Your New Password">
                    </div>
                    <div class="control3"> 
                        <input type="submit" name="submit" value="change">
                </form>
            </div>
        </div>
        </div></center></span></center>
    </body>
    
    </html>