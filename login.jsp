<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body  >


		<!-- get방식은 정보가 전부 다 주소창에 보이고 post는 주소창에 안보임 -->
		<!-- 여기서 로그인 정보 받고 디비에 넣기 -->
		<!-- 세션값을 다르게 준다 -->
		<!-- 세션값이 있으면 > 회원전용 -->
		
	

    <form action="loginpro.jsp" method="post" class="loginForm">
        <h2>Viva La Trip</h2>
        <div class="idForm">
            <input type="text" name= "id" class="id" placeholder="ID">
        </div>
        <div class="passForm">
            <input type="password" name= "pw" class="pw" placeholder="PW">
        </div>
        <button class="btn">
            LOG IN
        </button>
        

         
        
        <div class="bottomText">
            아이디가 없다면? <a href="make_member_join.jsp">회원가입</a>
        </div>
       
    </form>
             <!-- 
        	<script>
            function button() {
                alert("로그인");
            }
      	    /*let button = () => {
        	    alert('login Button !')
            }*/
        </script>
         -->
        
</body>
</html>