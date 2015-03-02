<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export to Excel - Demo</title>
</head>
<body>
                    <p>For any information regarding the variant database or user 
                    interface please contact 
                    <a href="mailto: alsdb@columbia.edu" target="_blank">alsdb@columbia.edu</a>
                <p>For any information about the IGM please 
                    <a href="http://www.igenmed.org/?loc=contact" target="_blank"
                       >click</a> to contact</p>
    
    <%
        String exportToExcel = request.getParameter("exportToExcel");
        if (exportToExcel != null
                && exportToExcel.toString().equalsIgnoreCase("YES")) {
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "inline; filename="
                    + "excel.xls");
 
        }
    %>
    <table align="left" border="2">
        <thead>
            <tr>
                <th>Sr. No.</th>
                <th>Text Data</th>
                <th>Number Data</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (int i = 0; i < 10; i++) {
            %>
            <tr>
                <td align="center"><%=i + 1%></td>
                <td align="center">This is text data <%=i%></td>
                <td align="center"><%=i * i%></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%
        if (exportToExcel == null) {
    %>
    <a href="test.jsp?exportToExcel=YES">Export to Excel</a>
    <%
        }
    %>
</body>
</html>