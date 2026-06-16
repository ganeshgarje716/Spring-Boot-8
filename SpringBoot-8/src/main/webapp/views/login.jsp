<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login - CourseEnroll</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:
    linear-gradient(rgba(0,0,0,.55),rgba(0,0,0,.55)),
    url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size:cover;
    background-position:center;
}

.login-container{
    width:430px;
    background:rgba(255,255,255,0.96);
    padding:40px;
    border-radius:20px;
    box-shadow:0 10px 30px rgba(0,0,0,.25);
}

.logo{
    text-align:center;
    font-size:32px;
    font-weight:700;
    color:#1e293b;
    margin-bottom:10px;
}

.heading{
    text-align:center;
    color:#64748b;
    margin-bottom:30px;
    font-size:15px;
}

.error-msg{
    color:red;
    text-align:center;
    margin-bottom:15px;
}

.success-msg{
    color:green;
    text-align:center;
    margin-bottom:15px;
}

.form-group{
    margin-bottom:20px;
}

.form-group label{
    display:block;
    margin-bottom:8px;
    font-weight:600;
    color:#334155;
}

.form-group input{
    width:100%;
    padding:13px;
    border:1px solid #cbd5e1;
    border-radius:10px;
    font-size:15px;
    outline:none;
    transition:.3s;
}

.form-group input:focus{
    border-color:#38bdf8;
    box-shadow:0 0 10px rgba(56,189,248,.3);
}

.login-btn{
    width:100%;
    border:none;
    background:#0284c7;
    color:white;
    padding:14px;
    border-radius:10px;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
    transition:.3s;
}

.login-btn:hover{
    background:#0369a1;
}

.bottom-text{
    text-align:center;
    margin-top:20px;
    color:#64748b;
}

.bottom-text a{
    color:#0284c7;
    text-decoration:none;
    font-weight:600;
}

.bottom-text a:hover{
    text-decoration:underline;
}

</style>
</head>
<body>

<div class="login-container">

    <div class="logo"> CourseEnroll</div>

    <p class="heading">
        Login Using Email & Mobile Number
    </p>

    <h4 class="error-msg">${error}</h4>
    <h4 class="success-msg">${msg}</h4>

    <form action="login" method="post">

        <div class="form-group">
            <label>Email Address</label>
            <input type="email"
                   name="email"
                   placeholder="Enter Email Address"
                   required>
        </div>

        <div class="form-group">
            <label>Mobile Number</label>
            <input type="text"
                   name="mobileNo"
                   placeholder="Enter Mobile Number"
                   required>
        </div>

        <button type="submit" class="login-btn">
            Login
        </button>

    </form>

    <div class="bottom-text">
        New Student?
        <a href="enroll">Enroll Now</a>
    </div>

</div>

</body>
</html>