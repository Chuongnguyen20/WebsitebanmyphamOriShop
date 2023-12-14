<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<body>

<!-- login area start -->
<div class="container mt-5" style="max-width: 700px; margin: auto; padding: 20px">
	
	<h2 class="text-center">Đăng ký</h2>
	
	<!-- Hiển thị thông điệp đăng ký -->
    <c:if test="${not empty registrationMessage}">
        <div class="alert alert-info" role="alert">
            ${registrationMessage}
        </div>
    </c:if>


    <form id="registerForm" action="web" method="post">
        <input type="hidden" name="action" value="register" />

        <!-- Các trường thông tin cơ bản -->
        <div class="mb-3">
            <label for="fullName" class="form-label">Họ tên:</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        
        <div class="mb-3">
            <label for="address" class="form-label">Địa chỉ:</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>

        <!-- Trường giới tính -->
        <div class="mb-3">
            <label for="gender" class="form-label">Giới tính:</label>
            <select class="form-select" id="gender" name="gender" required>
                <option value="male">Nam</option>
                <option value="female">Nữ</option>
                <option value="other">Khác</option>
            </select>
        </div>

        <!-- Trường ngày sinh -->
        <div class="mb-3">
            <label for="birthDate" class="form-label">Ngày sinh:</label>
            <input type="date" class="form-control" id="birthDate" name="birthDate" required>
        </div>

        <div class="mb-3">
            <button type="submit" class="btn btn-dark btn-md">
                Register
            </button>
        </div>
    </form>
</div>

<!-- login area end -->



<!-- jQuery to submit the form on Enter key press -->
<script>
    $(document).ready(function () {     
        $('#registerForm').keypress(function (e) {
            if (e.which === 13) {
                $('#loginForm').submit();
            }
        });
    });
</script>

</body>
</html>
