```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

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
}

/* Navbar */

.navbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:18px 8%;
    background:#1e293b;
    color:white;
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
}

.nav-links a:hover{
    color:#38bdf8;
}

/* Header */

.header{
    background:linear-gradient(135deg,#0f172a,#334155);
    color:white;
    text-align:center;
    padding:60px 20px;
}

.header h1{
    font-size:45px;
}

.header p{
    margin-top:10px;
}

/* Form */

.container{
    width:700px;
    margin:50px auto;
}

.form-box{
    background:white;
    padding:35px;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.form-box h2{
    text-align:center;
    margin-bottom:25px;
    color:#1e293b;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:600;
    color:#334155;
}

input[type=text],
input[type=email],
select{
    width:100%;
    padding:12px;
    border:1px solid #cbd5e1;
    border-radius:8px;
    font-size:15px;
}

input:focus,
select:focus{
    outline:none;
    border-color:#38bdf8;
}

.radio-group,
.checkbox-group{
    display:flex;
    gap:20px;
    margin-top:8px;
}

.btn{
    width:100%;
    padding:14px;
    border:none;
    background:#38bdf8;
    color:white;
    font-size:16px;
    border-radius:10px;
    cursor:pointer;
    transition:.3s;
}

.btn:hover{
    background:#0284c7;
}

/* Footer */

.footer{
    margin-top:40px;
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
}

@media(max-width:768px){

    .container{
        width:95%;
    }

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
    }
}

</style>

</head>
<body>

<!-- Navbar -->

<nav class="navbar">

    <div class="logo">🎓 CourseEnroll</div>

    <ul class="nav-links">
        <li><a href="/">Home</a></li>
        <li><a href="courses">Courses</a></li>
        <li><a href="students">Students</a></li>
        <li><a href="dashboard">Dashboard</a></li>
    </ul>

</nav>

<!-- Header -->

<section class="header">

    <h1>Update Student Details</h1>

    <p>Modify enrolled student information</p>

</section>

<!-- Update Form -->

<div class="container">

    <div class="form-box">

        <h2>Student Update Form</h2>

        <form:form action="/edit" modelAttribute="student" method="post">

            <form:hidden path="id"/>

            <div class="form-group">
                <label>Student Name</label>
                <form:input path="name"/>
            </div>

            <div class="form-group">
                <label>Email</label>
                <form:input path="email"/>
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <form:input path="mobileNo"/>
            </div>

            <div class="form-group">
                <label>Address</label>
                <form:select path="address">
                    <form:option value="Pune">Pune</form:option>
                    <form:option value="Mumbai">Mumbai</form:option>
                    <form:option value="Delhi">Delhi</form:option>
                </form:select>
            </div>

            <div class="form-group">
                <label>Course</label>
                <form:select path="course">
                    <form:option value="Java Full Stack">Java Full Stack</form:option>
                    <form:option value="Python Full Stack">Python Full Stack</form:option>
                    <form:option value="Data Science">Data Science</form:option>
                </form:select>
            </div>

            <div class="form-group">
                <label>Gender</label>

                <div class="radio-group">
                    <label><form:radiobutton path="gender" value="Male"/> Male</label>
                    <label><form:radiobutton path="gender" value="Female"/> Female</label>
                </div>
            </div>

            <div class="form-group">
                <label>Preferred Timing</label>

                <div class="checkbox-group">
                    <label><form:checkbox path="timings" value="Morning"/> Morning</label>
                    <label><form:checkbox path="timings" value="Afternoon"/> Afternoon</label>
                    <label><form:checkbox path="timings" value="Evening"/> Evening</label>
                </div>
            </div>

            <button type="submit" class="btn">
                Update Student
            </button>

        </form:form>

    </div>

</div>

<!-- Footer -->

<footer class="footer">
    <p>© 2026 Course Enrollment System | All Rights Reserved</p>
</footer>

</body>
</html>
```
