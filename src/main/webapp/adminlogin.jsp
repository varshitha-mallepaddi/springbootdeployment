<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
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
            z-index: 1000; /* Keeps navbar on top */
        }

        /* Centered form container */
        .form-container {
            background-color: #ffffff; /* White background */
            padding: 40px; /* Increased padding */
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            max-width: 600px; /* Larger max-width for the form */
            width: 90%; /* Responsive width */
            margin-top: 120px; /* Space below the navbar */
            text-align: center;
            color: #333; /* Dark gray text */
            border: 1px solid #ccc; /* Light gray border */
        }

        h3 {
            color: #2c3e50; /* Dark blue for the header */
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
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px; /* Increased padding */
            margin: 10px 0; /* Adjusted margin */
            font-size: 1.2em; /* Larger font */
            border-radius: 5px;
            border: 1px solid #ccc; /* Light gray border */
            background-color: #f9f9f9; /* Light gray background */
            color: #333; /* Dark text */
            box-sizing: border-box; /* Include padding in width */
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
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #1a252f; /* Darker blue on hover */
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
            font-size: 1.2em; /* Larger font */
        }
    </style>
</head>
<body>

    <!-- Navbar stays at the top -->
    <div class="navbar-container">
        <%@include file="mainnavbar.jsp" %>
    </div>

    <!-- Centered Admin Login Form -->
    <div class="form-container">
        <h3><u>Admin Login</u></h3>
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
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
