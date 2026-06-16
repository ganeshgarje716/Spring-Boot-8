<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Enrolled Students</title>

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
    background:#1e293b;
    color:white;
    padding:18px 8%;
    display:flex;
    justify-content:space-between;
    align-items:center;
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
    color:white;
    text-decoration:none;
    transition:.3s;
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
    font-size:18px;
}

/* Table Section */

.container{
    width:95%;
    margin:40px auto;
}

.table-container{
    background:white;
    border-radius:20px;
    overflow:hidden;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#1e293b;
    color:white;
    padding:15px;
}

td{
    padding:14px;
    text-align:center;
    border-bottom:1px solid #e2e8f0;
}

tr:hover{
    background:#f1f5f9;
}

.course{
    color:#0284c7;
    font-weight:600;
}

.fee{
    color:#16a34a;
    font-weight:bold;
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

    .table-container{
        overflow-x:auto;
    }

    .navbar{
        flex-direction:column;
        gap:10px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
    }

    .header h1{
        font-size:32px;
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
        <li><a href="/courses">Courses</a></li>
        <li><a href="/dashboard">Dashboard</a></li>
        <li><a href="/about">Contact</a></li>
        <li><a href="/login">Logout</a></li>
    </ul>

</nav>

<!-- Header -->

<section class="header">

    <h1>All Enrolled Students</h1>

    <p>View all registered students and their enrollment details.</p>

</section>

<!-- Table -->

<div class="container">

    <div class="table-container">

        <table>

            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Course</th>
                <th>Email</th>
                <th>Address</th>
                <th>Gender</th>
                <th>Fees</th>
                <th>Mobile No</th>
                <th>Timings</th>
            </tr>

            <c:forEach var="student" items="${students}">

                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td class="course">${student.course}</td>
                    <td>${student.email}</td>
                    <td>${student.address}</td>
                    <td>${student.gender}</td>
                    <td class="fee">₹${student.courseFees}</td>
                    <td>${student.mobileNo}</td>
                    <td>${student.timings}</td>
                </tr>

            </c:forEach>

        </table>

    </div>

</div>

<!-- Footer -->

<footer class="footer">

    <p>© 2026 Course Enrollment System | All Rights Reserved</p>

</footer>

</body>
</html>