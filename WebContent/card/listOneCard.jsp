<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.card.model.*"%>
<%@ page import="com.users.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%-- ���X Concroller EmpServlet.java�w�s�Jrequest��EmpVO���� --%>

<% CardVO cardVO = (CardVO) request.getAttribute("cardVO"); %>
 

<%-- ���X ������DeptVO����--%>
<%--
//  cardService cardSvc = new cardService();
//  cardVO cardVO = cardSvc.getOnecard(cardVO.getusers());
--%>

<html>
<head>
<title>���u��� - listOneEmp.jsp</title>

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
		 <h3>���u��� - listOneEmp.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/card/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�H�Υd�s��</th>
		<th>�|���s��</th>
		<th>�H�Υd�s��</th>
		<th>�H�Υd�����</th>
		<th>�H�Υd���T�X</th>
		<th>�H�Υd���A</th>
	</tr>
	<tr>
		<td>${cardVO.card_id}</td>
		<td>${cardVO.users_id}</td>
		<td>${cardVO.card_number}</td>
		<td>${cardVO.card_date}</td>
		<td>${cardVO.card_last}</td>
		<td>${cardVO.card_default}</td>
		
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