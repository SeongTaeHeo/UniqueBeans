<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/hstboard.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="board_main">
<table class="bg-light table table-hover table-sm text-center form-radius">
<c:forEach items="${ReplyList }" var="reply">
   <tr>
      <td align="center" class="reply_id">${reply.id }</td>
         <td class="reply_text" align="left">${reply.re_content }</td>
      <td class="reply_button">${reply.re_date }<br>
      <a href="deleteReply.do?re_number=${reply.re_number }"
      onclick="return confirm('댓글을 삭제하시겠습니까?')">삭제</a>
      </td>
   </tr>
</c:forEach>
</table>
</div>
</body>
</html>