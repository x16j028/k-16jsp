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
Mondai m = (Mondai)ses.getAttribute("TOI");%>
<form action="K16Servlet2">

<br>
基本情報　eラーニング 問題画面<br><br>

問題番号<%=m.getNo() %><br>
<%=m.getToi() %><br><br>
<input type="radio" name="corse" value="ア">ア：<%=m.getSena() %><br>
<input type="radio" name="corse" value="イ">イ：<%=m.getSeni() %><br>
<input type="radio" name="corse" value="ウ">ウ：<%=m.getSenu() %><br>
<input type="radio" name="corse" value="エ">エ：<%=m.getSene() %><br>
<br>
<input type ="submit" value="解答">
<%
System.out.println("K16_2.jsp終了");%>
</form>
</body>
</html>