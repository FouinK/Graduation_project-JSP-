<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
            <%@page import="java.util.ArrayList"%>
<%@page import="graduation_project_beta.DAO"%>
<%@page import="graduation_project_beta.DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		System.out.println("11");
		DAO instance = DAO.getInstance(); //객체 주소 불러옴(객체 만듬)
		instance.getMember(); //select 함수 불러오기
		ArrayList<DTO> arraylist = instance.arraylist; //어레이 리스트 가져오기
		int log = -2; //
		
	%>
	<!-- 데이터만 확인하고
		로그인이 되면 index로
		안되면 다시 로그인 페이지로
		 -->
	<%
		String id = request.getParameter("id");
		//아이디 값 비교
		for(int i=0;i<arraylist.size();i++){
			
			if( arraylist.get(i).getId().equals(id) ){
				log = 2;
			}
			
		}
		if(log != 2){ //아이디 중복 x //아이디 없음
			//회원가입 페이지로 가기 
			//session.setAttribute("login_log",log); // -1
			response.sendRedirect("make_member_join.jsp"); 
		}else{ //아이디 중복 log = 1 로그인 성공 
			//석세스 로그인으로 가기
			//session.setAttribute("login_log",log); // 1
			response.sendRedirect("secess_login.jsp"); 
			
		}
	%>
</body>
</html>