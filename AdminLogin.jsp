<%-- 
    Document   : AdminLogin
    Created on : 18-Jun-2022, 6:29:41 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link href="login-style.css" rel="stylesheet">
        <script>
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
            function validateForm(){
                var email = document.form.email2.value;
                var password = document.form.password2.value;
                if (email==null || email==""){  
                    alert("Email can't be blank");  
                    return false;  
                  }
                  else if(!email.match(mailformat)){
                      alert("enter valid email");
                  }
            else if(password==""){  
                    alert("Password cannot be blank.");  
                    return false;  
                    }  
            }
        </script>
    </head>
    <body>
        <div><a href="index.html"><img src="icons8-home.svg" class="home"><span class="hometxt">Home</span></a></div>
       <div class="card">
           <div class="content">
            <form name="form" action="AdminLogin" method="post" onsubmit="return validateForm()">
                <h3 class="head">Admin Login</h3>
                
                <div class="email">
                    <label for ="email">Email Address</label><br>
                <input type="text" id="email" name="email2" class="emailText" autocomplete="off"><br>
                </div>
                
                <div class="password">
                <label for="password">Password</label><br>
                <input type="password" id="password" name="password2" class="passText" autocomplete="off"><br/>
                </div>

                <div class="submit"><input class="btn" type="submit" value="Submit"></div>
                 <p class="errmssg">${errormssg}</p><!--request.setAttribute("errormssg","Wrong Crendentials!Enter again") -->
             </form>
             
           </div>
       </div>
          <div class="svg1"><img src="Library.svg"/></div>
         
          <div class="svg2"><img src="Online-Library.svg"/></div>
         
    </body>
</html>
