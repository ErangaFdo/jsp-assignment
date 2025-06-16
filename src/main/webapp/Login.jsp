<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Complaint Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #6dd5ed, #2193b0);
            font-family: 'Segoe UI', sans-serif;
        }

        .login-card {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 600;
        }

        .btn-primary {
            background-color: #2193b0;
            border: none;
        }

        .btn-primary:hover {
            background-color: #1a7c9e;
        }

        .brand {
            font-size: 26px;
            font-weight: bold;
            color: #2193b0;
            margin-bottom: 20px;
        }

        .card-footer {
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="container vh-100 d-flex align-items-center justify-content-center">
    <div class="row w-100 justify-content-center">
        <div class="col-md-5">
            <div class="login-card">
                <div class="text-center brand">
                    Complaint Management System
                </div>
                <form action="loginServlet" >
                    <div class="mb-3">
                        <label for="username" class="form-label">👤 Username</label>
                        <input type="text" name="username" class="form-control" id="username" placeholder="Enter username" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">🔒 Password</label>
                        <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                </form>
                <div class="card-footer text-center mt-4 text-muted">
                    &copy; 2025 CMS | All rights reserved
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
