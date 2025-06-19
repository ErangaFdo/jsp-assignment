<%@ page import="lk.ijse.gdse.Model.CompliantModel" %>
<%@ page import="lk.ijse.gdse.Dto.ComplaintDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - CMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #e0eafc, #cfdef3);
        }
        .table td, .table th {
            vertical-align: middle;
        }
        .btn-warning:hover {
            background-color: #e0a800;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">CMS Admin</a>
        <div class="d-flex">
            <a href="Login.jsp" class="btn btn-outline-light btn-sm">Logout</a>
        </div>
    </div>
</nav>

<!-- Admin Table View -->
<div class="container mt-5">

        <h3>📋 All Complaints</h3>

    <%
        String username = request.getParameter("username");
        String subject  = request.getParameter("subject");
        String  date  = request.getParameter("date");
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        CompliantModel compliantModel = new CompliantModel();
        List<ComplaintDto> complaintDtos= compliantModel.getallComplaint(username,subject,date,description,status);
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

                        <form action="updateFrom.jsp" method="post" style="display: inline-block">
                            <input type="hidden" name="action" value="update">
                            <input type="hidden" name="cid" value="<%=complaintDto.getCid()%>">
                            <input type="hidden" name="uname" value="<%=complaintDto.getUname()%>">
                            <input type="hidden" name="subject" value="<%=complaintDto.getSubject()%>">
                            <input type="hidden" name="date" value="<%=complaintDto.getDate()%>">
                            <input type="hidden" name="description" value="<%=complaintDto.getDescription()%>">
                            <input type="hidden" name="status" value="<%=complaintDto.getStatus()%>">
                            <button type="submit" class="btn btn-warning btn-sm">Update</button>
                        </form>

                        <form action="admincomplaint" method="post" style="display: inline-block">
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
