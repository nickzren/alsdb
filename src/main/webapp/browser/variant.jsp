<%@page import="igm.alsdb.object.Variant"%>
<%@page import="igm.alsdb.object.Annotation"%>
<%@page import="java.util.ArrayList"%>

<%
    Variant variant = (Variant) request.getAttribute("variant");
%>

<p class="lead">
    <span class="label label-info">Note</span> 
    <small>This screen lists all Ensembl-based 
        annotations for the selected variant. This includes annotations with 
        overlapping genes.</small>
</p>

<div class="row">    
    <div class="col-md-10">
        <h4>Variant: <%=request.getAttribute("query")%>
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
            &nbsp;
            <span class="label label-default" data-toggle="tooltip" 
                  title="The Combined Annotation Dependent Depletion (CADD) score">
                CADD Score: <%=variant.getCscore()%>
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
        <%
            for (ArrayList<Annotation> list : variant.getGeneAnnotationMap().values()) {
                for (Annotation annotation : list) {
        %>

        <tr class="text-center">
            <td>
                <a href="Search?query=<%=annotation.getGeneName()%>">
                    <%=annotation.getGeneName()%>
                </a>
            </td>
            <td>
                <%=annotation.getTranscript()%>
            </td>
            <td>
                <%=annotation.getCodonChange()%>
            </td>
            <td>
                <%=annotation.getAaChange()%>
            </td>
            <td>
                <%=annotation.getCcds()%>
            </td>
            <td data-rank="<%=annotation.getIgmRank()%>">
                <%=annotation.getConsequence()%>
            </td>
            <td>
                <%=annotation.getPolyphenHumvar()%>
            </td>
            <td>
                <%=annotation.getSift()%>
            </td>
        </tr>

        <%
                }
            }
        %>
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