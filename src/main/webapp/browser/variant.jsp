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

<table id="variant" class="table table-hover tablesorter">
    <thead>
        <tr>
            <th class="text-center">Gene</th>
            <th class="text-center">Transcript</th>
            <th class="text-center">Codon Change</th>
            <th class="text-center">AA Change</th>
            <th class="text-center">CCDS</th>
            <th class="text-center">Consequence</th>
            <th class="text-center">Polyphen Humvar</th>
            <th class="text-center">Sift</th>
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
            <td data-rank="<%=annotation.getIgmRank()%>">
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
    });
</script>      

<%
    }
%>