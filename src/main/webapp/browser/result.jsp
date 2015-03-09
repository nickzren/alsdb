<script type="text/javascript" src="js/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script>

<script type="text/javascript">
    $(function () {

        $.tablesorter.addParser({
            id: 'rank',
            is: function (s, table, cell, $cell) {
                // return false if you don't want this parser to be auto detected
                return false;
            },
            format: function (s, table, cell, cellIndex) {
                var $cell = $(cell);
                return $cell.attr('data-rank') || s;
            },
            // flag for filter widget (true = ALWAYS search parsed values; false = search cell text)
            parsed: true,

            type: 'numeric'
        });
    });
</script>

<%
    String table = (String) request.getAttribute("table");
%>

<%
    if (table != null) {
        if (table.equals("variant")) {
%>

<%@include file="variant.jsp" %>  

<%    } else {
%>

<%@include file="variantList.jsp" %>  

<%    }
    }
%>