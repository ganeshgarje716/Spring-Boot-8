<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course Enrollment Form</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:#f8fafc;
    min-height:100vh;
}

/* Navbar */

.navbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:18px 8%;
    background:#1e293b;
    color:white;
    position:sticky;
    top:0;
    z-index:1000;
}

.logo{
    font-size:28px;
    font-weight:700;
}

.nav-links{
    list-style:none;
    display:flex;
    gap:25px;
}

.nav-links a{
    text-decoration:none;
    color:white;
    font-size:16px;
    transition:.3s;
}

.nav-links a:hover{
    color:#38bdf8;
}

/* Form Section */

.form-section{
    padding:50px 20px;
}

.container{
    max-width:750px;
    margin:auto;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,.1);
}

.container h2{
    text-align:center;
    color:#1e293b;
    margin-bottom:25px;
    font-size:32px;
}

table{
    width:100%;
}

table td{
    padding:12px;
}

table td:first-child{
    width:35%;
    font-weight:600;
    color:#334155;
}

input[type="text"],
input[type="email"],
select{
    width:100%;
    padding:12px;
    border:1px solid #cbd5e1;
    border-radius:8px;
    outline:none;
    transition:.3s;
}

input[type="text"]:focus,
input[type="email"]:focus,
select:focus{
    border-color:#38bdf8;
    box-shadow:0 0 8px rgba(56,189,248,.3);
}

.gender-box,
.timing-box{
    display:flex;
    gap:20px;
    flex-wrap:wrap;
}

.gender-box label,
.timing-box label{
    cursor:pointer;
}

.submit-btn{
    width:100%;
    padding:14px;
    margin-top:20px;
    border:none;
    border-radius:8px;
    background:#38bdf8;
    color:white;
    font-size:17px;
    font-weight:600;
    cursor:pointer;
    transition:.3s;
}

.submit-btn:hover{
    background:#0284c7;
}

.success-msg{
    text-align:center;
    color:green;
    margin-top:15px;
    font-weight:600;
}

/* Footer */

.footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:40px;
}

/* Responsive */

@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:10px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
    }

    table,
    tbody,
    tr,
    td{
        display:block;
        width:100%;
    }

    table td:first-child{
        margin-bottom:5px;
    }

    .container{
        padding:25px;
    }

    h2{
        font-size:26px;
    }
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar">
    <div class="logo"> CourseEnroll</div>

<ul class="nav-links">
    <li><a href="/">Home</a></li>
    <li><a href="courses">Courses</a></li>
    <li><a href="enroll">Enroll</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
</ul>


</nav>

<!-- Enrollment Form -->

<section class="form-section">


<div class="container">

    <h2>Student Enrollment Form</h2>

    <form:form action="save" modelAttribute="student" method="post">

        <table>

            <tr>
                <td>Student Name</td>
                <td>
                    <form:input path="name"/>
                </td>
            </tr>

            <tr>
                <td>Email Address</td>
                <td>
                    <form:input path="email"/>
                </td>
            </tr>

            <tr>
                <td>Mobile Number</td>
                <td>
                    <form:input path="mobileNo"/>
                </td>
            </tr>

            <tr>
                <td>Gender</td>
                <td>
                    <div class="gender-box">
                        <label>
                            <form:radiobutton path="gender" value="Male"/> Male
                        </label>

                        <label>
                            <form:radiobutton path="gender" value="Female"/> Female
                        </label>
                    </div>
                </td>
            </tr>

            <tr>
                <td>City</td>
                <td>
                    <form:select path="address">
                        <form:option value="Pune">Pune</form:option>
                        <form:option value="Mumbai">Mumbai</form:option>
                        <form:option value="Delhi">Delhi</form:option>
                    </form:select>
                </td>
            </tr>

            <tr>
                <td>Select Course</td>
                <td>
                    <form:select path="course">
                        <form:option value="Java Full Stack">Java Full Stack</form:option>
                        <form:option value="Python Full Stack">Python Full Stack</form:option>
                        <form:option value="Data Science">Data Science</form:option>
                    </form:select>
                </td>
            </tr>

            <tr>
                <td>Preferred Timing</td>
                <td>
                    <div class="timing-box">

                        <label>
                            <form:checkbox path="timings" value="Morning"/> Morning
                        </label>

                        <label>
                            <form:checkbox path="timings" value="Afternoon"/> Afternoon
                        </label>

                        <label>
                            <form:checkbox path="timings" value="Evening"/> Evening
                        </label>

                    </div>
                </td>
            </tr>

        </table>

        <input type="submit" value="Enroll Now" class="submit-btn">

        <h3 class="success-msg">${msg}</h3>

    </form:form>

</div>


</section>

<!-- Footer -->

<footer class="footer">
    <p>© 2026 Course Enrollment System | All Rights Reserved</p>
</footer>

</body>
</html>
