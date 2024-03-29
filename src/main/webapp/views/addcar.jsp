<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Car Rental</title>
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
		
		
				<form:form action="/car/add" method="post" modelAttribute="carmodel">
									<div class="row mt-3 mb-3">
										<div class="col-sm-6">
											<h2 class="text-center">Hình ảnh xe</h2>
											<div class="mb-3">
											    <label class="form-label">Đầu xe</label>
											    <input type="file" class="form-control" name="imgDauXe" >
											      <div class="form-error ${errorMessageDX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageDX}</>
													</span>								
													</div>
											 </div>	
											 <div class="mb-3">
											    <label class="form-label">Sườn trái</label>
											    <input type="file" class="form-control" name="imgSuonTXe" >
											      <div class="form-error ${errorMessageSTX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageSTX}</>
													</span>								
													</div>
											 </div>	
											 <div class="mb-3">
											    <label class="form-label">Sườn phải</label>
											    <input type="file" class="form-control" name="imgSuonPXe" >
											      <div class="form-error ${errorMessageSPX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageSPX}</>
													</span>								
													</div>
											 </div>	
											 <div class="mb-4">
											    <label class="form-label">Đuôi  xe</label>
											    <input type="file" class="form-control" name="imgDuoiXe" >
											      <div class="form-error ${errorMessageDUX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageDUX}</>
													</span>								
													</div>
											 </div>	
											 
											 <div class="mt-3">
											<h3 class="text-center">Mô tả xe</h3>
											<form:textarea class="form-control" path="moTa" rows="7"/>
											<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
										</div>
										</div>
										<div class="col-xl-6">
										<h2 class="text-center">Thông tin xe</h2>
										<div class="row">
											<div class="col-sm-6"> 
												<div class="mb-3">
											    <label class="form-label">Biển Số</label>
											    <form:input type="text" class="form-control" path="bienSo"/>
											    <!-- <input type="text" class="form-control" name="id" > -->
											    <div class="form-error ${errorMessageBS==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageBS}</>
													</span>								
												</div>
											    </div>
											 </div>	
											 
											 <div class="col-sm-6"> 
												<div class="mb-3">
											    <label class="form-label">Tên Xe</label>
											    <form:input type="text" class="form-control" path="tenXe"/>
											    <!-- <input type="text" class="form-control" name="id" > -->
											    <div class="form-error ${errorMessageTX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageTX}</>
													</span>								
												</div>
											    </div>
											 </div>	
											 
											 
											 </div>
											 <!-- hang xe -->
											 <div class="row">
											 	<div class="col-sm-6">
											 	 <div class="mb-3">
											   <form:label class= "form-lable" path="hangXe.maHX">Hãng Xe</form:label>
												    <form:select class="form-select" path="hangXe.maHX">
												    	<form:options items="${hangXes}" itemValue="maHX" itemLabel="tenHang"/>
												    </form:select>
													<%-- <form:errors path="hangXe" class="text-danger" /> --%>
													
											 </div>
											 	</div>
											 	<div class="col-sm-6">
												 	<div class="mb-3">
												    <form:label class="form-lable" path="loaiXe.maLX">Tên Loại</form:label>
												    <form:select class="form-select" path="loaiXe.maLX">
												    	<form:options items="${loaiXes}" itemValue="maLX" itemLabel="tenLoai"/>
												    </form:select>
												 	</div>
											 	</div>				
											 </div>
											 			
											 <!-- Ngay dang kiem -->
											 <div class="mb3">
											 	<form:label class="form-lable" path="">Ngày Đăng Kiểm</form:label>
											 	<form:input type="text" class="form-control" path="ngayDangKiem" value = "2023/09/15"/>
											 </div>							 											 											
			 
											 <div class="mb-3">
											    <label class="form-label">Giá Thuê</label>
											   <!--  <input type="text" class="form-control" name="poster" > -->
											    <form:input path="giaThue" class="form-control"/>
											    <div class="form-error ${errorMessageGX==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageGX}</>
													</span>								
												</div>
											 </div>
											 
											 <div class="row">
											 	<div class="col-sm-6">
											 		  <div class="mb-3 ">
											    <label class="form-label">Số Chỗ</label> <br>
											     <div class="form-check form-check-inline">
											   	 <form:radiobutton path="soCho" value="4" delimiter="" class="form-check-input checked"/>
											   	 
												  <!-- <input class="form-check-input" type="radio" name="socho"  value="4 chỗ"> -->
												  <label class="form-check-label" >4 chỗ</label>
												</div> 				
											<div class="form-check form-check-inline">
											  <form:radiobutton path="soCho" value="5" delimiter="" class="form-check-input checked"/>
											  <label class="form-check-label" >5 chỗ</label>
											</div>
											<div class="form-check form-check-inline">
											  <form:radiobutton path="soCho" value="7" delimiter="" class="form-check-input checked"/>
											  <label class="form-check-label" >7 chỗ</label>
											</div>
											<div class="form-error ${errorMessageSC==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageSC}</>
													</span>								
												</div>
											 </div>
											 	</div>
											 	
											 	<div class="col-sm-6">
											 	
											 	 <div class="mb-3 ">
											    <label class="form-label">Truyền Động</label> <br>
											    <div class="form-check form-check-inline">
												   <form:radiobutton path="truyenDong" value="Số tự động" delimiter="" class="form-check-input"/>
												  <label class="form-check-label" >Số Tự Động</label>
												</div>
												<div class="form-check form-check-inline">
												  <form:radiobutton path="truyenDong" value="Số Sàn" delimiter="" class="form-check-input"/>
												  <label class="form-check-label" >Số Sàn</label>
												</div>
												<div class="form-error ${errorMessageTD==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageTD}</>
													</span>								
												</div>
												 </div>
											 	</div>
											 </div>
											 							 
											 <!-- nhieu lieu -->
											 <div class="row">
											 	<div class="col-sm-6">
											 		<div class="mb-3">
											    <label class="form-label">Nhiên Liệu</label>
											    <%-- <select class="form-select">
												  <option value="Xăng">Xăng</option>
												  <option value="Điện">Điện</option>
												  <option value="Dầu">Dầu</option>
												</select> --%>
												<form:select path="nhienLieu" class="form-select">
														<form:option value="Xăng">Xăng</form:option>
														<form:option value="Điện">Điện</form:option>
														<form:option value="Dầu">Dầu</form:option>			
													</form:select>	
											 </div>
											 	</div>
											 	
											 	<div class="col-sm-6">
											 	<div class="mb-3">
											    <label class="form-label">Nhiên Liệu Tiêu Hao</label>
											   <!--  <input type="text" class="form-control" name="NLTieuHao" > -->
											   <form:input path="nlTieuHao"  class="form-control"/>
											   <div class="form-error ${errorMessageNLTH==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageNLTH}</>
													</span>								
												</div>
												 </div>
											 	</div>
											 </div>
											 
											  
											 <div class="row">
											 	<div class="col-sm-6">
												 	<div class="mb-3">
												    <label class="form-label">Trụ Sở</label>
												    <!-- <input type="text" class="form-control" name="poster" > -->
												   <form:select class="form-select" path="truSo.maTS">
												    	<form:options items="${truSos}" itemValue="maTS" itemLabel="huyen"/>
												    </form:select>
													 </div>
											 	</div>
											 	
											 	<div class="col-sm-6">
												 	<div class="mb-3">
												    <label class="form-label">Tiện Nghi</label>
												    <!-- <input type="text" class="form-control" name="poster" > -->
												    <form:input type="text" path="tienNghi" class="form-control" />
												    <div class="form-error ${errorMessageTN==null?'d-lg-none':'' }">
													<span class="error-item1">
														<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageTN}</>
													</span>								
													</div>
													 </div>
											 	</div>
											 	
											 </div>
											 
											 
											 
											 <div class="">
											   <label class="form-label">Trạng Thái Hoạt Động</label> <br>
											   	<div class="form-check">
												  <!-- <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate"> -->
												  <form:checkbox path="trangThai" class="form-check-input"/>
												  <label class="form-check-label" for="flexCheckIndeterminate">
												    Đang Cho Thuê
												  </label>
												</div>
											 </div>
										</div>
									</div>
									
									<hr>
									<div class="row mb-3">
										<div class="d-grid gap-2 d-md-flex justify-content-md-end">
										  <button formaction="/car/create"  class="btn btn-outline-success me-md-2" type="submit">CREATE</button>
										  <button formaction="/car/update" class="btn btn-outline-warning" type="submit">UPDATE</button>
										  <!-- <button formaction="/car/delete" class="btn btn-outline-danger" type="submit">DELETE</button> -->
										  <!-- <button formaction="" class="btn btn-outline-primary" type="submit">RESET</button> -->
										</div>
									</div>
								</form:form>
		
	</div>
	
	
</div>
 </div>
</body>
</html>