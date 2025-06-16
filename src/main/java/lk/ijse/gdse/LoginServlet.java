package lk.ijse.gdse;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
             if (role.equals("admin")){
                   resp.sendRedirect("adminDashboard.jsp");
             } else if (role.equals("user")){
                 resp.sendRedirect("userDashboard.jsp");
             }else {
                 System.out.println("Invalid username or password");
                 resp.sendRedirect("Login.jsp");
         }

         } else {
             resp.sendRedirect("Login.jsp");
         }
    }
}
