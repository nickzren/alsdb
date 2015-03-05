package igm.alsdb.controller;

import igm.alsdb.model.Download;
import igm.alsdb.util.DBManager;
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
 * @author Nick
 */
public class SearchQuery extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (Input.query == null
                    || !Input.query.equalsIgnoreCase(request.getParameter("query"))) {

                if (Download.rootPath == null) {
                    Download.rootPath = getServletContext().getRealPath("/download/");
                }

                DBManager.init();

                Input.init(request);

                Output.init();
            }
        } catch (Exception ex) {
            Output.errorMsg = "error occurred!";
        }

        setRequest(request);

        request.getRequestDispatcher("browser.jsp").forward(request, response);
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
        return "alsdb search query";
    }
}
