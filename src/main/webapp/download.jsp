<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Download</title>

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
                <h3 class="page-header">Download <span class="label label-primary">v1</span></h3>

                <p class="lead">
                    The following flat files contain the full catalogue of SNVs, indels 
                    and coverage data for 1,424 patients recruited and sequenced for 
                    their Amyotrophic Lateral Sclerosis (ALS) diagnosis.
                </p>

                <p>
                <u>
                    Coordinates are currently based on GRCh37 (hg19), 
                    and represent chromosomes 1-22, X and Y.
                </u>
                </p>

                <p>
                    <a href="http://chgv.org/download/snps_indels_v1.txt.gz">
                        <i class="fa fa-file"></i>
                        snps_indels_v1.txt.gz
                    </a> 
                    (variant annotation file in tab-delimited text format)
                </p>

                <p>
                    <a href="http://chgv.org/download/coverage.all_sites_v1.txt.gz">
                        <i class="fa fa-file"></i>
                        coverage.all_sites_v1.txt.gz
                    </a> 
                    (sequencing coverage file for all carrier and non-carrier sites within our target regions)
                </p>

                <small>The current release (v1) was last updated on <em>02/27/2015</em>.</small>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>