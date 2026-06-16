
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course Enrollment System</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
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

/* Hero Section */

.hero{
    height:90vh;
    background:linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),
               url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size:cover;
    background-position:center;
    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
    padding:20px;
}

.hero-content h1{
    font-size:55px;
    margin-bottom:15px;
}

.hero-content p{
    font-size:20px;
    margin-bottom:25px;
}

.btn{
    display:inline-block;
    padding:12px 30px;
    background:#38bdf8;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-weight:600;
    transition:.3s;
}

.btn:hover{
    background:#0284c7;
    transform:translateY(-2px);
}

/* Courses */

.courses{
    padding:70px 8%;
    background:#f8fafc;
}

.section-title{
    text-align:center;
    margin-bottom:40px;
    font-size:38px;
    color:#1e293b;
}

.course-container{
    display:flex;
    justify-content:center;
    gap:25px;
    flex-wrap:wrap;
}

.card{
    width:320px;
    background:white;
    padding:25px;
    border-radius:15px;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:.3s;
}

.card:hover{
    transform:translateY(-10px);
}

.card h3{
    color:#0f172a;
    margin-bottom:15px;
}

.card p{
    color:#64748b;
    margin-bottom:15px;
}

.card a{
    text-decoration:none;
    color:#0284c7;
    font-weight:600;
}

/* About */

.about{
    padding:70px 8%;
    text-align:center;
}

.about h2{
    margin-bottom:20px;
    color:#1e293b;
}

.about p{
    max-width:800px;
    margin:auto;
    line-height:1.8;
    color:#64748b;
}

/* Footer */

.footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
}

/* Responsive */

@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .hero-content h1{
        font-size:35px;
    }

    .hero-content p{
        font-size:16px;
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
        <li><a href="/enroll">Enroll</a></li>
        <li><a href="/contact">Contact</a></li>
        <li><a href="/login">Login</a></li>
        
    </ul>
</nav>

<!-- Hero Section -->

<section class="hero">
    <div class="hero-content">
        <h1>Start Learning Today</h1>
        <p>Enroll in Industry Ready Courses and Build Your Career</p>
        <a href="enroll" class="btn">Enroll Now</a>
    </div>
</section>

<!-- Courses -->

<section class="courses">

    <h2 class="section-title">Popular Courses</h2>

    <div class="course-container">

        <div class="card">
            <h3> Java Full Stack</h3>
            <p>Learn Java, Spring Boot, Hibernate, MySQL, HTML, CSS and JavaScript.</p>
            <a href="#">Read More </a>
        </div>

        <div class="card">
            <h3> Python Full Stack</h3>
            <p>Master Python, Django, REST APIs, Database Management and Frontend.</p>
            <a href="#">Read More </a>
        </div>

        <div class="card">
            <h3> Data Science</h3>
            <p>Learn Machine Learning, AI, Pandas, NumPy, Visualization and Analytics.</p>
            <a href="#">Read More </a>
        </div>

    </div>

</section>

<!-- About -->

<section class="about">

    <h2>Why Choose Us?</h2>

    <p>
        We provide industry-focused training programs designed to help students
        gain practical skills and secure high-paying jobs. Our courses include
        live projects, expert mentorship, certification, and placement assistance.
    </p>

</section>

<!-- Footer -->

<footer class="footer">
    <p>© 2026 Course Enrollment System | All Rights Reserved</p>
</footer>

</body>
</html>