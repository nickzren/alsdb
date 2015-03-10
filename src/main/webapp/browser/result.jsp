<script type="text/javascript" src="js/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.widgets.js"></script>

<script type="text/javascript">
    $(function () {
        $.tablesorter.themes.bootstrap = {
            table: 'table table-hover tablesorter',
            iconSortNone: 'glyphicon glyphicon-sort', // class name added to icon when column is not sorted
            iconSortAsc: 'icon-chevron-up glyphicon glyphicon-sort-by-attributes', // class name added to icon when column has ascending sort
            iconSortDesc: 'icon-chevron-down glyphicon glyphicon-sort-by-attributes-alt', // class name added to icon when column has descending sort
        };

        $.tablesorter.addParser({
            id: 'rank',
            is: function (s, table, cell, $cell) {
                // return false if you don't want this parser to be auto detected
                return false;
            },
            format: function (s, table, cell, cellIndex) {
                var $cell = $(cell);
                return $cell.attr('data-rank') * -1 || s;
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