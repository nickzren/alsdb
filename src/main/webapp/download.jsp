<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <h3>Download <span class="label label-primary">v1</span></h3>

                <br/>

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
                        <strong>snps_indels_v1.txt.gz</strong></a> 
                    (variant annotation file in tab-delimited text format)
                </p>

                <p>
                    <a href="http://chgv.org/download/coverage.all_sites_v1.txt.gz">
                        <strong>coverage.all_sites_v1.txt.gz</strong></a> 
                    (sequencing coverage file for all carrier and non-carrier sites within our target regions)
                </p>

                <small>The current release (v1) was last updated on <em>02/27/2015</em>.</small>
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