<%-- 
    Document   : LibrarianLogin
    Created on : 04-Sep-2022, 12:22:58 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Librarian Login</title>
        <link href="LibLoginstyle.css" rel="stylesheet">
        <script>
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
            function validateForm(){
                var email = document.form.email.value;
                var password = document.form.password.value;
                if (email==null || email==""){  
                    alert("Email can't be blank");  
                    return false;  
                  }
                  else if(!email.match(mailformat)){
                      alert("Enter valid email");
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
            <form name="form" action="LibrarianLogin" method="post"  onsubmit = "return validateForm()">
            <h3 class="head">Librarian Login</h3>
            <div class="email">
            <label for ="email">Email Address</label>
            <input type="text" id="email" placeholder="Enter email id" name="email" class="emailText"><br>
            </div>

            <div class="password">
            <label for="password">Password</label>
            <input type="password" id="password" placeholder="Enter password" name="password" class="passText"><br/>
             </div>

            <div class="submit">
            <input type="submit" value="Submit" class="btn">
            </div>
            </form>
            <p class="errmssg">${successMssg}</p>
        </div>
        </div>
        <div class="svg1"><img src="Library.svg"/></div>
        <div class="svg2"><img src="Online-Library.svg"/></div>
    </body>
</html>
