<%@page import="apli.Mondai"%>
<%@page contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
<title>
あいさつ文
</title>
</head>
<body>
<%
System.out.println("K16_2.jsp開始");
request.setCharacterEncoding("UTF-8");
HttpSession ses = request.getSession();
Mondai m = (Mondai)ses.getAttribute("TOI");
%>
<form action="k16_1.jsp">

<br>
基本情報  eラーニング 解答確認画面<br><br>

問題番号<%=m.getNo() %>:正解は<%=m.getKai() %><br>

<%=m.Hantei() %><br><br>

次の問題番号<select name="mon">
			<option value="1">1
			<option value="2">2
			<option value="3">3
			<option value="4">4
			<option value="5">5
		</select>
<input type ="submit" value="問題へ">
<%
System.out.println("K16_3.jsp終了");%>
</form>
</body>
</html>