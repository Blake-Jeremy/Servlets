package blake.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", urlPatterns={"/Servlet"})
public class Servlet extends HttpServlet {
    // Displayed when post variables are passed to servlet
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String country = request.getParameter("country");
        // Check if login variables were properly filled in
        if ( request.getParameter("username").isEmpty() || request.getParameter("password").isEmpty() ) {
            String errorMessage = "All fields must have an entry, please try again.";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            out.println("<html><head><style>div{border-radius:5px;background-color:#f2f2f2;padding:20px;}</style></head><body>");
            out.println("<h3>Secret Login Information</h3>");
            out.println("<div><p>Username: " + username + "</p>");
            out.println("<p>Password: " + password + "</p>");
            out.println("<p>Server Country: " + country + "</p></div>");
            out.println("<button onclick=\"goBack()\">Go Back</button><script>function goBack(){window.history.back();}</script>");
            out.println("</body></html>");
        }
    }
    // Displayed when servlet is accessed directly
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<html><head><style>div{border-radius:5px;background-color:#f2f2f2;padding:20px;}</style></head><body>");
        out.println("<h3>Something went wrong</h3>");
        out.println("<div><p>This page is not accessible this way.</p></div>");
        out.println("<button onclick=\"goBack()\">Go Back</button><script>function goBack(){window.history.back();}</script>");
        out.println("</body></html>");
    }
}
