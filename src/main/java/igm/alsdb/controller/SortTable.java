package igm.alsdb.controller;

import igm.alsdb.model.Download;
import igm.alsdb.model.Input;
import igm.alsdb.model.Output;
import igm.alsdb.model.Sort;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nick
 */
public class SortTable extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (Sort.column == null
                    || !Sort.column.equalsIgnoreCase(request.getParameter("column"))) {
                Sort.init(request);
            }

            setRequest(request);

            request.getRequestDispatcher("browser.jsp").forward(request, response);
        } catch (Exception ex) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    private void setRequest(HttpServletRequest request) {
        request.setAttribute("query", Input.query);
        request.setAttribute("table", Input.table);
        request.setAttribute("variant", Output.variant);
        request.setAttribute("variantList", Output.variantList);
        request.setAttribute("errorMsg", Output.errorMsg);
        request.setAttribute("url", Download.url);
        request.setAttribute("column", Sort.column);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "alsdb sort table";
    }

}
