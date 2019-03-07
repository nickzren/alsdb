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
                            and coverage data for 3,317 patients recruited and sequenced for 
                            their Amyotrophic Lateral Sclerosis (ALS) diagnosis.
                        </p>

                        <p>
                        <u>
                            Coordinates are currently based on GRCh37 (hg19), 
                            and represent chromosomes 1-22, X and Y.
                        </u>
                        </p>

                        <p>
                            <a href="http://alsdb.org/download/als_all_samples_snps_indels_v3.csv.gz">
                                <i class="fa fa-file"></i>
                                als_all_samples_snps_indels_v3.csv.gz
                            </a> 
                            (Variants data from 3,317 ALS samples, combining both caucasian and diversified datasets)
                        </p>
                        
                        <p>
                            <a href="http://alsdb.org/download/als_caucasian_samples_snps_indels_v3.csv.gz">
                                <i class="fa fa-file"></i>
                                als_caucasian_samples_snps_indels_v3.csv.gz
                            </a> 
                            (Variants data from 3,093 ALS cases and 8,186 controls of Caucasian ancestry)
                        </p>
                        
                        <p>
                            <a href="http://alsdb.org/download/als_all_ethnicities_samples_snps_indels_v3.csv.gz">
                                <i class="fa fa-file"></i>
                                als_all_ethnicities_samples_snps_indels_v3.csv.gz
                            </a> 
                            (Variants data from 3,239 ALS cases and 11,808 controls of diversified ancestries)
                        </p>
                        
                        <p>
                            <a href="http://alsdb.org/download/custom_capture_replication_cohort.csv.gz">
                                <i class="fa fa-file"></i>
                                custom_capture_replication_cohort.csv.gz
                            </a> 
                            (Variants data from 830 ALS cases and 1,858 controls sequenced for top 51 genes found by Cirulli et al.)
                        </p>
                        
                        <small>v3 data was last updated on <em>Dec 03, 2018</em>.</small>
                        
                        <hr>
                        
                        <p>
                            <a href="http://alsdb.org/download/all_samples_snps_indels_v2.tsv.gz">
                                <i class="fa fa-file"></i>
                                all_samples_snps_indels_v2.tsv.gz
                            </a> 
                            (Variants data from 2,800 samples)
                        </p>

                        <p>
                            <a href="http://alsdb.org/download/samples_pruned_snps_indels_v2.tsv.gz">
                                <i class="fa fa-file"></i>
                                samples_pruned_snps_indels_v2.tsv.gz
                            </a> 
                            (Variants data from 2,638 pruned samples)
                        </p>
                        
                        <p>
                            <a href="http://alsdb.org/download/coverage.all_sites_v2.txt.gz">
                                <i class="fa fa-file"></i>
                                coverage.all_sites_v2.txt.gz
                            </a> 
                            (Sequencing per base coverage data from 2,800 samples)
                        </p>

                        <small>v2 data was last updated on <em>Oct 19, 2016</em>.</small>

                        <hr>

                        <p>
                            <a href="http://alsdb.org/download/snps_indels_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                snps_indels_v1.txt.gz
                            </a>
                            (Variants data from 1,424 samples)
                        </p>

                        <p>
                            <a href="http://alsdb.org/download/coverage.all_sites_v1.txt.gz">
                                <i class="fa fa-file"></i>
                                coverage.all_sites_v1.txt.gz
                            </a>
                            (Sequencing per base coverage data from 1,424 samples)
                        </p>

                        <small>v1 data was last updated on <em>Feb 27, 2015</em>.</small>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <div class="news">
                            <h5>Latest News</h5>

                            <ul class="list-unstyled">
                                <li>Released v3 data
                                    <small class="gray">(Dec 03, 2018)</small>
                                </li>
                                <ul>
                                    <li>
                                        <small>3,317 ALS samples data</small>
                                    </li>
                                </ul>
                                
                                <li>Released v2 data
                                    <small class="gray">(Oct 19, 2016)</small>
                                </li>
                                <ul>
                                    <li>
                                        <small>combined 1,425 HA samples data</small>
                                    </li>
                                    <li>
                                        <small>removed related and genetic outlier samples</small>
                                    </li>
                                    <li>
                                        <small>data browser is based on 2,638 pruned samples data</small>
                                    </li>
                                </ul>

                                <li>Released v1 data
                                    <small class="gray">(Feb 27, 2015)</small>
                                </li>
                                <ul>
                                    <li>
                                        <small>1,424 IGM samples data</small>
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