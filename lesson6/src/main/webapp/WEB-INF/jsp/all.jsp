<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示全部</title>
</head>
<body>
<body>
<a href="add.jsp" style="text-decoration: none">增加用户</a>
   <table border="1">
		<tbody>
			<tr>
				<th>first_name</th>
				<th>last_name</th>
				<th>address</th>
				<th>email</th>
				<th>customer_id</th>
				<th>last_update</th>
			</tr>
			<c:if test="${!empty listUser }">
				<c:forEach items="${listUser}" var="list">
					<tr>
						<td>${list.first_name }</td>
						<td>${list.last_name }</td>
						<td>${list.address_id }</td>
						<td>${list.email }</td>
						<td>${list.customer_id }</td>
						<td>${list.last_update }</td>
						<td><a href="modif/${list.customer_id }" style="text-decoration: none">修改</a>&nbsp<a href="delete/${list.customer_id }"style="text-decoration: none">删除</a></td>
					</tr>				
				</c:forEach>
			</c:if>
		</tbody>
	</table>
  </body>
</body>
</html>