<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.admins.model.*"%>

<%
  AdminsVO adminsVO = (AdminsVO) request.getAttribute("adminsVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�s�W�޲z�� - addAdmins.jsp</title>

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
		 <h3>�޲z�̸�Ʒs�W - addAdmins.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/admins/select_page.jsp"><img src="images/tomcat.png" width="100" height="100" border="0">�^����</a></h4>
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

<FORM METHOD="post" ACTION="admins.do" name="form1" >
<table>
	<tr>
		<td>�޲z�̩m�W:</td>
		<td><input type="TEXT" name="admins_name" size="15" 
			 value="<%= (adminsVO==null)? "�|����" : adminsVO.getAdmins_name()%>" /></td>
	</tr>
	<tr>
		<td>�ʧO:</td>
		<td><input type="TEXT" name="admins_sex" size="2"
			 value="<%= (adminsVO==null)? "1" : adminsVO.getAdmins_sex()%>" /></td>
	</tr>
	<tr>
		<td>�H�c:</td>
		<td><input name="admins_email" type="text" size="20"
			 value="<%= (adminsVO==null)? "aa@us.com.us" : adminsVO.getAdmins_email()%>" /></td>
	</tr>
	<tr>
		<td>�K�X:</td>
		<td><input type="password" name="admins_password" size="20"
			 value="<%= (adminsVO==null)? "444" : adminsVO.getAdmins_password()%>" /></td>
	</tr>
	<tr>
		<td>�v��:</td>
		<td><input type="TEXT" name="admins_authority" size="20"
			 value="<%= (adminsVO==null)? "root" : adminsVO.getAdmins_authority()%>" /></td>
	</tr>
	<tr>
		<td>¾��:</td>
		<td><input type="TEXT" name="admins_position" size="10"
			 value="<%= (adminsVO==null)? "�����X�A" : adminsVO.getAdmins_position()%>" /></td>
	</tr>
	
</table>
<br>
<input type="hidden" name="action" value="insert">
<input type="submit" value="�e�X�s�W"></FORM>
</body>



<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->


</html>