<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard - CourseEnroll</title>

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

/* ================= NAVBAR ================= */

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
    transition:.3s;
}

.nav-links a:hover{
    color:#38bdf8;
}

/* ================= HERO SECTION ================= */

.student-card{
    position:relative;
    height:400px;
    overflow:hidden;
}

.student-card img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.overlay{
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,.60);

    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;

    color:white;
    text-align:center;
}

.overlay h1{
    font-size:55px;
    margin-bottom:15px;
}

.overlay p{
    font-size:24px;
}

/* ================= COURSE INFO ================= */

.dashboard{
    padding:60px 8%;
}

.course-info{
    background:white;
    padding:30px;
    border-radius:20px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    margin-bottom:40px;
}

.course-info h2{
    text-align:center;
    color:#1e293b;
    margin-bottom:30px;
    font-size:35px;
}

.info-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.info-box{
    background:#f1f5f9;
    padding:25px;
    border-radius:15px;
    text-align:center;
    transition:.3s;
}

.info-box:hover{
    transform:translateY(-5px);
}

.info-box h3{
    color:#0284c7;
    margin-bottom:10px;
}

.info-box p{
    color:#475569;
    font-weight:600;
}

/* ================= TABLE ================= */

.dashboard-title{
    text-align:center;
    font-size:35px;
    color:#1e293b;
    margin-bottom:25px;
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
    padding:18px;
}

td{
    padding:16px;
    text-align:center;
    border-bottom:1px solid #e2e8f0;
}

tr:hover{
    background:#f8fafc;
}

.course{
    color:#0284c7;
    font-weight:600;
}

.fee{
    color:#16a34a;
    font-weight:bold;
}

/* ================= FOOTER ================= */

.footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
}

/* ================= RESPONSIVE ================= */

@media(max-width:992px){

    .info-grid{
        grid-template-columns:repeat(2,1fr);
    }
}

@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
    }

    .overlay h1{
        font-size:35px;
    }

    .overlay p{
        font-size:18px;
    }

    .info-grid{
        grid-template-columns:1fr;
    }

    .dashboard-title{
        font-size:28px;
    }

    .table-container{
        overflow-x:auto;
    }
}

.edit-section{
    display:flex;
    justify-content:center;
    align-items:center;
    margin-top:30px;
}

.edit-btn{
    background:#0284c7;
    color:white;
    text-decoration:none;
    padding:12px 25px;
    border-radius:10px;
    font-size:16px;
    font-weight:600;
    transition:0.3s;
}

.edit-btn:hover{
    background:#0369a1;
}

</style>
</head>
<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="logo"> CourseEnroll</div>

    <ul class="nav-links">
        <li><a href="/">Home</a></li>
        <li><a href="/courses">Courses</a></li>
        <li><a href="/students">Students</a></li>
        <li><a href="/about">Contact</a></li>
        <li><a href="/login">Logout</a></li>
        
    </ul>

</nav>

<!-- ================= WELCOME HERO ================= -->

<div class="student-card">

    <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4"
         alt="Course Image">

    <div class="overlay">

        <h1>Welcome, ${student.name}</h1>

        <p>${student.course} Student</p>

    </div>

</div>

<!-- ================= CONTENT ================= -->

<section class="dashboard">

    <!-- Course Information -->

    <div class="course-info">

        <h2>🎓 Course Information</h2>

        <div class="info-grid">

            <div class="info-box">
                <h3>Course</h3>
                <p>${student.course}</p>
            </div>

            <div class="info-box">
                <h3>Duration</h3>
                <p>6 Months</p>
            </div>

            <div class="info-box">
                <h3>Course Fees</h3>
                <p>₹${student.courseFees}</p>
            </div>

            <div class="info-box">
                <h3>Timing</h3>
                <p>${student.timings}</p>
            </div>

        </div>

    </div>

    <!-- Enrollment Details -->

    <h2 class="dashboard-title">Enrollment Details</h2>

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
            </tr>

            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td class="course">${student.course}</td>
                <td>${student.email}</td>
                <td>${student.address}</td>
                <td>${student.gender}</td>
                <td class="fee">₹${student.courseFees}</td>
                <td>${student.mobileNo}</td>
            </tr>
            

        </table>
        

    </div>
    
    <div class="edit-section">
    <a href="/edit/${student.id}" class="edit-btn">
         Edit Profile
    </a>
</div>
    

</section>

<!-- ================= FOOTER ================= -->

<footer class="footer">

    <p>© 2026 Course Enrollment System | All Rights Reserved</p>

</footer>

</body>
</html>