<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Contact</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3 class="page-header">Contact</h3>

                <!--                <p>For any information about the IGM please 
                                    <a href="http://igm.columbia.edu?loc=contact" target="_blank"
                                       >click</a> to contact</p>-->


                <address>
                    <strong>Matthew Harms</strong><br>
                    Email: 
                    <a href="mailto: matthew.harms@columbia.edu" target="_blank">
                        <i class="fa fa-envelope-o">
                            matthew.harms@columbia.edu
                        </i>
                    </a>
                </address>

                <address>
                    Columbia University Medical Center<br>
                    701 W 168th Street<br>
                    Hammer Building 1408<br>
                    New York, NY 10032
                </address>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>
