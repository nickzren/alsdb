<%@page import="util.FormatManager"%>
<%@page import="object.Variant"%>
<%@page import="java.util.ArrayList"%>

<%
    Variant variant = (Variant) request.getAttribute("variant");
%>

<div class="row">    
    <div class="col-md-10">
        <h4>
            <mark>Query: <%=request.getAttribute("query")%></mark>
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
                  title="Allele Frequency of variant">
                AF: <%=variant.getAF()%>
            </span>
            &nbsp;
            <a class="btn btn-default" href="http://atavdb.org/variant/${query}" target="_blank">ATAVDB</a> 
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
    }
%>