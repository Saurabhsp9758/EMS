<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Management System</title>
  <style>
    /* Background design */
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background: linear-gradient(135deg, #89f7fe, #66a6ff);
      font-family: 'Poppins', sans-serif;
      color: #333;
    }

    /* Main title */
    h1 {
      color: #ff3b3f;
      background-color: #fff176;
      padding: 20px 40px;
      border-radius: 12px;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      letter-spacing: 1px;
    }

    /* Divider */
    hr {
      width: 60%;
      border: none;
      height: 2px;
      background-color: #fff;
      margin: 30px 0;
    }

    /* Link container */
    .links {
      text-align: center;
    }

    /* Buttons styled as links */
    .links a {
      text-decoration: none;
      background: #ffffff;
      color: #007bff;
      padding: 12px 30px;
      border-radius: 8px;
      font-size: 18px;
      font-weight: bold;
      margin: 0 20px;
      transition: all 0.3s ease;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .links a:hover {
      background: #007bff;
      color: white;
      transform: scale(1.05);
    }

    /* Optional decorative circles */
    .circle {
      position: absolute;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.2);
      z-index: 0;
    }

    .circle.one {
      width: 200px;
      height: 200px;
      top: 10%;
      left: 10%;
    }

    .circle.two {
      width: 300px;
      height: 300px;
      bottom: 10%;
      right: 15%;
    }

  </style>
</head>
<body>

  <!-- Decorative circles -->
  <div class="circle one"></div>
  <div class="circle two"></div>

  <!-- Main Content -->
  <h1>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h1>
  <hr>

  <div class="links">
    <a href="log">Login</a>
    <a href="reg">Register</a>
  </div>

</body>
</html>