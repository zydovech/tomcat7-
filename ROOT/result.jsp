<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: zkml
  Date: 2017/11/23
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        List style=(List)request.getAttribute("styles");
        Iterator it=style.iterator();
        while (it.hasNext()){
            it.next();
        }
        out.println(application.getAttributeNames());
        out.println(application);

        Enumeration<String> enumeration=application.getAttributeNames();
        while (enumeration.hasMoreElements()){
            out.println(enumeration.nextElement());
        }

        Cookie[] cookie= (Cookie[]) request.getAttribute("cookie");
        if(cookie!=null){
            for (int i = 0; i <cookie.length ; i++) {
                out.println(cookie.toString());
            }
        }

    %>

</head>
<body>

</body>
</html>
