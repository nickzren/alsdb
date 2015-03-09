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
            <%if (!query.contains(":")) // gene
                {%>
            &nbsp;
            <span class="label label-default">
                RVIS Percentile: <%=variantList.get(0).getAll01MafRvisPercentile()%>
            </span>
            <%}
                }%>
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

<table id="variantList" class="table table-hover tablesorter">
    <thead> 
        <tr> 
            <th class="text-center" style="cursor: pointer;">
                Variant <span class="glyphicon glyphicon-sort"></span></th> 
            <th class="text-center">Transcript</th> 
            <th class="text-center">AA Change</th> 
            <th class="text-center sorter-rank" style="cursor: pointer;">
                Consequence <span class="glyphicon glyphicon-sort"></span></th> 
            <th class="text-center">Allele Count</th>
            <th class="text-center" style="cursor: pointer;">
                Minor Allele Frequency <span class="glyphicon glyphicon-sort"></span></th>
            <th class="text-center">CADD Score</th>
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
            // pass the headers argument and assing a object 
            headers: {
                1: {sorter: false},
                2: {sorter: false},
                4: {sorter: false},
                6: {sorter: false}
            }
        });
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