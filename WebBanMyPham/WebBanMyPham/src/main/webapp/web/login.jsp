<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<body>

<!-- login area start -->
<div class="container mt-5" style="max-width: 500px; margin: auto; padding: 20px">

	<h2 class="text-center">Đăng nhập</h2>

	<!-- Hiển thị thông điệp đăng nhập -->
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger" role="alert">
            ${errorMessage}
        </div>
    </c:if>

    <form id="loginForm" action="web" method="post">
        <input type="hidden" name="action" value="login" />

        <!-- Trường email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <!-- Trường password -->
        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password"required>
        </div>

        <!-- Nút đăng nhập -->
        <div class="mb-3">
            <button type="submit" class="btn btn-primary">Đăng nhập</button>
        </div>

        <!-- Dòng chữ đăng ký -->
        <div class="mb-3">
            Bạn chưa có tài khoản? <a href="web?action=get-page-register">Đăng ký tại đây</a>
        </div>
    </form>
</div>
<!-- login area end -->



<!-- jQuery to submit the form on Enter key press -->
<script>
    $(document).ready(function () {
        $('#loginForm').keypress(function (e) {
            if (e.which === 13) {
                $('#loginForm').submit();
            }
        });
    });
</script>

</body>
</html>
