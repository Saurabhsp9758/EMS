<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Login Form</title>

  <style>
    /* Reset default margins */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Full-page gradient background */
    body {
      height: 100vh;
      background: linear-gradient(135deg, #ffcc33, #ff9966);
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Login container */
    .login-container {
      background-color: #fff;
      width: 350px;
      padding: 40px 30px;
      border-radius: 12px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
      text-align: center;
    }

    /* Heading */
    .login-container h1 {
      color: #ff6600;
      margin-bottom: 25px;
      font-size: 26px;
    }

    /* Label styling */
    label {
      display: block;
      text-align: left;
      color: #333;
      margin-bottom: 6px;
      font-weight: 600;
      font-size: 14px;
    }

    /* Input fields */
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
      outline: none;
      transition: 0.3s;
    }

    /* Focus effect */
    input[type="text"]:focus,
    input[type="password"]:focus {
      border-color: #ff6600;
      box-shadow: 0 0 5px rgba(255, 102, 0, 0.4);
    }

    /* Submit button */
    input[type="submit"] {
      width: 100%;
      padding: 10px;
      margin-top: 20px;
      border: none;
      border-radius: 6px;
      background-color: #ff6600;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }

    input[type="submit"]:hover {
      background-color: #e65c00;
    }

    /* Responsive design */
    @media (max-width: 400px) {
      .login-container {
        width: 90%;
        padding: 30px 20px;
      }
    }

  </style>
</head>

<body>

  <div class="login-container">
    <h1>WELCOME TO EMPLOYEE LOGIN PAGE</h1>
    <form action="login" method="post">
      <label for="username">USERNAME :</label>
      <input type="text" id="username" name="username" placeholder="Enter User Name" required>

      <br><br>

      <label for="password">PASSWORD :</label>
      <input type="password" id="password" name="password" placeholder="Enter Password" required>

      <input type="submit" value="Sign In">
    </form>
  </div>

</body>
</html>