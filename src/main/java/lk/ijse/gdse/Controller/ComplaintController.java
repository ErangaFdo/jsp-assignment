package lk.ijse.gdse.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.gdse.Model.CompliantModel;

import java.io.IOException;
import java.util.UUID;

@WebServlet("/complaint")
public class ComplaintController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String complaintID = UUID.randomUUID().toString();
        String username = req.getParameter("username");
        String Subject = req.getParameter("subject");
        String description = req.getParameter("description");
        String date = req.getParameter("date");
        String status = req.getParameter("status");

        CompliantModel compliantModel = new CompliantModel();
        boolean isSaved = compliantModel.saveComplaint(complaintID, username, Subject, description, date, status);
        if (isSaved) {
            resp.sendRedirect("userComplaint.jsp?username=" + username);
        } else {
            req.setAttribute("massage" ,"Faild");
            req.getRequestDispatcher("userDashboard.jsp").forward(req, resp);
        }
    }
}
