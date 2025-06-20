package lk.ijse.gdse.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.gdse.Dto.ComplaintDto;
import lk.ijse.gdse.Model.CompliantModel;

import java.io.IOException;
import java.util.List;

@WebServlet("/userComplaintView")
public class userComplaintView extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");

        if (uname == null || uname.isEmpty()) {
            req.setAttribute("message", "Username is required.");
            req.getRequestDispatcher("userComplaint.jsp").forward(req, resp);
            return;
        }

        CompliantModel model = new CompliantModel();
        List<ComplaintDto> complaintList = model.getComplaintByuser(uname);

        req.setAttribute("complaints", complaintList);
        req.setAttribute("uname", uname);
        req.getRequestDispatcher("userComplaint.jsp").forward(req, resp);
    }
}
