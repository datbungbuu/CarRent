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
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">Danh Sách Nhân Viên</h1>
								
								<!-- drop sort -->
								<div class="dropdown mb-2">
							  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
							    Sắp Xếp
							  </button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							    <li><a class="dropdown-item" href="/staff/sort?field1=maNV">Theo Mã Nhân Viên</a></li>
							    <li><a class="dropdown-item" href="/staff/sort?field1=trangThai">Theo Trạng Thái</a></li>
							    <li><a class="dropdown-item" href="/staff/sort?field1=huyen">Theo Quận</a></li>
							     <li><a class="dropdown-item" href="/staff/sort?field1=huyen">Theo Chức Vụ</a></li>
							  </ul>
							</div>
								
							<div style="height:  600px; overflow-y: scroll;">
								<table class="table table-bordered text-center">
									<thead>
									    <tr>
									      <th scope="col">Mã Nhân Viên </th>
									      <th scope="col">Họ Nhân Viên</th>
									      <th scope="col">Tên Nhân Viên</th>
									      <th scope="col">Giới Tính</th>
									      <th scope="col">Số Điện Thoại</th>
									      <th scope="col">Ngày Sinh</th>
									       <th scope="col">Email</th>
									      <th scope="col">Thành Phố</th>
									      <th scope="col">Quận / Huyện</th>
									      <th scope="col">Phường / Xã</th>
									      <th scope="col">Đường</th>
									      <th scope="col">Chức Vụ</th>
									      <th scope="col">Trạng thái hoạt động</th>
									      <th scope="col"><i class="fa-solid fa-gear"></i></th>
									    </tr>
									</thead>
									<tbody>
									 <c:forEach items="${lsnv}" var="item">
									    <tr>
									      <td>${item.maNV}</td>
									      <td>${item.hoNV}</td>
										  <td>${item.tenNV}</td>
										  <td>${item.gioiTinh? 'Nam' : 'Nữ'}</td> 
										  <td>${item.soDienThoai}</td>
										  <td>${item.ngaySinh}</td>
										  <td>${item.email}</td>
										  <td>${item.tinh}</td>
										  <td>${item.huyen} </td>
										  <td>${item.xa}</td>
										  <td>${item.duong}</td>
										   <td>${item.chucVu? 'Quản Lý' : 'Nhân Viên'}</td> 
										  <td>${item.trangThai? 'Đang hoạt động' : 'OFF' }</td>
									      <td> <a href="/staff/edit/${item.maNV }" class="text-decoration-none"><i class="fa-solid fa-pencil"></i></a> </td>
									    </tr>
									</c:forEach>	 	  
									</tbody>
								</table>
								
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
	


</body>
</html>