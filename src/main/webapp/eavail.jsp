<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <title>eavail</title>
        
    </head>
    
    <body>
    
        <style>
           body{
        background-image: url('4k.jpg');
        background-size: cover;
        font-family: "open sans";
        color: rgb(21, 216, 238);
    }
    section{
        position: relative;
        height: 100%;
        width: 100%;
        
        background-size: cover ;
        background-position: center center;
    }
    
    .form-container{
        position: initial;
        margin-top: 50px;
        margin-bottom: 50px;
        background: linear-gradient(rgba(0,0,0,0.3),rgba(0, 0, 0, 0.74));
        width: 380px;
        padding: 90px 40px;
        border-radius: 10px;
        box-shadow: 7px 7px 60px #000;
    }
    
    h1{
        text-transform: uppercase;
        font-size: 2em;
        text-align: center;
        margin-bottom: 2em;
    
    }
    
    
    .control3 input[type="submit"]{
        background: rgb(13, 219, 219);
        color: #fff;
        text-transform: uppercase;
        font-size: 1.2em;
        opacity: .7;
        transition: opacity .3s ease;
        padding: 10px;
    
    
    }
    .control3 input[type="submit"]:hover{
        opacity: 1;
    }
    .open-button {
  background-color: rgb(187, 23, 23);
  color: white;
  border: none;
  opacity: 0.8;
  margin-left: 1150px;
  bottom: 23px;
  width: 150px;
  height: 50px;
  border-radius: 10px;
}
        </style>
        <form action="teawelcome.jsp">
            <button class="open-button">HOME</button></div>
        </form>
        <section>
            <center><div class="form-container">
                <h1> AVAILABLE IN CABIN</h1>
                <form action="eavailbackend" method="post">
                    <div style="display:flex ;">
                        <div class="control" style="margin-left:120px;">
                            <input type="radio" name="rdo" id="name" value="1">
                            <label for="name">YES</label>
                        </div>
                        <div class="control" style="margin-left: 10px ;">
                            <input type="radio" name="rdo" id="name" value="0">
                            <label for="name">NO</label></div>
                        </div>
                        <div class="control3 " style="margin-top:70px ;">
                            <input type="submit" name="submit" value="SUBMIT">
                        </div>
                    </div>
                </form>
            
            </center>
        </section>
    
    
    </body>
    
    </html>