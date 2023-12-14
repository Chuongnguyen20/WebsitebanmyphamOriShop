<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage Bills</title>
    <!-- Add your custom CSS styles here if needed -->
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Quản lý đơn hàng</h2>

    <table class="table">
        <thead>
            <tr>
                <th>STT</th>
                <th>Mã đơn hàng</th>
                <th>Mã khách hàng</th>
                <th>Đơn giá</th>
                <th>Ngày đặt</th>
                <th>Phí vận chuyển</th>
                <th>Trạng thái</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="bill" items="${billList}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${bill.id}</td>
                    <td>${bill.userId}</td>
                    <td>${bill.totalAmount} ₫</td>
                    <td>${bill.orderDate}</td>
                    <td>${bill.shippingFee} ₫</td>
                    <td>
	                    <c:choose>
	                        <c:when test="${bill.status eq 1}">Đang xử lý</c:when>
	                        <c:when test="${bill.status eq 2}">Đang giao hàng</c:when>
	                        <c:when test="${bill.status eq 3}">Đã hủy</c:when>
	                        <c:when test="${bill.status eq 4}">Hoàn thành</c:when>
	                        <c:otherwise>Unknown</c:otherwise>
	                    </c:choose>
	                </td>
                    <td>
					    
					</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>


</body>
</html>
