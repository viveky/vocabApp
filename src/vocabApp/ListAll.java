package vocabApp;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ListAll extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {
            resp.setContentType("text/plain");
            resp.sendRedirect("/jsp/listall.jsp");
        }

}
