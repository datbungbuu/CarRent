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
			<h1 class="text-center mt-3 mb-3" style="color: #289d8c">Danh Sách Hợp Đồng</h1>
			<div style="height:  600px; overflow-y: scroll;">
				<table class="table table-bordered text-center">
					<thead>
					    <tr>
					      <th scope="col">Tên xe</th>
					      <th scope="col">Biển số</th>
					      <th scope="col">Tên khách hàng</th>
					      <th scope="col">Số điện thoại</th>
					      <th scope="col">Ngày tạo</th>
					      <th scope="col">Giá thuê/ngày</th>
					      <th scope="col">Ngày bắt đầu</th>
					      <th scope="col">Ngày kết thúc</th>
					      <th scope="col">Thành tiền</th>
					      <th scope="col">Nhân viên</th>
					      <th scope="col"><i class="fa-solid fa-gear">Giao</i></th>
					      <th scope="col"><i class="fa-solid fa-gear">Nhận</i></th>
					    </tr>
					</thead>
					<tbody>
					 <c:forEach items="${listContract}" var="item">
					    <tr>
					      <td>${item.xe.tenXe}</td>
					      <td>${item.xe.bienSo}</td>
						  <td>${item.khachHang.tenKH} ${item.khachHang.hoKH}</td>
						  <td>${item.khachHang.soDienThoai}</td> 
						  <td>${item.ngayTao}</td>
						  <td>${item.giaThue/1000} nghìn</td>
						  <td>${item.ngayBatDau}</td>
						  <td>${item.ngayKetThuc}</td>
						  <td>${item.tongTien/1000000} triệu </td>
						  <td>${item.nhanVien.maNV}</td>
						  <td> <a href="/car/giaoxe/edit/${item.maHopDong }" class="text-decoration-none"><i class="fa-solid fa-pencil"></i></a> </td>
					      <td> <a href="/car/qlTraXe/edit/${item.maHopDong }" class="text-decoration-none"><i class="fa-solid fa-pencil"></i></a> </td>
					    </tr>
					</c:forEach>	 	  
					</tbody>
				</table>
			</div>	
		</div>
	</div>
</div>
</div>
</body>
</html>