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
	
	
	<div class="col-sm-10 pe-0 ps-0">
	<%@include file = "/common/nav.jsp" %>
		
		
			<div class="row justify-content-center m-0" >
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">Thống Kê Hợp Đồng</h1>
								<div class="row">
									<div class="col-sm-6">
								
								<!-- xuất ex -->
								<div class="d-flex flex-row mb-3">
								  <div class="p-2">
								  	<div class="dropdown mb-2">
								  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
								    Trạng thái hợp đồng
								  </button>
									  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
									  <%-- <c:forEach items="${reports}" var="item">
									  	 <li><a class="dropdown-item" href="" name = "key">${item.ngayTao}</a></li>
									  
									   </c:forEach> --%>
									   
		<%-- 						   <form class="d-flex" action="/shoe/seach" method="post">
							 	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="key" value="${key}">
								        <button class="btn btn-outline-success" type="submit">Search</button>
								      </form> --%>
								      
								      <li><a class="dropdown-item btn btn-outline-success" href="/lstthdnull"  >Chưa xử lý</a></li>
									  <li><a class="dropdown-item btn btn-outline-success" href="/lstthd" >Đã xử lý</a></li>
									  </ul>
								</div>
								  </div>
								  <div class="p-2">
								  	<a class="btn btn-outline-primary" href="/car/listHD/export">Export To Excel</a>
								  </div>
								</div>
									</div>
									
									<div class="col-sm-6">
										<form class="d-flex mb-3" action="/car/report" >
					 	        <input class="form-control me-2" type="date" placeholder="Search" aria-label="Search" name="key" >
						        <button class="btn btn-outline-success" type="submit">Search</button>
						        
						      </form> 
									</div>
								</div>
								<!-- drop sort -->
								
							 
						      
								
							<div style="height:  600px; overflow-y: scroll;">
								<table class="table table-bordered text-center">
									<thead>
									    <tr>
									      <th>Mã Hợp Đồng</th>
									      <th>Trạng Thái</th>
									      <th>Nhân Viên</th>
									      <th>Khách Hàng </th>
									      <th>Biến Số Xe</th>
										  <th>Tên Xe</th>
										  <th>Ngày Bắt Đầu </th>
										  <th>Ngày Kết Thúc </th>
										  <th>Ngày Tạo</th>
										  <th>Tổng Tiền </th>
										  
										  
									    </tr>
									</thead>
									<tbody>
									<c:forEach items="${reports}" var="item">
									    <tr>
									    
									      <td>HD${item.maHopDong}</td>
									      <td> 
									      <c:choose>
											<c:when test="${not empty item.nhanVien.tenNV}">
												<p class="card-text fs-6 " style="font-size: 12px">Đã Xác Nhân</p>
											</c:when>
											<c:otherwise>
												<p class="card-text fs-6 " style="font-size: 12px">Chưa Xác Nhận</p>
											</c:otherwise>
										</c:choose>
									      
									      <%-- ${item.nhanVien.tenNV} --%>
									      
									      </td>
									      
									      <td> 
									      <c:choose>
											<c:when test="${not empty item.nhanVien.tenNV}">
												<p class="card-text fs-6 " style="font-size: 12px">${item.nhanVien.tenNV}</p>
											</c:when>
											<c:otherwise>
												<p class="card-text fs-6 " style="font-size: 12px">Chưa Có Nhân Viên </p>
											</c:otherwise>
										</c:choose>
									      
									      <%-- ${item.nhanVien.tenNV} --%>
									      
									      </td>
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
								<p id="money2" class="fs-3 fw-bold">Tổng doanh thu là: ${totalPrice}</p>
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
    totalPriceElement.innerHTML = "Tổng doanh thu là: " + formatCurrency(totalPriceValue);
</script>
</body>
</html>

























