<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Our Courses - CourseEnroll</title>

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
    font-size:16px;
    transition:0.3s;
}

.nav-links a:hover{
    color:#38bdf8;
}

/* ================= HEADER ================= */

.page-header{
    background:linear-gradient(135deg,#0f172a,#334155);
    color:white;
    text-align:center;
    padding:70px 20px;
}

.page-header h1{
    font-size:50px;
    margin-bottom:15px;
}

.page-header p{
    font-size:18px;
}

/* ================= COURSES ================= */

.courses{
    padding:60px 8%;
}

.course-container{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:30px;
}

.card{
    background:white;
    border-radius:15px;
    overflow:hidden;
    box-shadow:0 5px 15px rgba(0,0,0,.1);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-10px);
}

.card img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.card-content{
    padding:20px;
}

.card-content h3{
    color:#1e293b;
    margin-bottom:10px;
}

.card-content p{
    color:#64748b;
    line-height:1.6;
    margin-bottom:10px;
}

.fee{
    font-size:22px;
    font-weight:bold;
    color:#0284c7;
    margin:15px 0;
}

.btn{
    display:block;
    text-align:center;
    padding:12px;
    background:#38bdf8;
    color:white;
    text-decoration:none;
    border-radius:8px;
    font-weight:600;
    transition:0.3s;
}

.btn:hover{
    background:#0284c7;
}

/* ================= FOOTER ================= */

.footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:40px;
}

/* ================= RESPONSIVE ================= */

@media(max-width:992px){

    .course-container{
        grid-template-columns:repeat(2,1fr);
    }

}

@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:15px;
    }

    .course-container{
        grid-template-columns:1fr;
    }

    .page-header h1{
        font-size:35px;
    }

    .nav-links{
        flex-wrap:wrap;
        justify-content:center;
    }
}

</style>
</head>

<body>

<!-- ================= NAVBAR ================= -->

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

<!-- ================= PAGE HEADER ================= -->

<section class="page-header">

    <h1>Our Professional Courses</h1>

    <p>
        Learn industry-ready skills and get placement assistance
        from experienced trainers.
    </p>

</section>

<!-- ================= COURSES SECTION ================= -->

<section class="courses">

    <div class="course-container">

        <!-- Java -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1515879218367-8466d910aaa4" alt="Java">

            <div class="card-content">

                <h3> Java Full Stack</h3>

                <p>
                    Learn Core Java, Advanced Java, Spring Boot,
                    Hibernate, MySQL, HTML, CSS, JavaScript and React.
                </p>

                <p><strong>Duration:</strong> 6 Months</p>

                <div class="fee">₹35,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

        <!-- Python -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1526379095098-d400fd0bf935" alt="Python">

            <div class="card-content">

                <h3> Python Full Stack</h3>

                <p>
                    Learn Python, Django, REST APIs,
                    PostgreSQL, Bootstrap and Web Development.
                </p>

                <p><strong>Duration:</strong> 6 Months</p>

                <div class="fee">₹32,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

        <!-- Data Science -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71" alt="Data Science">

            <div class="card-content">

                <h3> Data Science</h3>

                <p>
                    Learn Python, Pandas, NumPy,
                    Machine Learning, AI and Power BI.
                </p>

                <p><strong>Duration:</strong> 8 Months</p>

                <div class="fee">₹45,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

        <!-- MERN -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085" alt="MERN">

            <div class="card-content">

                <h3> MERN Stack</h3>

                <p>
                    Learn MongoDB, Express JS,
                    React JS and Node JS with live projects.
                </p>

                <p><strong>Duration:</strong> 5 Months</p>

                <div class="fee">₹30,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

        <!-- AWS -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1451187580459-43490279c0fa" alt="AWS">

            <div class="card-content">

                <h3> AWS Cloud Computing</h3>

                <p>
                    Learn EC2, S3, IAM, VPC,
                    Cloud Security and DevOps basics.
                </p>

                <p><strong>Duration:</strong> 4 Months</p>

                <div class="fee">₹28,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

        <!-- Cyber Security -->

        <div class="card">

            <img src="https://images.unsplash.com/photo-1510511459019-5dda7724fd87" alt="Cyber Security">

            <div class="card-content">

                <h3> Cyber Security</h3>

                <p>
                    Learn Ethical Hacking, Network Security,
                    Penetration Testing and Security Tools.
                </p>

                <p><strong>Duration:</strong> 5 Months</p>

                <div class="fee">₹40,000</div>

                <a href="enroll" class="btn">Enroll Now</a>

            </div>

        </div>

    </div>

</section>

<!-- ================= FOOTER ================= -->

<footer class="footer">

    <p>© 2026 Course Enrollment System | All Rights Reserved</p>

</footer>

</body>
</html>