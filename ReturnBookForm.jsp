<%-- 
    Document   : ReturnBookForm
    Created on : 05-Sep-2022, 5:18:48 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="returnbook.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Return Book Form<title>
        <script>
            function validateform(){
                var callno = document.form1.callno.value;
                var stdid = document.form1.studentid.value;
                if (callno==null || callno==""){  
                    alert("Callno cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(callno)){
                      alert("Enter only number in Callno field.");
                      return false;
                  }
                  if (stdid==null || stdid==""){  
                    alert("Student id cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(stdid)){
                      alert("Enter only number in student id field.");
                      return false;
                  }
            }
        </script>
    </head>
    <body>
         <%@include file="Libnav.jsp"%>
        <div class="card">
        <div class="content">
        <span class="head">Return Book</span>
       <form name="form1" action="ReturnBook" method="post" onsubmit="return validateform()">
              
              <div class="callno">
              <label for="callno1">Callno</label>
              <input type="text" name="callno" id="callno1" placeholder="Callno" class="txt"/><br>
              </div>
            
              <div class="id">
              <label for="studentid1">Student Id</label>
              <input type="text" name="studentid" id="studentid1" placeholder="StudentId" class="txt"/><br>
              </div>
           
              <div class="submit"> 
              <button type="submit" class="btn">Return Book</button>
              </div>
          </form>
          <p class="errmssg">${successMssg}</p>
          </div>
          </div>
          <div class="svgImg">
            <img src="Library.svg"/>
             </div>
    </body>
</html>
