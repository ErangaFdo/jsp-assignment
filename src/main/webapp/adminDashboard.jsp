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
        <a class="navbar-brand fw-bold" href="#">🛠️ CMS Admin</a>
        <div class="d-flex">
            <a href="login.jsp" class="btn btn-outline-light btn-sm">Logout</a>
        </div>
    </div>
</nav>

<!-- Admin Table View -->
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h3>📋 All Complaints</h3>
        <button class="btn btn-outline-secondary btn-sm">Export to Excel</button>
    </div>

    <div class="card shadow-sm">
        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <thead class="table-dark">
                <tr>
                    <th>User Name</th>
                    <th>Subject</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th class="text-center">Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Eranga</td>
                    <td>Water Leakage</td>
                    <td>Pipe leaking in Zone 4</td>
                    <td>2025-06-15</td>
                    <td class="text-center">
                        <button class="btn btn-sm btn-warning">Update</button>
                        <button class="btn btn-sm btn-danger">Delete</button>
                    </td>
                </tr>
                <!-- Repeat with dynamic content -->
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
