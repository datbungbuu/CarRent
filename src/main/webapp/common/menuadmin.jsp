<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div class="tab-menu">
				<div class="row mt-3 mb-3 text-center" style="color: white;">
					<h6 class="ps-3" style="font-size: 38px;" ><i class="fa-solid fa-truck-fast"></i> <a href="/car/home" style="text-decoration: none; color: white">CarRental</a>  </h6>
					<h6 class="ps-3" style="font-size: 20px;" > Administrator </h6>
					<hr>
				</div>
				
				<div class="row justify-content-center">

					<a href="/car/home" class="btn text-start"type="button" style="font-size: 24px; padding-left: 30px; color: white"><i class="fa-solid fa-house"></i> Trang Chủ</a>
					<div class="accordion accordion-flush" id="accordionFlushExample">
						<!-- Xe -->
					  	<div class="accordion-item" style="background: #289d8c; color: white;">
						    <h2 class="accordion-header" style="background: #289d8c; color: white;">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" style="background: #289d8c; color: white;">
						        <i class="fa-solid fa-car me-1"></i> Xe</li>
						      </button>
						    </h2>
						    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
						      <div class="accordion-body">
						      	<ul class="list-group p-0" style="cursor: pointer;">					
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/add" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-photo-film" ></i> Quản lý xe</a>
									 </li>
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/list" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-clipboard-list"></i> Danh sách xe</a>
									 </li>
								 </ul>	
						      </div>
						    </div>
					  	</div>
					  
						<!-- Tài Khoản -->
						<div class="accordion-item" style="background: #289d8c; color: white;">
						    <h2 class="accordion-header" style="background: #289d8c; color: white;">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo" style="background: #289d8c; color: white;">
						        <i class="fa-solid fa-users me-1"></i> Nhân Viên</li>
						      </button>
						    </h2>
						    <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
						      <div class="accordion-body">
						      	<ul class="list-group p-0" style="cursor: pointer;">					
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/staff" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-user-pen"></i> Quản lý nhân viên</a>
									 </li>
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/liststaff" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-clipboard-list"></i> Danh sách nhân viên </a>
									 </li>
								 </ul>	
						      </div>
						    </div>
						</div>
					  
					  	<!-- Thống Kê -->
					  	<c:choose>
							<c:when test="${nvAccount.chucVu == true }">
								<div class="accordion-item" style="background: #289d8c; color: white;">
								    <h2 class="accordion-header" style="background: #289d8c; color: white;">
								      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree" style="background: #289d8c; color: white;">
								        <i class="fa-solid fa-bars me-1"></i> Thống Kê</li>
								      </button>
								    </h2>
								    <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
								      <div class="accordion-body">
								      	<ul class="list-group p-0" style="cursor: pointer;">					
											 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
											 	<a href="/car/report" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-heart"></i> Thống kê hợp đồng</a>
											 </li>
										 </ul>	
								      </div>
								    </div>
								</div>
							</c:when>
						</c:choose>
						
						
						
						<!-- Quản Lý Hợp Đồng -->
						<div class="accordion-item" style="background: #289d8c; color: white;">
						    <h2 class="accordion-header" style="background: #289d8c; color: white;">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour" style="background: #289d8c; color: white;">
						        <i class="fa-solid fa-bars me-1"></i> Quản Lý Hợp Đồng</li>
						      </button>
						    </h2>
						    <div id="flush-collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
						      <div class="accordion-body">
						      	<ul class="list-group p-0" style="cursor: pointer;">					
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/contract/list-pre-contract" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-heart"></i> Hợp Đồng Chưa Xác Nhận</a>
									 </li>
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/contract/list-post-contract" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-thumbs-up"></i> Hợp Đồng Đã Xác Nhận</a>
									 </li>
									 <%-- <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="<c:url value='/report?action=view'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-share-nodes"></i> SHARED FRIENDS</a>
									 </li> --%>
								 </ul>	
						      </div>
						    </div>
						</div>
					  
					  	<!-- Quản Lý Bàn Giao Xe -->
						<div class="accordion-item" style="background: #289d8c; color: white;">
						    <h2 class="accordion-header" style="background: #289d8c; color: white;">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive" style="background: #289d8c; color: white;">
						        <i class="fa-solid fa-bars me-1"></i> Quản Lý Bàn Giao Xe</li>
						      </button>
						    </h2>
						    <div id="flush-collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
						      <div class="accordion-body">
						      	<ul class="list-group p-0" style="cursor: pointer;">					
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/Listgiaoxe" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-heart"></i> Danh Sách Xe Đã Bàn Giao</a>
									 </li>
									 <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="/car/listTraXe" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-regular fa-thumbs-up"></i> Danh Sách Xe Đã Nhận</a>
									 </li>
									 <%-- <li class="list-group-item ms-auto me-auto mt-2 mb-2 border-0"  style="background: #289d8c; color: white;">
									 	<a href="<c:url value='/report?action=view'/>" class="btn"type="button" style="font-size: 14px; color: white"><i class="fa-solid fa-share-nodes"></i> SHARED FRIENDS</a>
									 </li> --%>
								 </ul>	
						      </div>
						    </div>
						</div>
						
<!-- >>>>>>> 3627b166ad05c47f6bdb43d8d67e9bb3dd64aac5 -->
					</div>
										
						<div class="card border-0" style="background: #289d8c;color: white; padding-top: 110px;">
							<hr>
							<h5 class="pt-3 ps-3">FOR HELP <i class="fa-solid fa-question"></i></h5>
						  <div class="card-body pt-2 ms-3" style="color: white">					  	
						    <h6 class="card-title">Email:</h6>
						   	<c:choose>
								<c:when test="${not empty  nvAccount}">
									<p class="card-text" style="font-size: 12px">${nvAccount.email}</p>
								</c:when>
								<c:otherwise>
									<p class="card-text" style="font-size: 12px">email@gmail.com</p>
								</c:otherwise>
							</c:choose>
						    
						    <h6 class="card-title">Số Điện Thoại:</h6>
						    <c:choose>
								<c:when test="${not empty nvAccount}">
									<p class="card-text" style="font-size: 12px">${nvAccount.soDienThoai}</p>
								</c:when>
								<c:otherwise>
									<p class="card-text" style="font-size: 12px">(+84) 123 456 789</p>
								</c:otherwise>
							</c:choose>
						  </div>
						</div>
				</div>
			</div>