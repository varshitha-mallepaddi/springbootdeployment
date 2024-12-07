<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Background image */
            background-size: cover;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh; /* Full viewport height */
        }

        /* Navbar styling */
        .navbar-container {
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensures the navbar stays on top */
        }

        /* Centered form container */
        .form-container {
            background-color: #ffffff; /* White background */
            padding: 40px; /* Increased padding */
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 600px; /* Larger max-width for the form */
            width: 90%; /* Makes the form responsive */
            margin-top: 120px; /* Space below the navbar */
            text-align: center;
            color: #333; /* Dark gray text */
            border: 1px solid #ccc; /* Light gray border */
        }

        h3 {
            color: #2c3e50; /* Dark blue for header */
            margin-top: 0;
            font-size: 2em; /* Larger font size */
        }

        /* Form labels */
        label {
            display: block;
            color: #2c3e50; /* Dark blue */
            margin-bottom: 8px; /* Adjusted for better spacing */
            font-weight: bold;
        }

        /* Input fields */
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px; /* Increased padding */
            margin: 10px 0; /* Adjusted margin */
            background-color: #f9f9f9; /* Light gray */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 5px;
            box-sizing: border-box; /* Include padding in width */
            font-size: 1.2em; /* Larger font */
            color: #333;
        }

        /* Button styling */
        .button-container {
            text-align: center;
            margin-top: 20px; /* More space above buttons */
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #2c3e50; /* Dark blue */
            color: #fff;
            border: none;
            padding: 14px 30px; /* Increased padding */
            margin: 12px 6px; /* Adjusted margin */
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            font-size: 1.2em; /* Larger font */
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #1a252f; /* Darker blue */
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        td {
            padding: 12px; /* Larger padding */
            vertical-align: top;
        }
    </style>
</head>
<body>

    <!-- Navbar stays at the top -->
    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <!-- Centered Student Login Form -->
    <div class="form-container" align="center">
        <h3><u>Student Login</u></h3> <!-- Header inside the form container -->
        <form method="post" action="checkstudentlogin">
            <table>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
