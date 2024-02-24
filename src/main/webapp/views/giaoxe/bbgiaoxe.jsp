<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>



</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50eedbacb3.js"
	crossorigin="anonymous"></script>
<body>
	<div class="container-fluid"
		style="max-width: 1600px; max-height: 800px">
		<div class="row" style="height: 786px">
			<div class="col-lg-2" style="background: #289d8c">
				<%@include file="/common/menuadmin.jsp"%>
			</div>


			<div class="col-sm-10 pe-0 mt-5">
				<%-- <%@include file = "/common/nav.jsp" %> --%>


				<form:form action="/car/giaoxe/add" method="post"
					modelAttribute="giaoxemodel">
					<div class="row">
						<div class="col-sm-2">
							<h3>Hợp Đồng: ${hd.maHopDong}</h3>
							<input type="hidden" class="form-control" name="id"
								value="${hd.maHopDong}">
						</div>
					</div>

					<h2 class="text-center">Biên Bản Bàn Giao Xe</h2>
					<div class="row mt-2 mb-3">
						<div class="col-sm-6">

							<div class="mb-3">
								<label class="form-label">Đầu xe</label> <input type="file"
									class="form-control" name="imgDauXe">
							</div>
							<div class="mb-3">
								<label class="form-label">Sườn trái</label> <input type="file"
									class="form-control" name="imgSuonTXe">
							</div>
							<div class="mb-3">
								<label class="form-label">Sườn phải</label> <input type="file"
									class="form-control" name="imgSuonPXe">
							</div>
							<div class="mb-4">
								<label class="form-label">Đuôi xe</label> <input type="file"
									class="form-control" name="imgDuoiXe">
							</div>

							<div class="mt-4">
								<label class="form-label" path="tinhTrang">Tình Trạng Xe</label>
								<form:textarea class="form-control" path="tinhTrang" rows="5" />
								<div class="form-error ${errorMessageT==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>
											<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
											${errorMessageT}</>
									</span>
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row">
								<div class="mb3">
									<form:label class="form-lable" path="ngayGiaoXe">Ngày Giao Xe</form:label>
									<form:input type="text" class="form-control" path="ngayGiaoXe"
										value="2023/09/15" />
									<div class="form-error ${errorMessageD==null?'d-lg-none':'' }">
										<span class="error-item1">
											<p>
												<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
												${errorMessageD}</>
										</span>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="mb-3">
										<label class="form-label" path="ngoaiThat">Ngoại Thất</label>
										<form:textarea class="form-control" path="ngoaiThat" rows="3" />
										<div
											class="form-error ${errorMessageNN==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p>
													<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
													${errorMessageNN}</>
											</span>
										</div>
									</div>
								</div>

								<div class="col-sm-6">
									<div class="mb-3">
										<label class="form-label" path="noiThat">Nội Thất</label>
										<form:textarea class="form-control" path="noiThat" rows="3" />
										<div
											class="form-error ${errorMessageNT==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p>
													<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
													${errorMessageNT}</>
											</span>
										</div>
									</div>
								</div>


							</div>
							<!-- hang xe -->
							<div class="row">
								<div class="col-sm-6">
									<div class="mb-3">
										<form:label class="form-lable" path="dongCo">Động Cơ</form:label>
										<form:textarea class="form-control" path="dongCo" rows="3" />

										<div
											class="form-error ${errorMessageDC==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p>
													<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
													${errorMessageDC}</>
											</span>
										</div>

									</div>
								</div>
								<div class="col-sm-6">
									<div class="mb-3">
										<form:label class="form-lable" path="giayToXe">Giấy Tờ Xe</form:label>
										<form:textarea class="form-control" path="giayToXe" rows="3" />
										<div class="form-error ${errorMessageG==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p>
													<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
													${errorMessageG}</>
											</span>
										</div>
									</div>
								</div>
							</div>

							<!-- Ngay dang kiem -->

							<div class="mb-3">
								<label class="form-label" path="noiDung">Nội Dung</label>
								<!--  <input type="text" class="form-control" name="poster" > -->
								<form:textarea class="form-control" path="noiDung" rows="7" />
								<div class="form-error ${errorMessageND==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>
											<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
											${errorMessageND}</>
									</span>
								</div>
							</div>

							<%--  <div class="">
											   <label class="form-label">Trạng Thái Hoạt Động</label> <br>
											   	<div class="form-check">
												  <!-- <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate"> -->
												  <form:checkbox path="trangThai" class="form-check-input"/>
												  <label class="form-check-label" for="flexCheckIndeterminate">
												    Đang Cho Thuê
												  </label>
												</div>
											 </div> --%>
						</div>
					</div>

					<hr>
					<div class="row mb-3 mt-3" style="padding-top: 60px;">
						<div class="form-error ${errorMessageHD==null?'d-lg-none':'' }">
							<span class="error-item1">
								<p>
									<i class="fa-solid fa-xmark" style="color: #e91c1c;"></i>
									${errorMessageHD}</>
							</span>
						</div>
						<div class="d-flex justify-content-center">
							<button class="btn btn-success" style="font-size: 26px;">CẬP
								NHẬT</button>
						</div>
					</div>
				</form:form>

			</div>


		</div>
	</div>
</body>
</html>