<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.admins.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%-- ���X Concroller EmpServlet.java�w�s�Jrequest��EmpVO���� --%>

<% AdminsVO adminsVO = (AdminsVO) request.getAttribute("adminsVO"); %>
 

<%-- ���X ������DeptVO����--%>
<%--
//  cardService cardSvc = new cardService();
//  cardVO cardVO = cardSvc.getOnecard(cardVO.getadmins());
--%>

<html>
<head>
<title>�|����� - listOneAdmins.jsp</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-1">
	<tr><td>
		 <h3>�|����� - listOneAdmins.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/admins/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�޲z�̽s��</th>
		<th>�H�c</th>
		<th>�m�W</th>
		<th>�K�X</th>
		<th>�ʧO</th>
		<th>�v��</th>
		<th>¾��</th>
		<th>�Ыؤ��</th>
		<th>�̫�ק���</th>
	</tr>
	<tr>
			<td>${adminsVO.admins_id}</td>
			<td>${adminsVO.admins_email}</td>
			<td>${adminsVO.admins_name}</td>
			<td>${adminsVO.admins_password}</td>
			<td>${adminsVO.admins_sex}</td>
			<td>${adminsVO.admins_authority}</td>
			<td>${adminsVO.admins_position}</td>
			<td>${adminsVO.admins_create_time}</td>
			<td>${adminsVO.admins_edit_time}</td>  	
	</tr>

		</table>
	</body>
</html>