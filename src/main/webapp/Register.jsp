<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jstl/core_rt" %>
    <%response.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/register.css">
</head>
<body>
	<form action="register" method="post" accept-charset="UTF-8">
	${mes}
    <div class="container">
        <div class="container-image">
            <img src="https://laforce.vn/wp-content/uploads/2023/04/giay-mac-nhat-the-gioi.jpg" alt="" class="ctn-image">
        </div>

        <div class="ctn-right">
            <h2 class="ctn-right-hed">Register an account</h2>
            <input type="text" name="uname" class="ctn-input-txt" placeholder="Username"><br>
            <input type="password" name="pass" class="ctn-input-txt" placeholder="Password"><br>
            <input type="password" name="repass" class="ctn-input-txt" placeholder="Repeat password"><br>
            <input type="text" name="gmail" class="ctn-input-txt" placeholder="Gmail"><br>
            <input type="submit" name="btn" value="Register" class="ctn-input-lg"><br>
            <div class="btn-or">
                <div class="btn-or-1"></div>
                <span style="padding-left: 6px; color: #8a8a8a;">Hoặc</span>
                <div class="btn-or-2"></div>
            </div>
            <input type="submit" name="btn" id="" value="Facebook" class="btn-fb">
            <input type="submit" name="btn" id="" value="Google" class="btn-gg"><br>
            <div style="margin-top: 20px;"></div>
            <span class="ctn-input-rgs"></span> <a href="Login.jsp" class="ctn-input-rps" >Login here</a>
        </div>
    </div>
    </form>
</body>
</html>

<!-- breakpoints -->
<!-- Mobile width < 740px -->
<!-- Tablet width >= 740px <= 1024 -->
<!-- PC width >= 1024px -->