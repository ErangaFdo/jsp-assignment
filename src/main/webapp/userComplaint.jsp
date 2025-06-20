<%@ page import="lk.ijse.gdse.Model.CompliantModel" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.gdse.Dto.ComplaintDto" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Complaints - CMS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e0eafc);
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">📄 My Complaints</a>
        <div class="d-flex">
            <a href="userDashboard.jsp" class="btn btn-outline-light btn-sm me-2">➕ New Complaint</a>
            <a href="Login.jsp" class="btn btn-outline-light btn-sm">🚪 Logout</a>
        </div>
    </div>
</nav>

<!-- Complaint Table -->
<div class="container mt-5">



        <h4 class="text-primary mb-0">🧾 Complaint History</h4>


    <%
        String uname = (String) session.getAttribute("uname");
        if (uname == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        CompliantModel model = new CompliantModel();
        List<ComplaintDto> complaintDtos = model.getComplaintByuser(uname);
    %>




            <table class="table table-striped mb-0">
                <thead class="table-dark">
                <tr>
                    <th>User Name</th>
                    <th>Subject</th>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th class="text-center">Actions</th>

                </tr>
                </thead>
                <tbody>
                <% for (ComplaintDto complaintDto : complaintDtos){ %>
                <tr>
                    <td><%= complaintDto.getUname() %></td>
                    <td><%= complaintDto.getSubject() %></td>
                    <td><%= complaintDto.getDate()%></td>
                    <td><%= complaintDto.getDescription()%></td>
                    <td><%= complaintDto.getStatus()%></td>
                    <td>
                        <form action="userUpdateForm.jsp" method="post" style="display: inline-block">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="cid" value="<%=complaintDto.getCid()%>">
                            <input type="hidden" name="uname" value="<%=complaintDto.getUname()%>">
                            <input type="hidden" name="subject" value="<%=complaintDto.getSubject()%>">
                            <input type="hidden" name="date" value="<%=complaintDto.getDate()%>">
                            <input type="hidden" name="description" value="<%=complaintDto.getDescription()%>">
                            <input type="hidden" name="status" value="<%=complaintDto.getStatus()%>">
                            <button type="submit" class="btn btn-warning btn-sm">Update</button>
                        </form>

                        <form action="userupdateform" method="post" style="display: inline-block">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="cid" value="<%=complaintDto.getCid()%>">
                            <button type="submit" class="btn btn-warning btn-sm">Delete</button>
                        </form>

                    </td>

                </tr>
                <% } %>
                </tbody>
            </table>


</div>

</body>
</html>
