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
                <h3 class="page-header">Download</h3>

                <div class="row">
                    <div class="col-xs-6 col-md-9">
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
                            <a href="http://alsdb.org/download/snps_indels_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                snps_indels_v1.txt.gz
                            </a> 
                            (variant annotation file in tab-delimited text format)
                        </p>

                        <p>
                            <a href="http://alsdb.org/download/coverage.all_sites_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                coverage.all_sites_v1.txt.gz
                            </a> 
                            (sequencing coverage file for all carrier and non-carrier sites within our target regions)
                        </p>

                        <small>v1 data was last updated on <em>Feb 27, 2015</em>.</small>
<!--
                        <hr>

                        <p>
                            <a href="http://alsdb.org/download/snps_indels_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                snps_indels_v1.txt.gz
                            </a>
                        </p>

                        <p>
                            <a href="http://alsdb.org/download/coverage.all_sites_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                coverage.all_sites_v1.txt.gz
                            </a>
                        </p>

                        <small>v1 data was last updated on <em>Feb 27, 2015</em>.</small>-->
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <div class="news">
                            <h5>Latest News</h5>

                            <ul class="list-unstyled">
<!--                                <li>Released v2 data
                                    <small class="gray">(Sept 23, 2015)</small>
                                </li>
                                <ul>
                                    <li>
                                        <small>combined 1,425 HA patients data</small>
                                    </li>
                                </ul>-->

                                <li>Released v1 data
                                    <small class="gray">(Feb 27, 2015)</small>
                                </li>
                                <ul>
                                    <li>
                                        <small>1,424 IGM patients data</small>
                                    </li>
                                </ul>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>