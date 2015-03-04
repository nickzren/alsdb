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
            <span class="label label-default" >
                Variant Count: <%=variantList.size()%>
            </span>
            <%}
                if (!query.contains(":")) // gene
                {%>
            &nbsp;
            <span class="label label-default">
                RVIS Percentile: <%=variantList.get(0).getAll01MafRvisPercentile()%>
            </span>
            <%} %>
        </h4>
    </div>

    <%if (!variantList.isEmpty()) {%>
    <div class="col-md-2" >
        <a style="float: right" href="<%=url%>" >
            <button type="button" class="btn btn-primary">Download</button>
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

<table class="table table-condensed table-hover text-center">
    <thead>
        <tr style="font-weight:bold;">
            <td>Variant</td>
            <td>Transcript</td>
            <td>AA Change</td>
            <td>Consequence</td>
            <td>Allele Count</td>
            <td>Minor Allele Frequency</td>
            <td>CADD Score</td>
        </tr> 
    </thead>

    <%
        for (Variant variant : variantList) {
    %>

    <tr>
        <td>
            <a href="Controller?query=<%=variant.getIdStr()%>">
                <%=variant.getIdStr()%>
            </a>
        </td>
        <td>
            <%=variant.getAnnotation().getTranscript()%>
        </td>
        <td>
            <%=variant.getAnnotation().getAaChange()%>
        </td>
        <td>
            <%=variant.getAnnotation().getConsequence()%>
        </td>
        <td>
            <%=variant.getAlleleCount()%>
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

</table>

<%
    }

    if (!errorMsg.isEmpty()) {
%>

<p><span class="label label-danger">Warning:</span> <%=errorMsg%></p>    

<%
    }
%>