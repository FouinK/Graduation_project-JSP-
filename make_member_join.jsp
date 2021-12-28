<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
    <link rel="stylesheet" href="make_member_join.css">
    
</head>
<body>

	 <div class="container">
        <h2>Sign Up</h2>

        <form action="">
            <div class="form-item-username">
                <input type="text" name="firstName" id="firstName" placeholder="First Name">
                <input type="text" name="lastName" id="lastName" placeholder="Last Name">
            </div>

            <div class="form-item">
                <input type="email" name="email" id="email" placeholder="Email">
            </div>

            <div class="form-item">
                <!-- add a password format display -->
                <span class="pwd-format">
                    8-15 AlphaNumeric Characters
                </span>
                <input type="password" name="password" id="password" placeholder="Enter password">
                <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm password">
            </div>

            <div class="accept-box">
                <input type="checkbox" name="accept" id="accept">
                <p>I accept the <a href="#">Terms & Conditions</a></p>
            </div>

            <div class="form-btns">
                <button class="signup" type="submit" disabled>Sign Up</button>
                <div class="options">
                    Already have an account? <a href="#">Login here</a>
                </div>
            </div>

        </form>
    </div>

  

    
	
	<form action="make_member_joinpro.jsp">
		아이디를 입력하시오 :  <input name="id"> <br>
		비밀번호 입력하시오 :  <input name="pw"> <br>
		비밀번호를 확인    :  <input name="pw_check">
		<button value="회원가입_완료">회원가입 완료</button>
	</form>
	<script type="text/javascript" src="make_member_join.js"></script>
</body>
</html>
