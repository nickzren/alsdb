<%@page import="util.FormatManager"%>
<%@page import="object.Variant"%>
<%@page import="java.util.ArrayList"%>

<%
    String query = (String) request.getAttribute("query");
    ArrayList<Variant> variantList = (ArrayList<Variant>) request.getAttribute("variantList");
    String errorMsg = (String) request.getAttribute("errorMsg");
    String url = (String) request.getAttribute("url");
%>

<div class="row">
    <div class="col-md-10">
        <h4>
            <mark><%="Region: " + query%></mark>
                <%if (!variantList.isEmpty()) {%>            
            <span class="label label-default" data-toggle="tooltip" 
                  title="Total tally of variants linked to this region">
                Variant Count: <%=variantList.size()%>
            </span>
                <%}%>
        </h4>
    </div>

    <%if (!variantList.isEmpty()) {%>
    <div class="col-md-2" >
        <a style="float: right" href="<%=url%>">
            <button type="button" class="btn btn-default" data-toggle="tooltip" 
                    title="Download variant information with additional fields">
                <i class="fa fa-download">
                    Download
                </i>
            </button>
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
                   title="Minor Allele Frequency of variant in the case population">
                    MAF
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
                <%=variant.getAlleleCount()%>
            </td>
            <td>
                <%=variant.getSampleCount()%>
            </td>
            <td>
                <%=variant.getMaf()%>
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
                3: {sorter: false},
                4: {sorter: false}
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