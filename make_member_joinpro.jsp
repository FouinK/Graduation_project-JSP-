<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		DAO instance = DAO.getInstance(); //��ü �ּ� �ҷ���(��ü ����)
		instance.getMember(); //select �Լ� �ҷ�����
		ArrayList<DTO> arraylist = instance.arraylist; //��� ����Ʈ ��������
		int log = -1; //
		
	%>
	<!-- �����͸� Ȯ���ϰ�
		�α����� �Ǹ� index��
		�ȵǸ� �ٽ� �α��� ��������
		 -->
	<%
		String id = request.getParameter("id");
		//���̵� �� ��
		for(int i=0;i<arraylist.size();i++){
			if( arraylist.get(i).getId().equals(id) ){
				log = 1;
			}
		}
		if(log != 1){ //���̵� �ߺ� x //���̵� ���� ����
			String pw = request.getParameter("pw");
			instance.setMember(id, pw);
			//ȸ������ �������� �̵�
			session.setAttribute("login_log",log); // -1
			response.sendRedirect("index.jsp"); 
		}else{ //���̵� �ߺ� log = 1 �α��� ���� 
			//�ٽ� �α��� �������� ���ư���
			session.setAttribute("login_log",log); // 1
			response.sendRedirect("login.jsp"); 
			
		}
	%>
</body>
</html>