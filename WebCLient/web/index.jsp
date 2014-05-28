<%-- 
    Document   : index
    Created on : May 27, 2014, 9:56:35 PM
    Author     : sercheo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%-- start web service invocation --%><hr/>
    <%
    try {
	com.example.PaperVIsions_Service service = new com.example.PaperVIsions_Service();
	com.example.PaperVIsions port = service.getPaperVIsionsPort();
	 // TODO initialize WS operation arguments here
	int num1 = Integer.parseInt(request.getParameter("i1"));
	int num2 = Integer.parseInt(request.getParameter("i2"));
	// TODO process result here
	java.lang.Integer result = port.add(num1, num2);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
