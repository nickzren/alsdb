<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3>Data Browser <span class="label label-info">v1</span></h3>

                <br/>

                <div class="row">
                    <div class="col-md-7">
                        <form class="form-search" action="SearchQuery">
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
                    Gene: <a href="SearchQuery?query=TBK1">TBK1</a>,
                    Region: <a href="SearchQuery?query=21:33032075-33040899">21:33032075-33040899</a>, 
                    Variant: <a href="SearchQuery?query=14-21162090-G-A">14-21162090-G-A</a>
                </p>

                <br/>
                               
                <%@include file="browser/result.jsp" %>  
            </div>
        </div>

        <%@include file="base/footer.jsp" %>    
    </body>
</html>


