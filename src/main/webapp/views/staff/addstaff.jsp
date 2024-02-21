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
		
		
			<div class="card m-auto  " style="width: 40rem">
				<form:form class="m-3"  action="/staff/create" method="post" modelAttribute="staffmodel">
					<h2 class="text-center mb-3">Thông Tin Nhân Viên</h2>
					
					<div  class="mb-3">
						<label class="form-label">Mã Nhân Viên</label>
						<!-- <input class="form-control" type="text"> -->
						<form:input class="form-control" path="maNV"/>
						<div class="form-error ${errorMessageM==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageM}</>
									</span>								
								</div>
					</div>
					
					
					<div  class="mb-3">
						<label class="form-label">Mật Khẩu</label>
						<!-- <input class="form-control" type="text"> -->
						<form:input  class="form-control " path="matKhau" type="password"/>
						<div class="form-error ${errorMessageP==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageP}</>
									</span>								
								</div>
					</div>
					
					<div class="row">
						<div class="col-sm-6">
							<div  class="mb-3">
							<label class="form-label">Họ Nhân Viên</label>
							<form:input class="form-control" path="hoNV"/>
							<div class="form-error ${errorMessageH==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageH}</>
									</span>								
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div  class="mb-3">
							<label class="form-label">Tên Nhân Viên</label>
							<form:input class="form-control" path="tenNV"/>
							<div class="form-error ${errorMessageT==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageT}</>
									</span>								
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
					<!-- Giới Tính -->
						<div class="col-sm-6">
						<div class="mb-3">
							<label class="form-label">Giới tính</label> <br>
							 <div class="form-check form-check-inline">
							 	 <!-- <input class="form-check-input" type="radio" name="socho"  value="4 chỗ">  -->
							 	 <form:radiobutton path="gioiTinh" value="True" delimiter="" class="form-check-input "/>
								 <label class="form-check-label" >Nam</label>
							 </div>
							 
							 <div class="form-check form-check-inline">
							 	 <form:radiobutton path="gioiTinh" value="False" delimiter="" class="form-check-input "/>
								 <label class="form-check-label" >Nữ</label>
							 </div>
							 <div class="form-error ${errorMessageG==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageG}</>
									</span>								
								</div>
							  
						</div>
						</div>
						<!-- Số Đt  -->
						
						<div class="col-sm-6">
							<div  class="mb-3">
								<label class="form-label">Số Điện Thoại</label>
								<form:input class="form-control" path="soDienThoai"/>
								<div class="form-error ${errorMessagePH == null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessagePH}</>
									</span>								
								</div>
							</div>
						</div>
					</div>
					
					<!-- ngày sinh -->
					<div  class="mb-3">
						<label class="form-label">Ngày Sinh</label>
						<form:input class="form-control" path="ngaySinh" value="2001/01/15"/>
						<div class="form-error ${errorMessageB == null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageB}</>
									</span>								
						</div>
					</div>
					
					<!-- email  -->
					<div  class="mb-3">
						<label class="form-label">Email</label>
						<form:input class="form-control" path="email" type="email"/>
						<div class="form-error ${errorMessageE==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageE}</>
									</span>								
								</div>
					</div>
					
					<!-- địa chỉ  -->
					
					<div class="row">
						<div class="col-sm-6">
							
							<div  class="mb-3">
								<label class="form-label">Thành Phố / Tỉnh</label>
								<form:input class="form-control" path="tinh"/>
								<div class="form-error ${errorMessageTP==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageTP}</>
									</span>								
								</div>
							</div>
							
						</div>
						
						<div class="col-sm-6">
							
							<div  class="mb-3">
								<label class="form-label">Quận / Huyện</label>
								<form:input class="form-control" path="huyen"/>
								<div class="form-error ${errorMessageQ==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageQ}</>
									</span>								
								</div>
							</div>
							
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-6">
							
							<div  class="mb-3">
								<label class="form-label">Phường / Xã</label>
								<form:input class="form-control" path="xa"/>
								<div class="form-error ${errorMessageX==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageX}</>
									</span>								
								</div>
							</div>
							
						</div>
						
						<div class="col-sm-6">
							
							<div  class="mb-3">
								<label class="form-label">Đường</label>
								<form:input class="form-control" path="duong"/>
								<div class="form-error ${errorMessageS==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageS}</>
									</span>								
								</div>
							</div>
							
						</div>
					</div>
					
					<!--trạng thái và chức vụ  -->
					<div class="row">
						<div class="col-sm-6">
						<div class="mb-3">
							<label class="form-label">Chức Vụ</label> <br>
							 <div class="form-check form-check-inline">
							 	<form:radiobutton path="chucVu" value="True"  delimiter="" class="form-check-input "/>
								 <label class="form-check-label" >Quản Lý</label>
							 </div>
							 
							 <div class="form-check form-check-inline">
							 	 <form:radiobutton path="chucVu"   value="False"  delimiter="" class="form-check-input "/>
								 <label class="form-check-label" >Nhân Viên</label>
							 </div>
							 <div class="form-error ${errorMessageCV==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageCV}</>
									</span>								
								</div>
						</div>
							
						</div>
						
						
						
						<div class="col-sm-6">
						<div class="mb-3">
							<label class="form-label">Trạng Thái</label> <br>
							<div class="form-check">
							  <form:checkbox path="trangThai" class="form-check-input"/> 
							<label class="form-check-label" >
								Đang Hoạt Động 
							</label>
							</div>
							
						</div>
							
						</div>
					</div>
					
					<div class="mb-3">
					 <label class="form-label">Ảnh Đại Diện</label>
					 <input type="file" class="form-control" name="avatar" >
											
					</div>
					
					<hr>
					<div class="row mb-3">
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button formaction="/staff/create"  class="btn btn-outline-success me-md-2" type="submit">CREATE</button>
						<button formaction="/staff/update" class="btn btn-outline-warning" type="submit">UPDATE</button>
						 <!-- <button formaction="/car/delete" class="btn btn-outline-danger" type="submit">DELETE</button> -->
						 <!-- <button formaction="" class="btn btn-outline-primary" type="submit">RESET</button> -->
						</div>
						</div>
					
				</form:form>
			</div>
		
	</div>
	
	
</div>
 </div>
</body>
</html>