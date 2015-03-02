<%@page import="igm.alsdb.object.Variant"%>
<%@page import="igm.alsdb.object.Annotation"%>
<%@page import="java.util.ArrayList"%>

<%
    Variant variant = (Variant) request.getAttribute("variant");
%>

<div class="row">
    <div class="col-md-10">
        <h4>Variant: <%=request.getAttribute("query")%>
            <%if (variant != null) {%>
            <span class="label label-default">
                Allele Count: <%=variant.getAlleleCount()%>
            </span>
            &nbsp;
            <span class="label label-default">
                Minor Allele Frequency: <%=variant.getMaf()%>
            </span> 
            &nbsp;
            <span class="label label-default">
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

<table class="table table-condensed table-hover">
    <thead>
        <tr style="font-weight:bold;">
            <td>Gene</td>
            <td>Transcript</td>
            <td>Codon Change</td>
            <td>AA Change</td>
            <td>CCDS</td>
            <td>Consequence</td>
            <td>Polyphen Humvar</td>
            <td>Sift</td>
        </tr> 
    </thead>

    <%
        for (ArrayList<Annotation> list : variant.getGeneAnnotationMap().values()) {
            for (Annotation annotation : list) {
    %>

    <tr>
        <td>
            <a href="Controller?query=<%=annotation.getGeneName()%>">
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
        <td>
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

</table>

<%
    }
%>