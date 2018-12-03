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

<br>

<div style="max-width: 900px; margin: 0 auto;">
    <variant-request refgenome="hg19" query="<%=variant.getIdStr()%>"></variant-request>
    <variant-details></variant-details>
    <region-browser></region-browser>
    <gwas-results></gwas-results>
    <structural-browser></structural-browser>
    <transcripts-results></transcripts-results>
    <ncbi-clinvar></ncbi-clinvar>
    <uniprot-variants></uniprot-variants>

    <frequencies-dbs></frequencies-dbs>
    <cancer-dbs></cancer-dbs>
    <prediction-scores></prediction-scores>

    <genes-results></genes-results>
</div>

<%
    }
%>

<script>
    var varsomeConfig = {
        api_url: 'https://api.varsome.com',
        static_token: 'fQ0dFl#wgsH4xuIZouU9*kMHZirF*SkY#4$hT?xJ'
    }
</script>
<script src="https://assets.varsome.com/static/components/components-bundle.js"></script>