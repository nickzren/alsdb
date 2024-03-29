<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Error</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="row">
                <div class="col-md-12">
                    <div class="error-template text-center">
                        <h1>
                            Oops!
                        </h1>
                        <h2>
                            404 Not Found
                        </h2>
                        <p>
                            Sorry, an error has occured, Requested page not found!
                        </p>
                        
                        <p>
                            <%=request.getAttribute("error")%>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>