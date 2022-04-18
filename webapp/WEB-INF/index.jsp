<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!--             CSS  -->
<%--             <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>
<%--             <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css"> --%>

<!--             JS  -->
<%--             <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script> --%>
<%--             <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script> --%>
<!--             <title>Insert title here</title> -->
        </head>

        <body>
            <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
            <jsp:include page="/WEB-INF/pagina/slider.jsp" />
            <jsp:include page="/WEB-INF/pagina/produtoGrid.jsp" />
            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>