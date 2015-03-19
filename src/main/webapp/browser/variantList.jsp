<%@page import="igm.alsdb.object.Annotation"%>
<%@page import="igm.alsdb.object.Variant"%>
<%@page import="java.util.ArrayList"%>

<%
    String query = (String) request.getAttribute("query");
    ArrayList<Variant> variantList = (ArrayList<Variant>) request.getAttribute("variantList");
    String errorMsg = (String) request.getAttribute("errorMsg");
    String url = (String) request.getAttribute("url");

    String label;
    if (query.contains(":")) {
        label = "Region: " + query;
    } else {
        label = "Gene: " + query;
    }
%>

<div class="row">
    <div class="col-md-10">
        <h4><%=label%> 
            <%if (!variantList.isEmpty()) {%>            
            <span class="label label-default" data-toggle="tooltip" 
                   title="Total tally of variants linked to this gene/region">
                Variant Count: <%=variantList.size()%>
            </span>
            <%if (!query.contains(":")) // gene
                {%>
            &nbsp;
            <span class="label label-default" data-toggle="tooltip" 
                   title="Genic intolerance percentile score for gene">
                <a class="white" href="http://chgv.org/GenicIntolerance/" target="_blank">
                    RVIS Percentile</a>: 
                <%=variantList.get(0).getAll01MafRvisPercentile()%>
            </span>
            <%}
                }%>
        </h4>
    </div>

    <%if (!variantList.isEmpty()) {%>
    <div class="col-md-2" >
        <a style="float: right" href="<%=url%>" >
            <button type="button" class="btn btn-primary" data-toggle="tooltip" 
                   title="Download variant information with additional fields">
                Download</button>
        </a>
    </div>
    <%}%>
</div>

<%
    if (variantList.isEmpty()) {
%>

<br/>

<div class="alert alert-warning" style="width:24%">
    No results found from search query.
</div>

<%
} else {
%>   

<table id="variantList" class="tablesorter">
    <thead> 
        <tr> 
            <th class="text-center" style="cursor: pointer;">
                <a class="black" data-toggle="tooltip" 
                   title="Chromsome - Position - Reference - Variant">
                    Variant
                </a>
            </th> 
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Ensembl Transcript ID">
                    Transcript
                </a>
            </th> 
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Amino-acid change">
                    AA Change
                </a>
            </th> 
            <th class="text-center sorter-rank" style="cursor: pointer;">
                <a class="black" data-toggle="tooltip" 
                   title="Predicted variant effect">
                    Consequence
                </a>
            </th> 
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Number of observed alleles in the case population">
                    Allele Count
                </a>
            </th>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Number of samples with at least 10-fold coverage at 
                   site and that passed quality control">
                    Sample Count
                </a>
            </th>
            <th class="text-center" style="cursor: pointer;">
                <a class="black" data-toggle="tooltip" 
                   title="Minor Allele Frequency of variant">
                    MAF
                </a>
            </th>
            <th class="text-center">
                <a href="http://www.nature.com/ng/journal/v46/n3/abs/ng.2892.html"
                   class="black" target="_blank" 
                   data-toggle="tooltip" title="The Combined Annotation Dependent Depletion (CADD) score">
                    CADD Score
                </a>
            </th>
        </tr> 
    </thead> 

    <tbody>
        <%
            for (Variant variant : variantList) {
        %>

        <tr class="text-center">
            <td>
                <a href="Search?query=<%=variant.getIdStr()%>">
                    <%=variant.getIdStr()%>
                </a>
            </td>
            <td>
                <%=variant.getAnnotation().getTranscript()%>
            </td>
            <td>
                <%=variant.getAnnotation().getAaChange()%>
            </td>
            <td data-rank="<%=variant.getAnnotation().getIgmRank()%>">
                <%=variant.getAnnotation().getConsequence()%>
            </td>
            <td>
                <%=variant.getAlleleCount()%>
            </td>
            <td>
                <%=variant.getSampleCount()%>
            </td>
            <td>
                <%=variant.getMaf()%>
            </td>
            <td>
                <%=variant.getCscore()%>
            </td>
        </tr>

        <%
            }
        %>

    </tbody>

</table>

<script type="text/javascript">
    $(function () {
        $('#variantList').tablesorter({
            theme: "bootstrap",
            headerTemplate: '{content} {icon}',
            widgets: ["uitheme"],
            headers: {
                1: {sorter: false},
                2: {sorter: false},
                4: {sorter: false},
                5: {sorter: false},
                7: {sorter: false}
            }
        });

        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<%
    }

    if (!errorMsg.isEmpty()) {
%>

<p><span class="label label-danger">Warning:</span> <%=errorMsg%></p>    

<%
    }
%>