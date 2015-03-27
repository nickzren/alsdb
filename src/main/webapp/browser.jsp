<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3 class="page-header">Data Browser 
                    <a class="black" href="download.jsp">
                        <span class="label label-primary">v1</span>
                    </a>
                </h3>

                <div class="row">
                    <div class="col-md-6">
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

                <p class="text-muted" style="margin-left: 5px">
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

        <%@include file="base/counter.jsp" %> 
    </body>
</html>


