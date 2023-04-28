<%-- 
    Document   : navLibrarian
    Created on : 04-Sep-2022, 1:05:41 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Librarian Page</title>
        <link href="navlibstyle.css" rel="stylesheet">
        <link href="home2.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body>
            <header>
      
            <nav>
                    <ul class="menu">
                        <li><a href="index.html">Home</a></li>
                            <li><a href="AddBookForm.jsp">Add Book</a></li>
                            <li><a href="ViewBook.jsp">View Book</a></li>
                            <li><a href="IssueBookForm.jsp">Issue Book</a></li>
                            <li><a href="ViewIssuedBook.jsp">View Issued Book</a></li>
                            <li><a href="ReturnBookForm.jsp">Return Book</a></li>
                            <li><a href="LogoutLibrarian">Logout</a></li>
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
