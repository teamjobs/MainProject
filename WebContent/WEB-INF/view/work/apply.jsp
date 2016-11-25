<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">


   
    <div class="w3-twothird">
    
        <form action="/apply/${t.NUM}/OK" method="post" enctype="multipart/form-data">
      <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>${t.COMPANY }</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b>입사지원 하기</b></h5> <br/>
          	이력서 제목(필수) : <input type="text" name="title"  required="required"> <br/> <br/>
          <h6 class="w3-text-teal"><i class="fa fa-search fa-fw w3-margin-right"></i>
          <input type="file" id="fileup" style="display: none" name="file" required="required"/>
          	이력서 등록 <button type="button" class="w3-btn w3-teal" id="fileup_bt" >FIND</button></h6>
         <span id="filename" style="width: auto;"></span>
          <hr>
        </div>
        
      </div>
          
      
      <div align="center">
     	<button type="submit" class="w3-btn-block w3-teal">지원하기</button>
      </div>

    </form>
    </div>
  <script>
  		$("#fileup_bt").click(function(){
  			$("#fileup").trigger("click");
  		});
  		
  		$("#fileup").change(function() {
  			var t = $(this)[0].files[0].name;
  			$("#filename").html(t);
  		});
  
  		
  		
  		
  
  </script>



</body>
</html>

