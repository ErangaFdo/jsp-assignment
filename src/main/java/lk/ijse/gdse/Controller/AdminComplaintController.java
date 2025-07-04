package lk.ijse.gdse.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.gdse.Model.CompliantModel;

import java.io.IOException;

@WebServlet("/admincomplaint")
public class AdminComplaintController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String action = req.getParameter("action");
        CompliantModel compliantModel = new CompliantModel();

        switch (action) {
            case "update":
                String cid = req.getParameter("cid");
//                String username = req.getParameter("uname");
//                String subject = req.getParameter("subject");
//                String date = req.getParameter("date");
//                String description = req.getParameter("description");
                String status = req.getParameter("status");

                boolean update = compliantModel.updateComplaintStatus(cid, status);

                if (update) {
                    System.out.println("update complaint");
                } else {
                    System.out.println("update not complaint");
                }
                req.getRequestDispatcher("adminDashboard.jsp").forward(req, resp);
                break;

            case "delete":
                String deleteCid = req.getParameter("cid");
                boolean delete = compliantModel.deleteCompliant(deleteCid);
                if (delete) {
                    System.out.println("delete complaint");
                } else {
                    System.out.println("delete not complaint");
                }
                req.getRequestDispatcher("adminDashboard.jsp").forward(req, resp);
                break;
            default:
                req.getRequestDispatcher("adminDashboard.jsp").forward(req, resp);

        }

    }
}
