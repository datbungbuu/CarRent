<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  		<div class="container-fluid">
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item " >
        	<c:choose>
				<c:when test="${not empty  nvAccount}">
					<p class="card-text fs-4 fw-bold" style="font-size: 12px">Xin Chào ${nvAccount.maNV}</p>
				</c:when>
				<c:otherwise>
					<p class="card-text" style="font-size: 12px">Xin Chào</p>
				</c:otherwise>
			</c:choose>
        </li> 
      </ul>
        
        <c:choose>
			<c:when test="${not empty  nvAccount}">
				<a class="btn btn-outline-danger" href="/car/admin/logout">Đăng xuất</a>
			</c:when>
		</c:choose>
    </div>
  </div>
</nav>