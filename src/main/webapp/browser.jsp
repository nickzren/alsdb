<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3>Data Browser 
                    <a href="download.jsp" style="text-decoration: none;">
                        <span class="label label-primary">v1</span>
                    </a>
                </h3>

                <br/>

                <div class="row">
                    <div class="col-md-7">
                        <form class="form-search" action="Search">
                            <div class="input-group">
                                <input name="query" class="form-control input-lg tt-input"
                                       type="text" placeholder="Search for a gene or region or variant" >
                                <div class="input-group-btn">
                                    <button class="btn btn-default input-lg tt-input" 
                                            type="submit">
                                        <i class="glyphicon glyphicon-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <p class="text-muted" style="margin-left: 10px">
                    Examples - 
                    Gene: <a href="Search?query=TBK1">TBK1</a>,
                    Region: <a href="Search?query=21:33032075-33040899">21:33032075-33040899</a>, 
                    Variant: <a href="Search?query=14-21162090-G-A">14-21162090-G-A</a>
                </p>

                <br/>

                <%@include file="browser/result.jsp" %>  
            </div>
        </div>

        <%@include file="base/footer.jsp" %>

        <!-- Start of StatCounter Code for Default Guide -->
        <script type="text/javascript">
            var sc_project = 10337520;
            var sc_invisible = 1;
            var sc_security = "05008421";
            var scJsHost = (("https:" == document.location.protocol) ?
                    "https://secure." : "http://www.");
            document.write("<sc" + "ript type='text/javascript' src='" +
                    scJsHost +
                    "statcounter.com/counter/counter.js'></" + "script>");
        </script>
        <noscript>
        <div class="statcounter">
            <a title="web analytics"
               href="http://statcounter.com/" target="_blank">
                <img class="statcounter"
                     src="http://c.statcounter.com/10337520/0/05008421/1/"
                     alt="web analytics">
            </a>
        </div>
        </noscript>
        <!-- End of StatCounter Code for Default Guide -->  
    </body>
</html>


