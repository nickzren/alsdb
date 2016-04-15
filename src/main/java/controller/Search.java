package controller;

import model.Download;
import util.DBManager;
import model.Input;
import model.Output;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nick
 */
public class Search extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (Input.query == null
                    || !Input.query.equalsIgnoreCase(request.getParameter("query"))) {

                if (Download.rootPath == null) {
                    Download.rootPath = getServletContext().getRealPath("/downloads/");
                }

                DBManager.init();

                Input.init(request);

                Output.init();
            }

            setRequest(request);

            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception ex) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    private void setRequest(HttpServletRequest request) {
        request.setAttribute("query", Input.query);
        request.setAttribute("table", Input.table);
        request.setAttribute("variant", Output.variant);
        request.setAttribute("variantList", Output.variantList);
        request.setAttribute("rvisPercentile", Output.rvisPercentile);
        request.setAttribute("errorMsg", Output.errorMsg);
        request.setAttribute("url", Download.url);
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
