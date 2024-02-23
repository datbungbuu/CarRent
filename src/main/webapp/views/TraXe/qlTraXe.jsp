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
	
	
<div class="col-sm-10 pe-0 mt-5">
	<%-- <%@include file = "/common/nav.jsp" %> --%>				
	<form:form action="/car/qlTraXe/update" method="post" modelAttribute="traxemodel">
		<div class="row mt-3 mb-3">
			<div class="col-sm-6">				

				 <div class="mb3">
				 	<h3 >Số Hợp Đồng: ${hd.maHopDong}</h3> 
				 	<hr>				 	
				 </div>
				<div class="mb-3">
				    <label class="form-label">Đầu xe</label>
				    <input type="file" class="form-control" name="imgDauXe" >
				 </div>	
				 <div class="mb-3">
				    <label class="form-label">Sườn trái</label>
				    <input type="file" class="form-control" name="imgSuonTXe" >
				 </div>	
				 <div class="mb-3">
				    <label class="form-label">Sườn phải</label>
				    <input type="file" class="form-control" name="imgSuonPXe" >
				 </div>	
				 <div class="mb-4">
				    <label class="form-label">Đuôi  xe</label>
				    <input type="file" class="form-control" name="imgDuoiXe" >
				 </div>	
				 	
				 
			</div>
			<div class="col-xl-6">
				<h2 class="text-center">Thông Tin Bàn Giao</h2>
				<!-- Ngay dang kiem -->
				 <div class="mb3">
				 	<form:label class="form-lable" path="ngayNhanxe">Ngày Nhận Bàn Giao</form:label>
				 	<form:input type="text" class="form-control" path="ngayNhanxe" value = "2023/09/15"/>
				 </div>
				<div class="row">
					<div class="col-sm-6">
						<div class="mt-3">
							<label class="form-label">Giấy Tờ Xe</label>
							<form:textarea class="form-control" path="giayToxe" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
					<div class="col-sm-6">
						<div class="mt-3">
							<label class="form-label">Tình Trạng Xe</label>
							<form:textarea class="form-control" path="tinhTrang" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="mt-3">
							<label class="form-label">Ngoại Thất</label>
							<form:textarea class="form-control" path="ngoaiThat" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
					<div class="col-sm-6">
						<div class="mt-3">
							<label class="form-label">Nội Thất</label>
							<form:textarea class="form-control" path="noiThat" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="mt-3">
							<label class="form-label">Động Cơ</label>
							<form:textarea class="form-control" path="noiThat" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
					<div class="col-sm-6">
						<div class="mt-3">														
							<label class="form-label">Nội Dung Bàn Giao</label>
							<form:textarea class="form-control" path="noiDung" rows="2"/>
							<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
						</div>
					</div> 
				</div>																												 											 																									 												
			</div>
		</div>									
		<hr>
		<div class="row mb-3">
			<div class="d-flex justify-content-center">
			  <button  class="btn btn-success">CẬP NHẬT</button>
			</div>
		</div>
	</form:form>		
</div>
	
	
</div>
 </div>
</body>
</html>