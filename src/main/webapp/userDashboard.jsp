<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submit Complaint - CMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #eef2f3, #8e9eab);
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #ffffff;
            border-bottom: 1px solid #e0e0e0;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
        }
        .btn-success:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container d-flex justify-content-between align-items-center">
        <a class="navbar-brand fw-bold" href="#">📢 CMS</a>
        <div class="d-flex gap-2">
            <a href="MyComplaint.jsp" class="btn btn-outline-light btn-sm">📄 My Complaint</a>
            <a href="login.jsp" class="btn btn-outline-light btn-sm">🚪 Logout</a>
        </div>
    </div>
</nav>

<!-- Form Container -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <div class="card">
                <div class="card-header text-center">
                    <h4 class="text-primary mb-0">📝 Submit New Complaint</h4>
                </div>
                <div class="card-body">
                    <form action="SubmitComplaintServlet" method="post">
                        <div class="mb-3">
                            <label class="form-label">👤 User Name</label>
                            <input type="text" name="username" class="form-control" placeholder="Enter your name" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">📌 Subject</label>
                            <input type="text" name="subject" class="form-control" placeholder="Enter complaint subject" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">📅 Date</label>
                            <input type="date" name="date" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">📝 Description</label>
                            <textarea name="description" class="form-control" rows="4" placeholder="Describe your complaint..." required></textarea>
                        </div>

                        <div class="text-end">
                            <button type="submit" class="btn btn-success">Submit Complaint</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
