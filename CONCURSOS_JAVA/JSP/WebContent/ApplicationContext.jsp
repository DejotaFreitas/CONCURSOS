<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Integer n = (Integer) application.getAttribute("numero");
		if (n == null) {
			n = new Integer(1);
			application.setAttribute("numero", n);
		} else {
			n = new Integer(n.intValue() + 1);
			application.setAttribute("numero", n);
		}
	%> 
	Numero =	<%=n.toString()%> !!!
</body>
</html>