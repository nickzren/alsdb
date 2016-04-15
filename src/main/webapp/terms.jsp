<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Terms</title>

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
                <h3 class="page-header">Terms</h3>

                <h4><i class="fa fa-gavel"></i> Terms of use</h4>
                <p>
                    This website is intended to provide results from exome sequencing data of mostly sporadic 
                    ALS samples. The contents of the ALSdb is intended strictly for educational and research purposes. 
                    The data derived from this website may not be used for any commercial purpose. The data from this 
                    website may not be replicated on any other website without written consent.
                </p>

                <br/>

                <h4><i class="fa fa-star"></i> Citation</h4>                
                <p>ALSdb,  New York City, New York (URL: http://alsdb.org) [date (month, year) accessed].</p>
                <p>                    
                    Elizabeth T. Cirulli, Brittany N. Lasseigne, Slavé Petrovski, Peter C. Sapp, Patrick A. Dion, 
                    Claire S. Leblond, Julien Couthouis, Yi-Fan Lu, Quanli Wang, Brian J. Krueger, Zhong Ren, 
                    Jonathan Keebler, Yujun Han, Shawn E. Levy, Braden E. Boone, Jack R. Wimbish, Lindsay L. Waite, 
                    Angela L. Jones, John P. Carulli, Aaron G. Day-Williams, John F. Staropoli, Winnie W. Xin, 
                    Alessandra Chesi, Alya R. Raphael, Diane McKenna-Yasek, Janet Cady, J.M.B. Vianney de Jong, 
                    Kevin P. Kenna, Bradley N. Smith, Simon Topp, Jack Miller, Athina Gkazi, FALS Sequencing Consortium, 
                    Ammar Al-Chalabi, Leonard H. van den Berg, Jan Veldink, Vincenzo Silani, Nicola Ticozzi, 
                    Christopher E. Shaw, Robert H. Baloh, Stanley Appel, Ericka Simpson, Clotilde Lagier-Tourenne, 
                    Stefan M. Pulst, Summer Gibson, John Q. Trojanowski, Lauren Elman, Leo McCluskey, Murray Grossman, 
                    Neil A. Shneider, Wendy K. Chung, John M. Ravits, Jonathan D. Glass, Katherine B. Sims, Vivianna M. 
                    Van Deerlin, Tom Maniatis, Sebastian D. Hayes,, Alban Ordureau, Sharan Swarup, John Landers, Frank Baas, 
                    Andrew S. Allen, Richard S. Bedlack, J. Wade Harper, Aaron D. Gitler, Guy A. Rouleau, Robert Brown, 
                    Matthew B. Harms, Gregory M. Cooper, Tim Harris, Richard M. Myers, David B. Goldstein. (in press 2015) 
                    Exome sequencing in amyotrophic lateral sclerosis identifies risk genes and pathways. 
                    <em>Science <a href="http://www.sciencemag.org/lookup/doi/10.1126/science.aaa3650" 
                                   target="_blank">DOI: 10.1126/science.aaa3650</a></em>.
                </p>
            </div>

        </div>

        <%@include file="base/footer.jsp" %>  

        <%@include file="base/counter.jsp" %>  
    </body>
</html>