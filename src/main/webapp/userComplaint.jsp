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
    <div class="card">
        <div class="card-header bg-white text-center">
            <h4 class="text-primary mb-0">🧾 Complaint History</h4>
        </div>
        <div class="card-body p-0">

            <table class="table table-striped mb-0">
                <thead class="table-dark">
                <tr>
                    <th>User Name</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
