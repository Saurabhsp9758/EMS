<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Registration</title>

  <style>
    /* ====== Global Page Style ====== */
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(120deg, #74ebd5, #ACB6E5);
    }

    /* ====== Registration Card ====== */
    .register-container {
      background: #ffffff;
      width: 340px;  /* compact width */
      padding: 25px 30px;
      border-radius: 15px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
      position: relative;
      overflow: hidden;
    }

    /* Decorative gradient border */
    .register-container::before {
      content: '';
      position: absolute;
      top: -2px;
      left: -2px;
      right: -2px;
      bottom: -2px;
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      z-index: -1;
      border-radius: 15px;
    }

    /* ====== Header ====== */
    h1 {
      text-align: center;
      color: #222;
      background-color: #fff8b5;
      padding: 10px;
      border-radius: 8px;
      font-size: 18px;
      margin-bottom: 18px;
      letter-spacing: 0.8px;
      font-weight: 700;
    }

    /* ====== Labels ====== */
    label {
      display: block;
      font-weight: 600;
      color: #333;
      font-size: 13px;
      margin-bottom: 4px;
    }

    /* ====== Input Fields ====== */
    input[type="text"],
    input[type="email"],
    input[type="number"],
    input[type="date"] {
      width: 100%;
      padding: 7px 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 13px;
      transition: 0.3s;
    }

    input:focus {
      border-color: #74ebd5;
      box-shadow: 0 0 8px rgba(116, 235, 213, 0.3);
      outline: none;
    }

    /* ====== Gender Section ====== */
    .gender-group {
      margin-bottom: 12px;
      font-size: 13px;
    }

    .gender-group label {
      margin-right: 8px;
    }

    input[type="radio"] {
      margin-right: 5px;
    }

    /* ====== Submit Button ====== */
    input[type="submit"] {
      width: 100%;
      padding: 9px;
      background: linear-gradient(135deg, #74ebd5, #ACB6E5);
      border: none;
      border-radius: 6px;
      font-size: 15px;
      color: #fff;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s ease;
      box-shadow: 0 4px 8px rgba(172, 182, 229, 0.3);
    }

    input[type="submit"]:hover {
      background: linear-gradient(135deg, #5ed0b3, #8e9ddf);
      transform: scale(1.03);
    }

    /* ====== Responsive ====== */
    @media (max-width: 480px) {
      .register-container {
        width: 90%;
        padding: 20px;
      }

      h1 {
        font-size: 16px;
      }
    }
  </style>
</head>
<body>

  <div class="register-container">
    <h1>EMPLOYEE REGISTRATION FORM</h1>

    <form action="register" method="post">

      <label>EMPLOYEE ID :</label>
      <input type="text" name="eid" placeholder="Enter Your ID" required>

      <label>FIRST NAME :</label>
      <input type="text" name="firstName" placeholder="Enter First Name" required>

      <label>MIDDLE NAME :</label>
      <input type="text" name="middleName" placeholder="Enter Middle Name" required>

      <label>LAST NAME :</label>
      <input type="text" name="lastName" placeholder="Enter Last Name" required>

      <label>DATE OF BIRTH :</label>
      <input type="date" name="birthDate" required>

      <label>EMAIL ID :</label>
      <input type="email" name="emailId" placeholder="Enter Email ID Here" required>

      <label>DESIGNATION :</label>
      <input type="text" name="designation" placeholder="Enter Designation" required>

      <label>AGE :</label>
      <input type="number" name="age" placeholder="Enter Age" required>

      <div class="gender-group">
        <label>GENDER :</label>
        <input type="radio" name="gender" value="MALE" required> MALE
        <input type="radio" name="gender" value="FEMALE"> FEMALE
      </div>

      <input type="submit" value="SIGN UP">

    </form>
  </div>

</body>
</html>


    