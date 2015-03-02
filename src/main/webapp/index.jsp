<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <%@include file="base/head.jsp" %>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <div class="jumbotron" style="padding:20px 40px 20px 50px">
                    <h1>ALSdb</h1>
                    <p>The ALS Data Browser is a catalogue of genetic variants identified from 
                    1,424 patients 
                    recruited and sequenced for their diagnosis of Amyotrophic Lateral Sclerosis. 
                    Approximately 93.5% of these cases are sporadic 
                    (<a href="http://als.umassmed.edu/" target="_blank">click here</a> 
                    for a database from familial cases). 
                    The database includes single nucleotide substitution variants (SNVs) and insertion and deletion (indels) variants. 
                    Funding for this study was provided by Biogen Idec.</p>
                    <p><a class="btn btn-primary btn-lg" href="download.jsp">
                            Download data now!</a></p>
                </div>

                <br/>

                <div class="row">
                    <div class="center-block col-xs-6 col-md-4">
                        <h4>Sequencing Centers</h4>
                        <ul>
                            <li><a href="http://www.igenmed.org/" target="_blank">IGM</a></li>
                            <li><a href="http://hudsonalpha.org/" target="_blank">HudsonAlpha</a></li>
                            <li><a href="http://www.laboguyrouleau.ca/" target="_blank">McGill University</a></li>
                            <li><a href="http://gitlerlab.googlepages.com/" target="_blank">Stanford University</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <h4>Affiliate sites</h4>
                        <ul>
                            <li><a href="http://als.umassmed.edu/" target="_blank">FALS variant data server</a></li>
                        </ul>   
                    </div>
                </div>
            </div>

            <%@include file="base/footer.jsp" %>  

        </div>   
    </body>

    <%@include file="base/js.jsp" %>  
</html>