<%@page import="util.FormatManager"%>
<%@page import="object.Variant"%>
<%@page import="java.util.ArrayList"%>

<%
    Variant variant = (Variant) request.getAttribute("variant");
%>

<div class="row">    
    <div class="col-md-10">
        <h4>
            <mark>Variant: <%=request.getAttribute("query")%></mark>
                <%if (variant != null) {%>
            <span class="label label-default" data-toggle="tooltip" 
                  title="Number of observed alleles in the case population">
                Allele Count: <%=variant.getAlleleCount()%>
            </span>
            &nbsp;
            <span class="label label-default" data-toggle="tooltip" 
                  title="Number of samples with at least 10-fold coverage at 
                  site and that passed quality control">
                Sample Count: <%=variant.getSampleCount()%>
            </span>
            &nbsp;
            <span class="label label-default" data-toggle="tooltip" 
                  title="Minor Allele Frequency of variant">
                MAF: <%=variant.getMaf()%>
            </span>
            <%}%>
        </h4>
    </div>
</div>

<%
    if (variant == null) {
%>

<br/>

<div class="alert alert-warning" style="width:24%">
    No results found from search query.
</div>

<%
} else {
%>

<table id="variant" class="tablesorter">
    <thead>
        <tr>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="HGNC Gene name">
                    Gene
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
                   title="Corresponding codon change">
                    Codon Change
                </a>
            </th>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Amino-acid change">
                    AA Change
                </a>
            </th>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="Consensus Coding Sequence (CCDS) ID">
                    CCDS
                </a>
            </th>
            <th class="text-center" style="cursor: pointer">
                <a class="black" data-toggle="tooltip" 
                   title="Predicted variant effect">
                    Consequence
                </a>
            </th>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title=" The predicted PolyPhen-2 HumVar score through Ve!P">
                    PolyPhen-2 HumVar
                </a>
            </th>
            <th class="text-center">
                <a class="black" data-toggle="tooltip" 
                   title="The predicted SIFT score through Ve!P">SIFT
                </a>
            </th>
        </tr> 
    </thead>

    <tbody>
       
    </tbody>
</table>

<script type="text/javascript">
    $(function () {
        $('#variant').tablesorter({
            theme: "bootstrap",
            headerTemplate: '{content} {icon}',
            widgets: ["uitheme"],
            headers: {
                0: {sorter: false},
                1: {sorter: false},
                2: {sorter: false},
                3: {sorter: false},
                4: {sorter: false},
                6: {sorter: false},
                7: {sorter: false}
            }
        });

        $('[data-toggle="tooltip"]').tooltip();
    });
</script>      

<%
    }
%>