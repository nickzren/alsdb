<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>ALS Data Browser (ALSdB) | ALS | Amyotrophic Lateral Sclerosis</title>

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
    </head>

    <body>
        <div class="container">

            <%@include file="base/header.jsp" %>

            <div class="container-main">
                <div class="jumbotron" style="padding:20px 40px 20px 50px">
                    <h1>ALSdb</h1>
                    <p>The ALS Data Browser is a catalogue of genetic variants identified from 
                        <a href="download.jsp">2,869 Caucasian patients</a> 
                        recruited and sequenced for their diagnosis of Amyotrophic Lateral Sclerosis. 
                        Approximately 93.5% of these cases are sporadic. 
                        The database includes single nucleotide substitution variants 
                        (SNVs) and insertion and deletion (indels) variants. 
                        Funding for this study was provided by Biogen Idec.</p>
                    <p>
                        <a class="btn btn-primary btn-lg" href="browser.jsp">
                            <i class="fa fa-bar-chart">
                                Browse data now!
                            </i>
                        </a>
                    </p>
                </div>

                <br/>

                <div class="row">
                    <div class="col-xs-6 col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-university"></i>
                                <strong>Sequencing centers</strong>
                            </div>
                            <div class="panel-body">
                                <ul>
                                    <li><a href="http://igm.columbia.edu" target="_blank">Institute for Genomic Medicine</a></li>
                                    <li><a href="http://hudsonalpha.org/" target="_blank">HudsonAlpha</a></li>
                                    <li><a href="http://www.laboguyrouleau.ca/" target="_blank">McGill University</a></li>
                                    <li><a href="http://gitlerlab.googlepages.com/" target="_blank">Stanford University</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-link"></i>
                                <strong>Affiliate sites</strong>
                            </div>
                            <div class="panel-body">
                                <ul>
                                    <li>
                                        <a href="http://als.umassmed.edu/" target="_blank">
                                            ALS Variant Server (AVS)
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://epi4kdb.org/" target="_blank">
                                            Epi4K Data Browser (Epi4Kdb)
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://genic-intolerance.org/" target="_blank">
                                            Residual Variation Intolerance Score (RVIS)
                                        </a>
                                    </li>
                                </ul> 
                            </div>
                        </div>  
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-users"></i>
                                <strong>Website team</strong>                              
                            </div>
                            <div class="panel-body">
                                <ul>
                                    <li>
                                        <a class="black" href="https://github.com/nickzren" target="_blank">
                                            Nick Ren
                                        </a>
                                    </li>  
                                    <li>Joshua Bridgers</li>                          
                                    <li>Quanli Wang</li>
                                    <li>Slavé Petrovski</li>
                                </ul> 
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %> 
    </body>
</html>