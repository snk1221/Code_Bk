<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.card.model.*"%>
<%@ page import="com.card.controller.*"%>
<%-- 此頁練習採用 EL 的寫法取值 --%>

<%
	CardService cardSvc = new CardService();
    List<CardVO> list = cardSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<%-- <jsp:useBean id="cardSvc" scope="page" class="com.card.model.cardService" /> --%>

<html>
<head>
<title>所有卡片資料 - listAllCard.jsp</title>

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

<h4>此頁練習採用 EL 的寫法取值:</h4>
<table id="table-1">
	<tr><td>
		 <h3>所有員工資料 - listAllcard.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/card/select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table >
	<tr>
		<th>信用卡編號</th>
		<th>使用者編號</th>
		<th>信用卡號碼</th>
		<th>信用卡日期</th>
		<th>信用卡後三碼</th>
		<th>信用卡狀態</th>
		<th>修改</th>
		<th>刪除</th>
	
	</tr>
	<%@ include file="pages/page1.file" %> 
	<c:forEach var="cardVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${cardVO.card_id}</td>
			<td>${cardVO.users_id}</td>
			<td>${cardVO.card_number}</td>
			<td>${cardVO.card_date}</td>
			<td>${cardVO.card_last}</td>
			<td>${cardVO.card_default}</td> 
<%-- 			<td><c:forEach var="deptVO" items="${deptSvc.all}"> --%>
<%--                     <c:if test="${empVO.deptno==deptVO.deptno}"> --%>
<%-- 	                    ${deptVO.deptno}【${deptVO.dname} - ${deptVO.loc}】 --%>
<%--                     </c:if> --%>
<%--                 </c:forEach> --%>
<%-- 			</td> --%>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/card/card.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="card_id"  value="${cardVO.card_id}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/card/card.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="card_id"  value="${cardVO.card_id}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="pages/page2.file" %>

</body>
</html>