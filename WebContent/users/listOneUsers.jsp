<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.users.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%-- ���X Concroller EmpServlet.java�w�s�Jrequest��EmpVO���� --%>

<% UsersVO usersVO = (UsersVO) request.getAttribute("usersVO"); %>
 

<%-- ���X ������DeptVO����--%>
<%--
//  cardService cardSvc = new cardService();
//  cardVO cardVO = cardSvc.getOnecard(cardVO.getusers());
--%>

<html>
<head>
<title>�|����� - listOneUsers.jsp</title>

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
		 <h3>�|����� - listOneUsers.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/users/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�ϥΪ̽s��</th>
		<th>�ϥΪ̫H�c</th>
		<th>�K�X</th>
		<th>�{�ҫH�T�{���A</th>
		<th>�ϥΪ̼ʺ�</th>
		<th>�W�r</th>
		<th>�ʧO</th>
		<th>�X�ͦ~���</th>
		<th>�����Ҧr��</th>
		<th>�Y���Ӥ�</th>
		<th>�s���q��</th>
		<th>�Ыؤ��</th>
		<th>�̫�ק���</th>

	</tr>
	<tr>
			<td>${usersVO.users_id}</td>
			<td>${usersVO.users_mail}</td>
			<td>${usersVO.users_pwd}</td>
			<td>${usersVO.users_status}</td>
			<td>${usersVO.users_nickname}</td>
			<td>${usersVO.users_name}</td>
			<td>${usersVO.users_sex}</td>
			<td>${usersVO.users_birthday}</td>
			<td>${usersVO.users_id_number}</td>
			<td><img src="../UsersGetPic?id=${usersVO.users_id}" height="64" width="64"></td>
			<td>${usersVO.users_phone}</td>   
			<td>${usersVO.create_time}</td>
			<td>${usersVO.update_time}</td>  	
	</tr>
<!-- 	<tr> -->
<%-- 		<td><%=empVO.getEmpno()%></td> --%>
<%-- 		<td><%=empVO.getEname()%></td> --%>
<%-- 		<td><%=empVO.getJob()%></td> --%>
<%-- 		<td><%=empVO.getHiredate()%></td> --%>
<%-- 		<td><%=empVO.getSal()%></td> --%>
<%-- 		<td><%=empVO.getComm()%></td> --%>
<%-- 		<td><%=empVO.getDeptno()%>�i<%=deptVO.getDname()%> - <%=deptVO.getLoc()%>�j</td> --%>
<!-- 	</tr> -->
		</table>
	</body>
</html>