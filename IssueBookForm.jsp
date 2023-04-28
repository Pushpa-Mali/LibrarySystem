<%-- 
    Document   : IssueBookForm
    Created on : 05-Sep-2022, 3:20:34 pm
    Author     : Pushpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Issue Book</title>
        <link rel="stylesheet" href="issuebook.css">
        <script>
                 function validateForm(){
                var callno = document.form.callno.value;
                var studentid = document.form.studentid.value;
                var studentname = document.form.studentname.value;
                var studentmobile = document.form.studentmobile.value;
                if (callno==null || callno==""){  
                    alert("Callno cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(callno)){
                      alert("Enter only number in Callno field.");
                      return false;
                  }
                  if (studentid==null || studentid==""){  
                    alert("Student id cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(studentid)){
                      alert("Enter only number in student id field.");
                      return false;
                  }
                  if (studentname==null || studentname==""){  
                    alert("Student name cannot be blank");  
                    return false;  
                  }
                  if (studentmobile==null ||studentmobile==""){  
                    alert("Student mobile cannot be blank");  
                    return false;  
                  }
                  else if(isNaN(studentmobile)){
                      alert("Enter only number digits in student id field.");
                      return false;
                  }
                  else if(studentmobile.length!=10){
                      alert("Mobile Number length should be 10 digits");
                      return false;
                  }
            }
        </script>
    </head>
    <body>
       <%@include file="Libnav.jsp"%>
        <div class="card">
        <div class="content">
            <span class="head">Issue Book</span>
            <form name="form" action="IssueBook" method="post" onsubmit = "return validateForm()">
                 <div class="callno">
                 <label for="callno1">Book Callno</label>
                 <input type="text" name="callno" id="callno1" placeholder="Callno" class="txt"><br>
                 </div>

                 <div class="id">
                 <label for="id1">Student Id</label>
                 <input type="number" name="studentid" id="id1" placeholder="Student Id"/ class="txt"><br>
                 </div>
                
                 <div class="name">
                 <label for="name1">Student Name</label>
                 <input type="text" name="studentname" id="name1" placeholder="Student Name" class="txt"/><br>
                 </div>
                
                 <div class="mobile">   
                 <label for="mobile1">Student Mobile</label>
                 <input type="number" name="studentmobile" id="mobile1" placeholder="Student Mobile" class="txt"/><br>
                 </div>
                
                 <div class="submit"> 
                 <button type="submit" class="btn">Issue Book</button>
                 </div>
                 <p class="errmssg">${successMssg}</p>
                 <p class="errmssg">${errMssg}</p>
             </form>
         </div>
        </div>
             <div class="svgImg">
            <img src="Library.svg"/>
             </div>
    </body>
</html>
