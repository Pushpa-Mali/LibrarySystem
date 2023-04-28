<%-- 
    Document   : navAdmin
    Created on : 20-Jun-2022, 6:35:36 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="navadmin-style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
        <header>
      
            <nav>
                
                    <ul class="menu">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="AddLibrarian.jsp">Add Librarian</a></li>
                        <li><a href="viewLibrarian.jsp">View Librarian</a></li>
                        <li><a href="viewBookAdmin.jsp">View Book</a></li>
                        <li><a href="logoutAdmin">Logout</a></li>
                    </ul>
              
            </nav>
        </header>
            <div class="heading">
                <span>Online Library System</span>
            </div>

            <div class="about">
                <p>Allows you to manage books,librarians,students and much more...</p>
            </div>
            <div class="svgImg">
                <img src="Online-Diploma.svg"/>
            </div>

            <div class="midsvg"><img src="Online-University.svg" alt="books"/></div>
            <div id="svgImg2">
                <img src="Online-School.svg"/>
            </div>
            </div>            
    </body>
</html>
