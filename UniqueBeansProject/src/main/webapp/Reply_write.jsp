<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Unique Bean</title>
</head>
<body>
	<form method="post" action="insertReply.do">
		<table class="table table-bordered">
			<tr>
				<td class="reply_num"><input id="post_number" name="post_number"
					value=${board.post_number } style="border: none;" readonly="readonly"/></td>
				<td class="reply_id" align="center"><input id="id" type="text" value=${loginUser }
							name="id" readonly="readonly" style="border: none;" /></td>
				<td class="reply_text" align="left"><textarea id="re_content"
						name="re_content" class="form-control"
						style="resize: none; height: 50px;" required></textarea></td>
				<td align="center" class="reply_button"><button type="submit"
						class="btn btn-success btn-lg">등록</button></td>
			</tr>
		</table>
	</form>
=======
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Unique Bean</title>
</head>
<body>
   <form method="post" action="insertReply.do">
      <table class="table table-bordered">
         <tr>
            <td class="reply_num"><input id="post_number" name="post_number"
               value=${board.post_number } style="border: none;" readonly="readonly"/></td>
            <td class="reply_id" align="center"><input id="id" type="text" value=${loginUser }
                     name="id" readonly="readonly" style="border: none;" /></td>
            <td class="reply_text" align="left"><textarea id="re_content"
                  name="re_content" class="form-control"
                  style="resize: none; height: 50px;" required></textarea></td>
            <td align="center" class="reply_button"><button type="submit"
                  class="btn btn-success btn-lg">등록</button></td>
         </tr>
      </table>
   </form>
>>>>>>> branch 'master' of https://github.com/SeongTaeHeo/UniqueBeans.git
</body>
</html>