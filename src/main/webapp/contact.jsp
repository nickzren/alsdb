<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Contact</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3 class="page-header">Contact</h3>

                <p>For any information regarding the variant database or user 
                    interface please contact 
                    <a href="mailto: alsdb@columbia.edu" target="_blank">alsdb@columbia.edu</a>
                <p>For any information about the IGM please 
                    <a href="http://www.igenmed.org/?loc=contact" target="_blank"
                       >click</a> to contact</p>
<!--                <p>For any information about the Biogen ALS consortium please contact 
                    <mark>Insert Name and hyperlink to relevant person</mark></p>
                </p>-->

            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>