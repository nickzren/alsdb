<script type="text/javascript" src="js/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script>

<script type="text/javascript">
    $(function () {

        $.tablesorter.addParser({
            // use a unique id
            id: 'rank',
            is: function (s, table, cell, $cell) {
                // s is the text from the cell
                // table is the current table (as a DOM element; not jQuery object)
                // cell is the current table cell (DOM element)
                // $cell is the current table cell (jQuery object; added v2.18.0)
                // return false if you don't want this parser to be auto detected
                return false;
            },
            format: function (s, table, cell, cellIndex) {
                // s is the text from the cell
                // table is the current table (as a DOM element; not jQuery object)
                // cell is the current table cell (DOM element)
                // cellIndex is the current cell's column index
                // format your data for normalization
                // (i.e. do something to get and/or modify your data, then return it)
                var $cell = $(cell);
                return $cell.attr('data-rank') || s;
            },
            // flag for filter widget (true = ALWAYS search parsed values; false = search cell text)
            parsed: true,
            // set the type to either numeric or text (text uses a natural sort function
            // so it will work for everything, but numeric is faster for numbers
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