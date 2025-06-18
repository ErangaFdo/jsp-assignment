<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/18/2025
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <title>Update Complaint - Second Chance</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8fafc;
            font-family: 'Segoe UI', sans-serif;
        }

        .form-container {
            max-width: 600px;
            margin: auto;
        }

        .card {
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
            border: none;
        }

        .card-header {
            background-color: #2193b0;
            color: white;
            border-radius: 16px 16px 0 0;
            padding: 20px;
        }

        .btn-primary {
            background-color: #2193b0;
            border: none;
        }

        .btn-primary:hover {
            background-color:#2193b0;
        }
    </style>
</head>
<body>

<div class="container mt-5 form-container">
    <div class="card">
        <div class="card-header">
            <h4 class="mb-0">Update Complaint</h4>
        </div>
        <div class="card-body p-4">
            <form action="admincomplaint" method="post">
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="cid" value="<%= request.getParameter("cid") %>">

                <div class="mb-3">
                    <label class="form-label">User Name</label>
                    <input type="text" name="uname" class="form-control" value="<%= request.getParameter("uname") %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Subject</label>
                    <input type="text" name="subject" class="form-control" value="<%= request.getParameter("subject") %>" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Date</label>
                    <input type="date" name="date" class="form-control" value="<%= request.getParameter("date") %>" required>
                </div>


                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <textarea name="description" class="form-control" rows="4" required><%= request.getParameter("description") %></textarea>
                </div>



                <div class="mb-4">
                    <label class="form-label">Status</label>
                    <input type="text" name="status" class="form-control" value="<%= request.getParameter("status") %>" required>
                </div>

                <div class="d-flex justify-content-end gap-2">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <a href="adminDashboard.jsp" class="btn btn-outline-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
</title>
</head>
<body>

</body>
</html>
