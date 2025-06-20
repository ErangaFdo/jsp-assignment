package lk.ijse.gdse.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.ijse.gdse.Model.LoginModel;

import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String username = req.getParameter("username");
         String password = req.getParameter("password");

         LoginModel loginModel = new LoginModel();
         String role = loginModel.checkLogin(username, password);

         if( role != null){
             HttpSession session = req.getSession();
             session.setAttribute("uname", username);
             if (role.equals("admin")){
                   req.setAttribute("message", "Login successful! Welcome Admin.");
                 req.getRequestDispatcher("adminDashboard.jsp").forward(req, resp);
             } else if (role.equals("user")){
                 req.setAttribute("message", "Login successful! Welcome User.");
                 req.getRequestDispatcher("userDashboard.jsp").forward(req, resp);
             }else {
                 req.setAttribute("message", "Login failed!");
                 System.out.println("Invalid username or password");
                 req.getRequestDispatcher("Login.jsp").forward(req, resp);
         }

         } else {
             resp.sendRedirect("Login.jsp");
         }
    }
}
