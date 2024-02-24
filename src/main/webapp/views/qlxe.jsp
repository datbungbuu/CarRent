<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Xe</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/460094d4fd.js"
	crossorigin="anonymous"></script>
<link href="/css/qlyxestyle.css" rel="stylesheet">

</head>
<body>
	<div class="carrent-layout">
		<!-- Header -->
		<%@include file="Layout/header.jsp" %>

		<div class="c-container">
			<div class="header-menu" style="justify-content: center;">
				<div>
					<div class="dropdown">
						<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
							type="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa-solid fa-car-side"></i> Loại Xe
						</button>
						<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=1">4 chỗ (Mini)</a></li>
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=2">4 chỗ (Sedan)</a></li>
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=3">5 chỗ (CUV gầm cao</a></li>
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=4">7 chỗ (SUV gầm cao)</a></li>
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=5">7 chỗ (MPV gầm thấp)</a></li> 
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=6">Bán tải</a></li> 
						<li><a class="dropdown-item" href="/qlxe/findlx?keywords=7">MiniVan</a></li> 
						</ul>
					</div>
				</div>
				<div>
					<div class="dropdown">
						<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
							type="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa-solid fa-globe"></i> Hãng Xe
						</button>
						<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=Vinfast">Vinfast</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=Mercedes">Mercedes</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=TOYOTA">TOYOTA</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=KIA">KIA</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=HUYNDAI">HUYNDAI</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=FORD">FORD</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=MAZDA">MAZDA</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=NISSAN">NISSAN</a></li>
						<li><a class="dropdown-item" href="/qlxe/findhx?keywords=LEXUS">LEXUS</a></li>
					    <li><a class="dropdown-item" href="/qlxe/findhx?keywords=Honda">Honda</a></li>
						</ul>
					</div>
				</div>
				<div style="padding: 12px 0px;">
					<a class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false" href="/qlxe/findxechuathue?keywords=0"> 
						<i class="fa-solid fa-bolt-lightning"></i> Xe Chưa Thuê
					</a>
				</div>
				<div class="cara">
					<a class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-brands fa-creative-commons-nc"></i> Miễn Thế Chấp
					</a>
				</div>
				<div>
						<div class="dropdown">
							<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
								type="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa-solid fa-coins"></i> Giá Thuê
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/qlxe/asc?field=giaThue">Tăng Dần</a></li>
								<li><a class="dropdown-item" href="/qlxe/desc?field=giaThue">Giảm Dần</a></li>
							</ul>
						</div>
					</div>
				<div class="cara">
					<a class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-solid fa-map"></i> Giao Xe Nhanh
					</a>
				</div>
				<div class="cara">
					<a class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false" href="/qlxe/findxedien?keywords=Điện">
						<i class="fa-solid fa-car-on"></i>Xe Điện
					</a>
				</div>
				<div>
					<div>
						<div class="dropdown">
							<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
								type="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa-solid fa-gears"></i> Truyền Động
							</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/qlxe/findtruyendong?keywords=Tự">Số
										Tự Động</a></li>
								<li><a class="dropdown-item" href="/qlxe/findtruyendong?keywords=Sàn">Số
										Sàn</a></li>
							</ul>
						</div>
					</div>

					<div class="offcanvas offcanvas-start" data-bs-scroll="true"
						data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
						aria-labelledby="offcanvasScrollingLabel">
						<div class="offcanvas-header">
							<button class="btn btn-outline-dark" class="btn-close"
								data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<div class="offcanvas-body">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> Tất
									Cả </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault2" checked>
								<label class="form-check-label" for="flexRadioDefault2">
									Số Tự Động </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault3" checked>
								<label class="form-check-label" for="flexRadioDefault3">
									Số Sàn </label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="c-container">
			<div class="row">
				<c:forEach var="item" items="${items}">
					<div class="col-lg-4" style="padding: 12px 12px;">
						<a class="car-item" href="/detail?id=${item.bienSo }">
							<div class="car-item-box">

								<div class="car-item-img">
									<div class="car-img">
										<img alt="" src="/images/xe/${item.imgDauXe }">
									</div>
									<span class="car-note"> <span class="c-note"> Đặt
											Xe Nhanh <i class="fa-solid fa-bolt" style="color: yellow;"></i>
									</span> <span class="c-note"> Miễn Thế Chấp <i
											class="fa-solid fa-lock-open" style="color: green;"></i>
									</span>
									</span>
									<div class="car-avatar">
										<img alt="" src="/img/dat.jpg">
									</div>
									<span class="car-discount">${item.trangThai==true?'Đã thuê':'Chưa thuê' }</span>
								</div>

								<div class="car-item-detail">
									<div class="c-detail-type">
										<span class="type-item">Số tự động</span> <span
											class="type-item-1">${item.loaiXe.tenLoai}</span>
									</div>
									<div class="c-detail-name">
										<p>${item.tenXe }</p>
										<i class="fa-solid fa-shield-halved" style="color: green"></i>
									</div>
									<div class="c-detail-address">
										<i class="fa-solid fa-location-dot" style="color: red"></i>
										<p>${item.truSo.duong}, ${item.truSo.xa}, ${item.truSo.huyen}, ${item.truSo.tinh}</p>
									</div>
									<div class="c-detail-line"></div>
									<div class="c-detail-price">
										<div class="price-info">
											<i class="fa-solid fa-person-walking-luggage"></i> <span
												class="num-trip">${item.hangXe.tenHang }</span>
										</div>
										<div class="price-warp">
											<c:set var="total" value="${item.giaThue}"></c:set>
										 	<span class="price-special">${item.formatTien(total)}</span>
										</div>
									</div>
								</div>

							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	<%-- 	<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link"
					href="/qlxe?page=0">First</a></li>
				<li class="page-item"><a class="page-link"
					href="/qlxe?page=${page.number -1 }">Previous</a></li>
				<li class="page-item"><a class="page-link"
					href="/qlxe?page=${page.number +1 }">Next</a></li>
				<li class="page-item"><a class="page-link"
					href="/qlxe?page=${page.totalPages -1 }">Last</a></li>
			</ul>
		</nav> --%>
</body>
</html>