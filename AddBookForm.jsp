<%-- 
    Document   : AddBookForm
    Created on : 04-Sep-2022, 6:51:15 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Form</title>
        <link rel="stylesheet" href="addbook.css">
        <script>
            
            function validateForm(){
                var callno = document.form.callno.value;
                if (callno==null || callno==""){  
                    alert("Callno cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(callno)){
                      alert("Enter only number in Callno field.");
                      return false;
                  }
            }
        </script>
    </head>
    <body>
        <%@include file="Libnav.jsp"%>
        
       <div class="card">
       <div class="content">
           <span class="head">Add Book</span>
            <form name="form" action="AddBook" method="post"  onsubmit = "return validateForm()">
                
                <div class="callno">
                <label for="callno">Callno</label>
                <input type="text" name="callno" id="callno" placeholder="callno" class="txt"><br>
                </div>
                
                <div class="name">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" placeholder="Name" class="txt"><br>
                </div>
                
                <div class="author">
                <label for="author">Author</label>
                <input type="text" name="author" id="author" placeholder="Author Name" class="txt"><br>
                </div>
                
                <div class="publisher">
                <label for="publisher">Publisher</label>
                <input type="text" name="publisher" id="publisher" placeholder="Publisher" class="txt"><br>
                </div>

                <div class="quantity">
                <label for="quantity">Quantity</label>
                <input type="number" name="quantity" placeholder="quantity number" id="quantity" class="txt"><br>
                </div>

                <div class="Stream">
                <label for="stream">Stream</label>
                <select name="stream" id="stream">
                    <option value="Science">Science</option>
                    <option value = "Commerce">Commerce</option>
                    <option value="Arts">Arts</option>
                </select><br>
                </div>
                
                <div class="submit"> 
                <input type="submit" value="Save Book" class="btn">
                </div>
                <p class="errmssg">${successMssg}</p>
             </form>
        </div>
        </div>
             <div class="svgImg">
            <img src="Online-Diploma.svg"/>
             </div>
    </body>
</html>
