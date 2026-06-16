<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - CourseEnroll</title>

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
    transition:0.3s;
}

.nav-links a:hover{
    color:#38bdf8;
}

/* ================= HERO ================= */

.hero{
    height:400px;
    background:
    linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),
    url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size:cover;
    background-position:center;
    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero h1{
    font-size:55px;
    margin-bottom:15px;
}

.hero p{
    font-size:20px;
}

/* ================= ABOUT ================= */

.about{
    padding:70px 8%;
}

.section-title{
    text-align:center;
    font-size:40px;
    color:#1e293b;
    margin-bottom:25px;
}

.about-text{
    max-width:1000px;
    margin:auto;
    text-align:center;
    color:#64748b;
    line-height:1.8;
    font-size:18px;
}

/* ================= FEATURES ================= */

.features{
    padding:30px 8% 70px;
}

.feature-container{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px;
}

.card{
    background:white;
    padding:30px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    color:#0284c7;
    margin-bottom:15px;
}

.card p{
    color:#64748b;
    line-height:1.6;
}

/* ================= STATS ================= */

.stats{
    background:#1e293b;
    color:white;
    padding:70px 8%;
}

.stats-container{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
    text-align:center;
}

.stat-box h2{
    font-size:40px;
    color:#38bdf8;
}

.stat-box p{
    margin-top:10px;
}

/* ================= TEAM ================= */

.team{
    padding:70px 8%;
}

.team-container{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px;
}

.team-card{
    background:white;
    border-radius:15px;
    overflow:hidden;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.team-card img{
    width:100%;
    height:250px;
    object-fit:cover;
}

.team-card h3{
    margin-top:15px;
    color:#1e293b;
}

.team-card p{
    color:#64748b;
    padding-bottom:20px;
}

/* ================= FOOTER ================= */

.footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
}

/* ================= RESPONSIVE ================= */

@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .feature-container,
    .team-container,
    .stats-container{
        grid-template-columns:1fr;
    }

    .hero h1{
        font-size:35px;
    }
}

</style>
</head>
<body>

<!-- NAVBAR -->

<nav class="navbar">

    <div class="logo">🎓 CourseEnroll</div>

    <ul class="nav-links">
        <li><a href="/">Home</a></li>
        <li><a href="courses">Courses</a></li>
        <li><a href="enroll">Enroll</a></li>
        <li><a href="about">About</a></li>
        <li><a href="contact">Contact</a></li>
    </ul>

</nav>

<!-- HERO -->

<section class="hero">
    <div>
        <h1>About CourseEnroll</h1>
        <p>Empowering Students Through Quality Education</p>
    </div>
</section>

<!-- ABOUT -->

<section class="about">

    <h2 class="section-title">Who We Are</h2>

    <p class="about-text">
        CourseEnroll is a professional training platform dedicated to helping
        students and professionals build successful careers in technology.
        We provide industry-oriented courses, live projects, expert mentorship,
        certifications, and placement assistance to help learners achieve
        their goals.
    </p>

</section>

<!-- FEATURES -->

<section class="features">

    <div class="feature-container">

        <div class="card">
            <h3> Industry Ready Training</h3>
            <p>Practical learning with real-world projects and assignments.</p>
        </div>

        <div class="card">
            <h3> Expert Mentors</h3>
            <p>Learn from experienced trainers and industry professionals.</p>
        </div>

        <div class="card">
            <h3> Placement Support</h3>
            <p>Resume building, mock interviews, and job assistance.</p>
        </div>

    </div>

</section>

<!-- STATS -->

<section class="stats">

    <div class="stats-container">

        <div class="stat-box">
            <h2>5000+</h2>
            <p>Students Trained</p>
        </div>

        <div class="stat-box">
            <h2>50+</h2>
            <p>Professional Courses</p>
        </div>

        <div class="stat-box">
            <h2>100+</h2>
            <p>Hiring Partners</p>
        </div>

        <div class="stat-box">
            <h2>95%</h2>
            <p>Placement Rate</p>
        </div>

    </div>

</section>

<!-- TEAM -->

<section class="team">

    <h2 class="section-title">Our Team</h2>

    <div class="team-container">

        <div class="team-card">
            <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e" alt="">
            <h3>Rahul Sharma</h3>
            <p>Java Full Stack Trainer</p>
        </div>

        <div class="team-card">
            <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330" alt="">
            <h3>Priya Patil</h3>
            <p>Data Science Mentor</p>
        </div>

        <div class="team-card">
            <img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d" alt="">
            <h3>Amit Deshmukh</h3>
            <p>Placement Coordinator</p>
        </div>

    </div>

</section>

<!-- FOOTER -->

<footer class="footer">
    <p>© 2026 CourseEnroll | All Rights Reserved</p>
</footer>

</body>
</html>