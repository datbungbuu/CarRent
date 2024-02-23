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
					<h1 class="text-center mt-3 mb-3" style="color: #289d8c">Danh Sách Đã Giao Xe</h1>								
					<!-- drop sort -->
					<!-- <div class="dropdown mb-2">
					  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
					    Sắp Xếp
					  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					    <li><a class="dropdown-item" href="/car/sort?field=giaThue">Theo Giá</a></li>
					    <li><a class="dropdown-item" href="/car/sort?field=trangThai">Theo Trạng Thái</a></li>
					    <li><a class="dropdown-item" href="/car/sort?field=hangXe">Theo Hãng</a></li>
					  </ul>
					</div> -->
						
					<div style="height:  600px; overflow-y: scroll;">
						<table class="table table-bordered text-center">
							<thead>
							    <tr>
							      <th>Mã Hợp Đồng</th>
							      <th>Ngày Nhận Xe</th>
							      <th >Nội Dung Bàn Giao</th>
							      <th >Tình Trạng Xe</th>
							      <th >Ngoại Thất Xe</th>
							      <th >Nội Thất Xe</th>
							      <th >Động Cơ Xe</th>
							      <th >Giấy Tờ Bàn Giao</th>
							      <th >Hình Ảnh 1</th>
							      <th >Hình Ảnh 2</th>
							      <th >Hình Ảnh 3</th>
							      <th >Hình Ảnh 4</th>
							      <th >Nhân Viên</th>
							      <!-- <th scope="col"><i class="fa-solid fa-gear"></i></th> -->
							    </tr>
							</thead>
							<tbody>
							<c:forEach items="${dsnxe}" var="item">
							    <tr>
							      <td>${item.hopDong.maHopDong}</td> 
							      <td>${item.ngayGiaoXe}</td>
							      <td>${item.noiDung}</td>
								  <td>${item.tinhTrang}</td>
								  <td>${item.ngoaiThat}</td> 
								  <td>${item.noiThat}</td>
								  <td>${item.dongCo}</td>
								  <td>${item.giayToXe}</td>
								  <td>${item.imgDauXe}</td>
								  <td>${item.imgDuoiXe} </td>
								  <td>${item.imgSuonPXe}</td>
								  <td>${item.imgSuonTXe}</td>
								  <td>${item.hopDong.nhanVien.maNV}</td>
								  															      
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