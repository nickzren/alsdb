<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>ALS Data Browser (ALSdb) | ALS | Amyotrophic Lateral Sclerosis</title>

        <meta name="description" content="The ALS Data Browser is a catalogue of genetic variants 
              identified from 1,424 Caucasian patients recruited and sequenced for 
              their diagnosis of Amyotrophic Lateral Sclerosis.">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="canonical" href="http://alsdb.org/">
        <link rel="canonical" href="http://chgv.org/alsdb/">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">

        <script src="js/jquery-latest.min.js"></script>    
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.tablesorter.js"></script>
        <script src="js/jquery.tablesorter.widgets.js"></script>
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">

                <div class="jumbotron" style="padding:20px 40px 20px 50px">
                    <h2>Data Browser 
                        <small>
                            <a class="white" href="download.jsp">
                                <span class="label label-default">v2</span>
                            </a>
                        </small>
                    </h2>

                    <div class="row">
                        <div class="col-md-9">
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

                </div>

                <br/>

                <%@include file="browser/result.jsp" %>  
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>