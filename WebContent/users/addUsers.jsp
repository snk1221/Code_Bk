<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.users.model.*"%>

<%
  UsersVO usersVO = (UsersVO) request.getAttribute("usersVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�s�W�|�� - addUsers.jsp</title>

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
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�|����Ʒs�W - addUsers.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/users/select_page.jsp"><img src="images/tomcat.png" width="100" height="100" border="0">�^����</a></h4>
	</td></tr>
</table>

<h3>��Ʒs�W:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="users.do" name="form1" enctype="multipart/form-data">
<table>
	<tr>
		<td>�ϥΪ̩m�W:</td>
		<td><input type="TEXT" name="users_name" size="15" 
			 value="<%= (usersVO==null)? "�|����" : usersVO.getUsers_id()%>" /></td>
	</tr>
	<tr>
		<td>�ʺ�:</td>
		<td><input type="TEXT" name="users_nickname" size="20"
			 value="<%= (usersVO==null)? "����" : usersVO.getUsers_nickname()%>" /></td>
	</tr>
	<tr>
		<td>�ʧO:</td>
		<td><input type="TEXT" name="users_sex" size="2"
			 value="<%= (usersVO==null)? "1" : usersVO.getUsers_sex()%>" /></td>
	</tr>
	<tr>
		<td>�H�c:</td>
		<td><input name="users_mail" type="text" size="20"
			 value="<%= (usersVO==null)? "aa@us.com.us" : usersVO.getUsers_mail()%>" /></td>
	</tr>
	<tr>
		<td>�K�X:</td>
		<td><input type="password" name="users_pwd" size="20"
			 value="<%= (usersVO==null)? "444" : usersVO.getUsers_pwd()%>" /></td>
	</tr>
	<tr>
		<td>�ͤ�:</td>
		<td><input type="TEXT" name="users_birthday" size="10"
			 value="<%= (usersVO==null)? "20200101" : usersVO.getUsers_birthday()%>" /></td>
	</tr>
	<tr>
		<td>�����Ҹ��X:</td>
		<td><input type="TEXT" name="users_id_number" size="10"
			 value="<%= (usersVO==null)? "A123456789" : usersVO.getUsers_id_number()%>" /></td>
	</tr>
	<tr>
		<td>�q��:</td>
		<td><input type="TEXT" name="users_phone" size="15"
			 value="<%= (usersVO==null)? "8825252" : usersVO.getUsers_phone()%>" /></td>
	</tr>
	<tr>
		<td>�ʧO:</td>
		<td><input type="TEXT" name="users_sex" size="2"
			 value="<%= (usersVO==null)? "1" : usersVO.getUsers_sex()%>" /></td>
	</tr>
	<tr>
		<td>�Y��:</td>
		<td><input type="file" name="users_users_pic"></td>
	</tr>
<%-- 	<jsp:useBean id="deptSvc" scope="page" class="com.dept.model.DeptService" /> --%>
<!-- 	<tr> -->
<!-- 		<td>����:<font color=red><b>*</b></font></td> -->
<!-- 		<td><select size="1" name="deptno"> -->
<%-- 			<c:forEach var="deptVO" items="${deptSvc.all}"> --%>
<%-- 				<option value="${deptVO.deptno}" ${(empVO.deptno==deptVO.deptno)? 'selected':'' } >${deptVO.dname} --%>
<%-- 			</c:forEach> --%>
<!-- 		</select></td> -->
<!-- 	</tr> -->

</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="hidden" name="users_status" 
	 value="<%= (usersVO==null)? "1" : usersVO.getUsers_status()%>" />
<input type="submit" value="�e�X�s�W"></FORM>
</body>



<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->


</html>