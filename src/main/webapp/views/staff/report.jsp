<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  
  
 
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
<body>
<div class="container-fluid" style="max-width: 1600px; max-height: 800px">
<div class="row" style="height: 786px">
	<div class="col-lg-2" style="background: #289d8c">
		<%@include file ="/common/menuadmin.jsp"  %>		
	</div>	
	
	
	<div class="col-sm-10 pe-0">
	<%@include file = "/common/nav.jsp" %>
		
		
			<div class="row justify-content-center m-0" >
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">CAR LIST</h1>
								
								<!-- drop sort -->
								<div class="dropdown mb-2">
							  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
							    Ngày Tạo
							  </button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							  <%-- <c:forEach items="${reports}" var="item">
							  	 <li><a class="dropdown-item" href="" name = "key">${item.ngayTao}</a></li>
							  
							   </c:forEach> --%>
							   
<%-- 						   <form class="d-flex" action="/shoe/seach" method="post">
					 	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="key" value="${key}">
						        <button class="btn btn-outline-success" type="submit">Search</button>
						      </form> --%>
						      
						      
							
							  </ul>
							</div>
							 <form class="d-flex mb-3" action="/car/report" >
					 	        <input class="form-control me-2" type="date" placeholder="Search" aria-label="Search" name="key" >
						        <button class="btn btn-outline-success" type="submit">Search</button>
						        
						      </form> 
						      
								
							<div style="height:  600px; overflow-y: scroll;">
								<table class="table table-bordered text-center">
									<thead>
									    <tr>
									      <th>Mã Hợp Đồng</th>
									      <th>Khách Hàng </th>
									      <th>biến số xe</th>
										  <th>Tên Xe</th>
										  <th>Ngày bắt đầu </th>
										  <th>Ngày ngày kết thúc </th>
										  <th>Ngày ngày tạo</th>
										  <th>Ngày tổng tiền </th>
										  
										  
									    </tr>
									</thead>
									<tbody>
									<c:forEach items="${reports}" var="item">
									    <tr>
									    
									      <td>HD${item.maHopDong}</td>
									      <td>${item.khachHang.tenKH}</td>
									      <td>${item.xe.bienSo}</td>
									      <td>${item.xe.tenXe}</td>
									      <td>${item.ngayBatDau}</td>
									      <td>${item.ngayKetThuc}</td>
									      <td>${item.ngayTao}</td>
									      <td id="money">${item.tongTien}</td>
									    </tr>
									</c:forEach>		  
									</tbody>
								</table>
								
								
							    <c:set var="totalPrice" value="0" />
							    <c:forEach items="${reports}" var="item">
							        <c:set var="totalPrice" value="${totalPrice + item.tongTien}" />
							    </c:forEach>
								<p id="money2">Tổng đơn giá của tất cả sản phẩm là: ${totalPrice}</p>
								<%-- <!-- phân trang -->
							<nav aria-label="Page navigation example">
							  <ul class="pagination">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-arrow-left"></i></a></li>
							    <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-arrow-right"></i></a></li>
							    
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</nav>	 --%>
								
							</div>	
							
														
						</div>
		
	</div>
	
	
</div>
 </div>
	
	<script>
    var moneyCells = document.querySelectorAll('#money');
    moneyCells.forEach(function(cell) {
        var moneyValue = parseFloat(cell.innerHTML);
        cell.innerHTML = formatCurrency(moneyValue);
    });

    function formatCurrency(amount) {
        return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(amount);
    }
    
    
   
</script>

<script>
    function formatCurrency(amount) {
        return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(amount);
    }

    var totalPriceElement = document.getElementById("money2");
    var totalPriceValue = parseFloat("${totalPrice}");
    totalPriceElement.innerHTML = "Tổng đơn giá của tất cả sản phẩm là: " + formatCurrency(totalPriceValue);
</script>
</body>
</html>