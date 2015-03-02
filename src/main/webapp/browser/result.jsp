<%
    String table = (String) request.getAttribute("table");
%>

<%
    if (table != null) {
        if (table.equals("variant")) {
%>

<%@include file="variant.jsp" %>  

<%    } else {
%>

<%@include file="variantList.jsp" %>  

<%    }
    }
%>