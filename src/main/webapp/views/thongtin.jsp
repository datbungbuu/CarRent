<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!-- saved from url=(0028)https://www.mioto.vn/account -->
<html lang="en">

<head itemscope="" itemtype="http://schema.org/WebSite">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mioto - Ứng dụng cho thuê xe tự lái &amp; có tài xế 4-7 chỗ</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
        content="width=device-width,height=device-height,initial-scale=1,maximum-scale=1,user-scalable=0">
    <meta name="format-detection" content="telephone=no">
    <meta name="robots" content="index, follow">
    <meta name="facebook-domain-verification" content="f8uvml9qgda7pkb6mryeta7znptu50">
    <meta name="zalo-platform-site-verification" content="H-sx4etvEqXkqwnYaCKOLc7mj4oDZsKND3O">
    <meta itemprop="name" content="Cho thuê xe du lịch | thuê xe tự lái">
    <meta name="DC.title" content="cho thue xe tu lai | thue xe du lich Mioto">
    <meta name="geo.region" content="VN-SG">
    <meta name="geo.placename" content="Ho Chi Minh">
    <meta name="geo.position" content="10.794782;106.666817">
    <meta name="ICBM" content="10.794782, 106.666817">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT">
    <meta http-equiv="pragma" content="no-cache">
    <meta name="description"
        content="Ứng dụng cho thuê xe tự lái, du lịch, công tác có tài xế 4-7 chỗ. Hỗ trợ kết nối giữa chủ xe và khách thuê nhanh chóng. Đa dạng nhiều dòng xe, đặt xe dễ dàng ">
    <meta name="keywords"
        content="Thuê xe tự lái, thue xe du lich, cho thue xe tu lai, cho thuê xe tự lái, thue xe oto, Thuê xe tự lái tphcm, thue xe cuoi, xe tự lái, Cho thuê xe 7 chỗ, thuê xe cưới, xe tu lai, Thuê xe tự lái Sài Gòn, thue xe hoi, Cho thuê xe du lịch 7 chỗ, thuê xe hơi">
    <meta name="google-site-verification" content="bD-RnF6yWFPYQRA-WQwOIkC8kxvtXERH__NCAuOuU-w">
    <meta property="al:ios:url" content="fb1760356927595709://">
    <meta property="al:ios:app_store_id" content="1316420500">
    <meta property="al:ios:app_name" content="“MIOTO" -="" car="" rental="" app”="">
    <meta property="al:android:url" content="mioto://">
    <meta property="al:android:package" content="com.mioto.mioto">
    <meta property="al:android:app_name" content="MIOTO - Car rental app">
    <script>function getKey() { var e = ["AIzaSyAFurjgdSF4h2wUlg9UqAlkWzXtBnCKHhc", "AIzaSyDhkJjX7S2t3VSusL3KBHUCTA864ioR_ZU", "AIzaSyAak7F0E5NgRb9bInEyO3rQMsIjxDjIRYs"]; return e[Math.floor(Math.random() * e.length)] } var poll, timeout = 100, KEY = getKey(); !function () { var e = document.createElement("script"); e.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBp9a26SRtrIHhI9dVGfeuFxgLgX5qtv3w&libraries=geometry,places", e.async = !0, e.id = "gmap"; var t = document.head; t.insertBefore(e, t.firstChild) }()</script>
    <script>function gtag() { dataLayer.push(arguments) } window.dataLayer = window.dataLayer || [], gtag("js", new Date), gtag("config", "G-69J768NCYT")</script>
    <script>!function (e, t, n, c, o, a, f) { e.fbq || (o = e.fbq = function () { o.callMethod ? o.callMethod.apply(o, arguments) : o.queue.push(arguments) }, e._fbq || (e._fbq = o), o.push = o, o.loaded = !0, o.version = "2.0", o.queue = [], (a = t.createElement(n)).async = !0, a.src = "https://connect.facebook.net/en_US/fbevents.js", (f = t.getElementsByTagName(n)[0]).parentNode.insertBefore(a, f)) }(window, document, "script"), fbq("init", "467366885531539"), fbq("track", "PageView")</script>
    <link href="/css/main.chunk.css" rel="stylesheet">
    <link href="/css/2.chunk.css" rel="stylesheet">
    <script src="./thongtincanhan_files/js(6)" async=""></script>
</head>

<body>
    <div canvas="container" id="root">
        <div class="mioto-layout">
            <section class="header line-header  scroll-top ">
                <div class="m-container"><a class="logo-container" href="">
                        <div class="full-logo"><img loading="lazy" src="/img/iconCarRent1.jpg"
                                alt="Mioto"></div>
                        <div class="short-logo"><img loading="lazy"
                                src="data:image/png;base64,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"
                                alt="Mioto"></div>
                    </a>
                    <div class="menu-container">
                    <a href="/car/logout">Đăng xuất</a>
                    <a href=""></a>
                    <a href=""></a>
                        <div class="vertical-line"></div>
                        <div>
                            <div class="notification">
                                <div class="wrap-svg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M20.22 16.62C20.22 17.47 19.53 18.16 18.68 18.16H5.32004C4.47004 18.16 3.78003 17.47 3.78003 16.62C3.78003 15.77 4.47004 15.08 5.32004 15.08H5.83002V9.94002C5.83002 6.54002 8.59003 3.77002 12 3.77002C13.7 3.77002 15.24 4.46002 16.36 5.58002C17.48 6.69002 18.17 8.23002 18.17 9.94002V15.08H18.68C19.53 15.08 20.22 15.77 20.22 16.62Z"
                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                        <path d="M12 3.78V2.75" stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                        <path
                                            d="M15.08 18.1699C15.08 19.8799 13.7 21.2499 12 21.2499C10.3 21.2499 8.92004 19.8699 8.92004 18.1699H15.08Z"
                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                    </svg></div>
                                <div class="dropdown-menu">
                                    <h5 class="title-name">Thông báo</h5>
                                    <div class="line-page"></div>
                                    <div class="list-noti">
                                        <div class="empty"><img loading="lazy" class="empty-noti"
                                                src="./thongtincanhan_files/empty-noti.d68f85ae.svg">
                                            <p class="font-14 textAlign-center">Không có thông báo</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown-profile"><a class="dropdown-profile" href="">
                                <div class="avatar avatar--s"><img loading="lazy"
                                        src="./thongtincanhan_files/awoQ7SxDUjg11VwG9sKffA.jpg"
                                        alt="Ten khach hang"></div><span class="name">${guests.tenKH }</span>
                                <div class="wrap-svg"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24" fill="none">
                                        <path
                                            d="M16.8998 9.20039C16.4998 8.80039 15.8998 8.80039 15.4998 9.20039L11.9998 12.7004L8.4998 9.20039C8.0998 8.80039 7.4998 8.80039 7.0998 9.20039C6.6998 9.60039 6.6998 10.2004 7.0998 10.6004L11.2998 14.8004C11.4998 15.0004 11.6998 15.1004 11.9998 15.1004C12.2998 15.1004 12.4998 15.0004 12.6998 14.8004L16.8998 10.6004C17.2998 10.2004 17.2998 9.60039 16.8998 9.20039Z"
                                            fill="black"></path>
                                    </svg></div>
                            </a>
                            <div class="wrap-svg tab-menu"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path d="M5 6H19" stroke="black" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round"></path>
                                    <path d="M5 18H19" stroke="black" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round"></path>
                                    <path d="M5 12H19" stroke="black" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round"></path>
                                </svg></div>
                        </div>
                        <div class="menu-mobile open move-left">
                            <div class="header-menu">
                                <div class="close-menu">×</div>
                            </div>
                            <div class="m-container">
                                <div class="menu-list"><a class="menu-avatar" href="">
                                        <div class="avatar avatar--s"><img loading="lazy"
                                                src="./thongtincanhan_files/awoQ7SxDUjg11VwG9sKffA.jpg"
                                                alt="Tran Minh Trung FPL HCM"></div><span class="name">Tran Minh Trung
                                            FPL HCM</span>
                                    </a>
                                    <div class="line-page"></div><a class="menu-list__item"
                                        href="">Xe của tôi</a>
                                    <div class="line-page"></div><a class="menu-list__item"
                                        href="">Xe yêu thích</a>
                                    <div class="line-page"></div><a class="menu-list__item"
                                        href="">Quà tặng</a>
                                </div>
                                <div class="menu-list"><a class="menu-list__item" href="">Về
                                        Mioto</a>
                                    <div class="line-page"></div><a class="menu-list__item"
                                        href="">Trở thành chủ xe</a>
                                    <div class="line-page"></div><a class="menu-list__item"
                                        href="">Chuyến của tôi</a>
                                </div><a class="menu-logout">
                                    <div class="wrap-svg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M12 2.74907H18.12C18.9125 2.71374 19.6868 2.99377 20.2734 3.52788C20.86 4.06199 21.2111 4.8067 21.25 5.59907V18.3991C21.2111 19.1914 20.86 19.9362 20.2734 20.4703C19.6868 21.0044 18.9125 21.2844 18.12 21.2491H12"
                                                stroke="black" stroke-width="1.5" stroke-linecap="round"
                                                stroke-linejoin="round"></path>
                                            <path d="M14.9993 12H2.7793" stroke="black" stroke-width="1.5"
                                                stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M2.75 12L6.75 16" stroke="black" stroke-width="1.5"
                                                stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M2.75 12L6.75 8" stroke="black" stroke-width="1.5"
                                                stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg></div>Đăng xuất
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="body">
                <div class="account-section sec space">
                    <div class="m-container">
                        <div class="account-container">
                            <div class="sidebar-account">
                                <div>
                                    <div style="padding-bottom: 0px;"></div>
                                    <div class="sidebar-account-sticky" style="transform: translateZ(0px);">
                                        <div class="title">
                                            <h4>Xin chào bạn!</h4>
                                        </div>
                                        <div class="sidebar"><a class="sidebar-item active" aria-current="page"
                                                href="">
                                                <div class="wrap-svg"><svg width="24" height="24" viewBox="0 0 24 24"
                                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M11.76 10.86C13.3782 10.86 14.69 9.54819 14.69 7.93C14.69 6.31181 13.3782 5 11.76 5C10.1418 5 8.83 6.31181 8.83 7.93C8.83 9.54819 10.1418 10.86 11.76 10.86Z"
                                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                                            stroke-linejoin="round"></path>
                                                        <path
                                                            d="M5.84 19.0001V17.3301C5.84 15.3801 7.42 13.8101 9.36 13.8101H14.63C16.58 13.8101 18.15 15.3901 18.15 17.3301V19.0001"
                                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                                            stroke-linejoin="round"></path>
                                                    </svg></div>
                                                <p>Tài khoản của tôi</p>
                                            </a><a class="" href="">
                                                
                                               
                                            </a><a class="" href="">
                                                
                                                
                                            </a><a class="" href="">
                                                
                                                
                                            </a><a class="" href="">
                                                
                                                
                                            </a><a class="" href="">
                                                
                                                
                                            </a><a class="" href="">
                                                
                                                
                                            </a><a class="" href="">
                                                
                                                
                                            </a>
                                            <div class="">
                                                
                                                
                                            </div><a class="sidebar-item" href="">
                                                
                                                
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="dropdown-sidebar custom-dropdown">
                                    <div class="dropdown-selected">
                                        <p>Tài khoản của tôi</p>
                                    </div>
                                </div>
                            </div>
                            <div class="content-account">
                            <form method="post" action="/guest/edit">
                            <div>
                                <div class="content-item user-profile">
                                    <div class="title">
                                        <div class="title-edit">
                                            <h5>Thông tin tài khoản</h5>
                                            <div id="edit" class="wrap-svg"><svg width="16" height="16" viewBox="0 0 16 16"
                                                    fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M4.30732 14.1607L14.1673 4.30065L11.7007 1.83398L1.84065 11.694L1.83398 14.1673L4.30732 14.1607Z"
                                                        stroke="black" stroke-linecap="round" stroke-linejoin="round">
                                                    </path>
                                                    <path d="M10.2344 4.08789L11.9144 5.76788" stroke="black"
                                                        stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                             </div>
	                                        <div id="edited" class="hidden wrap-btn has-2-btn" style="padding-top: 0px; width: unset;">
		                                        <a id="cancel" class="btn btn-cancel">Huỷ</a>
		                                        <button class="btn btn--s btn-primary">Cập nhật</button>
	                                        </div>
                                        </div>
                                        
                                    </div>
                                    <div class="content">
                                        <div class="avatar-box">
                                            <div class="avatar avatar--xl has-edit"><img loading="lazy"
                                                    src="/img/${guests.avatar }"
                                                    alt="Tran Minh Trung FPL HCM"></div>
                                            <h6>${guests.tenKH }</h6>
                                            
                                            
                                        </div>
                                        <div class="info-user">
                                            <div class="info-box">
                                                <div class="info-box__item">
                                                    <p>Ngày sinh </p>
                                                    <input required pattern="[0-9]{4}-[0-1][0-9]-[0-3][0-9]" name="birthDate" disabled style="width: 100px" type="text" placeholder="Ngày sinh" value="${ngaySinh }" fdprocessedid="lw0vnk">
                                                </div>
                                                <div class="info-box__item">
                                                    <p>Giới tính</p>
                                                    <input required name="gender" disabled style="width: 100px" type="text" placeholder="Giới tính" value="${guests.gioiTinh ? 'Nam':'Nữ'}" fdprocessedid="lw0vnk">
                                                </div>
                                            </div>
                                            <div class="info-desc">
                                                <div class="info-desc__item">
                                                    <div class="title-item">Số điện thoại<div class="note success">
                                                            <div class="wrap-svg"><svg width="12" height="12"
                                                                    viewBox="0 0 12 12" fill="none"
                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M6 1C3.245 1 1 3.245 1 6C1 8.755 3.245 11 6 11C8.755 11 11 8.755 11 6C11 3.245 8.755 1 6 1ZM7.795 5.295L6.035 7.055C5.96 7.13 5.865 7.165 5.77 7.165C5.675 7.165 5.575 7.13 5.505 7.055L4.625 6.175C4.475 6.03 4.475 5.79 4.625 5.645C4.77 5.5 5.01 5.5 5.155 5.645L5.77 6.26L7.265 4.765C7.41 4.62 7.645 4.62 7.795 4.765C7.94 4.91 7.94 5.15 7.795 5.295Z"
                                                                        fill="#12B76A"></path>
                                                                </svg></div>Đã xác thực
                                                        </div>
                                                    </div>
                                                    <div class="name">
                                                    	<div>
                                                    		<input pattern="^(03|05|07|08)[0-9]{8}$|(09)[0-9]{7,8}$" name="phoneNumber" disabled type="text" placeholder="Số điện thoại" required value="${guests.soDienThoai }" fdprocessedid="lw0vnk">
                                                    	</div>
                                                    </div>
                                                </div>
                                                <div class="info-desc__item">
                                                    <div class="title-item">Email<div class="note success">
                                                            <div class="wrap-svg"><svg width="12" height="12"
                                                                    viewBox="0 0 12 12" fill="none"
                                                                    xmlns="http://www.w3.org/2000/svg">
                                                                    <path
                                                                        d="M6 1C3.245 1 1 3.245 1 6C1 8.755 3.245 11 6 11C8.755 11 11 8.755 11 6C11 3.245 8.755 1 6 1ZM7.795 5.295L6.035 7.055C5.96 7.13 5.865 7.165 5.77 7.165C5.675 7.165 5.575 7.13 5.505 7.055L4.625 6.175C4.475 6.03 4.475 5.79 4.625 5.645C4.77 5.5 5.01 5.5 5.155 5.645L5.77 6.26L7.265 4.765C7.41 4.62 7.645 4.62 7.795 4.765C7.94 4.91 7.94 5.15 7.795 5.295Z"
                                                                        fill="#12B76A"></path>
                                                                </svg>
                                                                </div>
                                                                Đã xác thực
                                                        </div>
                                                    </div>
                                                    <div class="name">
                                                    	<input name="email" disabled type="email" placeholder="Email" value="${guests.email }" fdprocessedid="lw0vnk">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="info-note"></div>
                                </div>
                                <div class="content-item driver-license">
                                    <div class="title">
                                        <div class="title-item">
                                            <h6>Giấy phép lái xe</h6>
                                            
                                        </div>
                                        	
	                                    </div>
                                    
                                    <div class="content">
                                        <div class="info-license">
                                            <div class="info-license__title">
                                                <p>Thông tin chung</p>
                                            </div>
                                            <div class="custom-input">
                                                <div class="wrap-info">
                                                    <div class="title-status">
                                                        <p>Số GPLX</p>
                                                    </div>
                                                    <div class="desc text-success"></div>
                                                </div>
                                                <div class="wrap-input disabled">
                                                    <div class="wrap-text">
                                                    <input disabled type="text"
                                                            name="licenseNumber" placeholder="Nhập số GPLX đã cấp"
                                                            value="${guests.soGPLX }" pattern="[0-9]+" required>
                                                            </div>
                                                </div>
                                            </div>
                                            <div class="custom-input">
                                                <div class="wrap-info">
                                                    <div class="title-status">
                                                        <p>Họ và tên</p>
                                                    </div>
                                                    <div class="desc text-success"></div>
                                                </div>
                                                <div class="wrap-input disabled">
                                                    <div class="wrap-text">
                                                    	<input disabled type="text" name="licenseFirstName" placeholder="Nhập họ"
                                                            value="${guests.hoKH }" pattern="[^0-9]+" required>
                                                    </div>
                                                </div>
                                                <div class="wrap-input disabled">
                                                    <div class="wrap-text">
                                                        <input disabled type="text" name="licenseName" placeholder="Nhập tên"
                                                            value="${guests.tenKH }" pattern="[^0-9]+" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="custom-input">
                                                <div class="wrap-info">
                                                    <div class="title-status">
                                                        <p>Ngày sinh</p>
                                                    </div>
                                                    <div class="desc text-success"></div>
                                                </div>
                                                <div class="wrap-input disabled">
                                                    <div class="wrap-text"><span>${ngaySinh }</span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info-license">
                                            <div class="info-license__title">
                                                <p>Hình ảnh</p>
                                            </div>
                                            
                                            <c:choose>
                                            	<c:when test="${not empty guests.hinhMatTruocGPLX }">
                                            		<img width="400px" alt="" src="/images/gplxcccd/${guests.hinhMatTruocGPLX }">
                                            	</c:when>
                                            	<c:otherwise>
                                            	<div class="info-license__upload  ">
                                                <div class="wrap-svg"><svg width="45" height="46" viewBox="0 0 45 46"
                                                        fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M29.2498 36.7042H32.7748C36.8623 36.7042 39.8436 32.0659 39.8436 28.1559C39.8183 26.8801 39.5373 25.6232 39.0181 24.4628C38.4989 23.3024 37.7524 22.2631 36.8248 21.4092C35.3633 20.1219 33.4613 19.4807 31.5373 19.6267C31.3697 19.6453 31.2002 19.6297 31.0386 19.5808C30.8769 19.5319 30.7263 19.4508 30.5956 19.3421C30.4648 19.2333 30.3564 19.0992 30.2767 18.9473C30.1969 18.7955 30.1475 18.629 30.1311 18.4575C29.3623 5.96087 11.0623 6.13337 10.7811 18.975C10.7766 19.2372 10.6981 19.4924 10.555 19.71C10.412 19.9276 10.2105 20.0984 9.97484 20.2017C8.24176 21.0791 6.84492 22.523 6.00592 24.3042C5.16693 26.0855 4.93382 28.1021 5.34359 30.0342C5.57802 31.2377 6.05826 32.377 6.75292 33.3777C7.44758 34.3785 8.34102 35.2181 9.37484 35.8417C10.6707 36.5604 12.1426 36.8799 13.6123 36.7617H15.9561"
                                                            stroke="#5FCF86" stroke-width="2.44717"
                                                            stroke-linecap="round" stroke-linejoin="round"></path>
                                                        <path d="M22.5 36.7808V23.4983" stroke="#5FCF86"
                                                            stroke-width="2.44717" stroke-linecap="round"
                                                            stroke-linejoin="round"></path>
                                                        <path d="M18.4307 27.3316L22.4994 23.1917L26.5682 27.3316"
                                                            stroke="#5FCF86" stroke-width="2.44717"
                                                            stroke-linecap="round" stroke-linejoin="round"></path>
                                                    </svg>
                                                </div>
                                                <p class="main">Chọn hình ảnh giấy phép</p>
                                                </div>
                                                </c:otherwise>
                                                </c:choose>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="footer">
                <div class="m-container">
                    <div class="footer-about">
                        <div class="footer-info"><a href="" class="wrap-svg logo"><img
                                    loading="lazy" src="/images/logo-full.png"></a>
                            <div class="phone-mail"><a class="item" href="tel:19009217">
                                    <p class="main">1900 9217</p>
                                    <p>Tổng đài hỗ trợ: 7AM - 10PM</p>
                                </a><a class="item" href="mailto:contact@mioto.vn">
                                    <p class="main">contact@mioto.vn</p>
                                    <p>Gửi mail cho Mioto</p>
                                </a></div>
                            <div class="footer-contact"><a class="wrap-svg" target="_blank"
                                    href="https://www.facebook.com/mioto.vn/"><svg width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M11.94 21.2501V14.1601H9.5V11.4301H11.94V9.43012C11.94 8.31012 12.22 7.47012 12.86 6.83012C13.5 6.19012 14.34 5.87012 15.42 5.87012C16.22 5.87012 16.94 5.91012 17.5 5.99012V8.39012H16.06C15.54 8.39012 15.18 8.51012 14.98 8.75012C14.82 8.99012 14.74 9.31012 14.74 9.71012V11.4301H17.51L17.15 14.1601H14.75V21.2501"
                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                        <path
                                            d="M17.14 21.25H6.86C4.59 21.25 2.75 19.41 2.75 17.14V6.86C2.75 4.59 4.59 2.75 6.86 2.75H17.14C19.41 2.75 21.25 4.59 21.25 6.86V17.14C21.25 19.41 19.41 21.25 17.14 21.25Z"
                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                    </svg></a><a class="wrap-svg" target="_blank"
                                    href="https://www.tiktok.com/@miotovn"><svg width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9.75999 12.69C8.27999 12.69 7.04999 13.92 7.04999 15.4C7.04999 16.88 8.27999 18.11 9.75999 18.11C11.24 18.11 12.47 16.88 12.47 15.4V2.75H15.65C15.65 2.79 15.65 2.79 15.65 2.82C15.65 3.07 15.65 3.33 15.72 3.58C15.94 4.77 16.66 5.82 17.67 6.47C18.36 6.94 19.19 7.19 20.05 7.19C20.05 7.19 20.05 7.19 20.09 7.19V10.33H20.05C18.39 10.33 16.87 9.82 15.64 8.92V15.39C15.64 18.64 13 21.24 9.74999 21.24C6.49999 21.24 3.89999 18.64 3.89999 15.39C3.89999 12.14 6.49999 9.5 9.74999 9.5V12.69H9.75999Z"
                                            stroke="black" stroke-width="1.5" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                    </svg></a><a class="wrap-svg" target="_blank"
                                    href="https://zalo.me/1377158618768832739"><svg width="24" height="24"
                                        viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="path-1-outside-1_6394_301594" maskUnits="userSpaceOnUse" x="0.919998"
                                            y="0.919922" width="22" height="22" fill="black">
                                            <rect fill="white" x="0.919998" y="0.919922" width="22" height="22"></rect>
                                            <path
                                                d="M4.32 1.91992C3.00023 1.91992 1.92 3.00015 1.92 4.31992V19.6799C1.92 20.9997 3.00023 22.0799 4.32 22.0799H19.68C20.999822.0799 22.08 20.9997 22.08 19.6799V4.31992C22.08 3.00015 20.9998 1.91992 19.68 1.91992H4.32ZM4.32 2.87992H7.47656C5.81666 4.60701 4.8 6.87526 4.8 9.35992C4.8 11.9334 5.88871 14.2792 7.65562 16.0265C7.5914 15.9653 7.67454 16.0717 7.68281 16.2599C7.69134 16.4542 7.66209 16.7212 7.58344 16.9855C7.42613 17.5143 7.09711 18.0017 6.56812 18.178C6.46765 18.2115 6.38107 18.2773 6.32187 18.3651C6.26266 18.4529 6.23416 18.5578 6.24079 18.6635C6.24742 18.7692 6.28882 18.8698 6.35854 18.9495C6.42826 19.0292 6.52238 19.0836 6.62625 19.1043C7.95091 19.3692 8.8879 18.9704 9.57844 18.6534C10.269 18.3363 10.6421 18.123 11.34 18.4049L11.3456 18.4068C12.6523 18.9176 14.091 19.1999 15.6 19.1999C17.6147 19.1999 19.503 18.6965 21.12 17.819V19.6799C21.12 20.4808 20.4809 21.1199 19.68 21.1199H4.32C3.51913 21.1199 2.88 20.4808 2.88 19.6799V4.31992C2.88 3.51905 3.51913 2.87992 4.32 2.87992ZM8.87812 2.87992H19.68C20.4809 2.87992 21.12 3.51905 21.12 4.31992V16.7062C19.5489 17.67 17.6518 18.2399 15.6 18.2399C14.2129 18.2399 12.8945 17.9804 11.7 17.5143C10.6857 17.1046 9.85955 17.4677 9.17812 17.7805C8.80908 17.95 8.44498 18.0908 8.03344 18.1687C8.23704 17.8784 8.4112 17.5683 8.50312 17.2593C8.61173 16.8942 8.65588 16.5367 8.64187 16.2177C8.62791 15.8998 8.60013 15.6087 8.33156 15.3449L8.33062 15.344C6.72812 13.7593 5.76 11.6633 5.76 9.35992C5.76 6.80508 6.95336 4.50598 8.87812 2.87992ZM15.8325 7.19336C15.7054 7.19535 15.5842 7.2477 15.4956 7.33892C15.407 7.43014 15.3583 7.55278 15.36 7.67992V11.9999C15.3591 12.0635 15.3708 12.1267 15.3946 12.1857C15.4183 12.2447 15.4535 12.2984 15.4982 12.3437C15.5428 12.389 15.596 12.425 15.6547 12.4496C15.7134 12.4741 15.7764 12.4868 15.84 12.4868C15.9036 12.4868 15.9666 12.4741 16.0253 12.4496C16.084 12.425 16.1372 12.389 16.1818 12.3437C16.2265 12.2984 16.2617 12.2447 16.2854 12.1857C16.3091 12.1267 16.3209 12.0635 16.32 11.9999V7.67992C16.3209 7.6157 16.3089 7.55196 16.2847 7.49247C16.2605 7.43298 16.2246 7.37895 16.1791 7.33358C16.1337 7.28821 16.0796 7.25242 16.02 7.22833C15.9605 7.20425 15.8967 7.19236 15.8325 7.19336ZM8.64 7.67992C8.57639 7.67902 8.51324 7.69077 8.45422 7.71449C8.39519 7.73821 8.34147 7.77342 8.29617 7.81808C8.25088 7.86275 8.21491 7.91597 8.19036 7.97465C8.1658 8.03333 8.15316 8.09631 8.15316 8.15992C8.15316 8.22353 8.1658 8.28651 8.19036 8.3452C8.21491 8.40388 8.25088 8.4571 8.29617 8.50176C8.34147 8.54642 8.39519 8.58163 8.45422 8.60535C8.51324 8.62907 8.57639 8.64082 8.64 8.63992H10.1747L8.23312 11.7459C8.18782 11.8185 8.16277 11.9019 8.16057 11.9875C8.15837 12.0731 8.17909 12.1577 8.22059 12.2326C8.2621 12.3075 8.32287 12.3699 8.39661 12.4134C8.47036 12.4569 8.55439 12.4798 8.64 12.4799H11.04C11.1036 12.4808 11.1668 12.4691 11.2258 12.4454C11.2848 12.4216 11.3385 12.3864 11.3838 12.3418C11.4291 12.2971 11.4651 12.2439 11.4896 12.1852C11.5142 12.1265 11.5268 12.0635 11.5268 11.9999C11.5268 11.9363 11.5142 11.8733 11.4896 11.8146C11.4651 11.756 11.4291 11.7027 11.3838 11.6581C11.3385 11.6134 11.2848 11.5782 11.2258 11.5545C11.1668 11.5308 11.1036 11.519 11.04 11.5199H9.50531L11.4469 8.41398C11.4922 8.34134 11.5172 8.25791 11.5194 8.17232C11.5216 8.08674 11.5009 8.00213 11.4594 7.92725C11.4179 7.85237 11.3571 7.78995 11.2834 7.74647C11.2096 7.70298 11.1256 7.68 11.04 7.67992H8.64ZM14.3925 9.11336C14.3138 9.11475 14.2366 9.13549 14.1677 9.17374C14.0989 9.212 14.0406 9.2666 13.9978 9.33273C13.759 9.20158 13.4897 9.11992 13.2 9.11992C12.2778 9.11992 11.52 9.87777 11.52 10.7999C11.52 11.7221 12.2778 12.4799 13.2 12.4799C13.4894 12.4799 13.7582 12.398 13.9969 12.2671C14.0534 12.3546 14.1369 12.4213 14.2347 12.4572C14.3325 12.493 14.4393 12.4961 14.539 12.4659C14.6387 12.4358 14.7259 12.374 14.7874 12.2899C14.8489 12.2059 14.8814 12.1041 14.88 11.9999V10.7999V9.59992C14.8809 9.5357 14.8689 9.47196 14.8447 9.41247C14.8205 9.35298 14.7846 9.29895 14.7391 9.25358C14.6937 9.20821 14.6396 9.17242 14.58 9.14833C14.5205 9.12425 14.4567 9.11236 14.3925 9.11336ZM18.48 9.11992C17.5578 9.11992 16.8 9.87777 16.8 10.7999C16.8 11.7221 17.5578 12.4799 18.48 12.4799C19.4022 12.4799 20.16 11.7221 20.16 10.7999C20.16 9.87777 19.4022 9.11992 18.48 9.11992ZM13.2 10.0799C13.6033 10.0799 13.92 10.3966 13.92 10.7999C13.92 11.2033 13.6033 11.5199 13.2 11.5199C12.7967 11.5199 12.48 11.2033 12.48 10.7999C12.48 10.3966 12.7967 10.0799 13.2 10.0799ZM18.48 10.0799C18.8833 10.0799 19.2 10.3966 19.2 10.7999C19.2 11.2033 18.8833 11.5199 18.48 11.5199C18.0767 11.5199 17.76 11.2033 17.76 10.7999C17.76 10.3966 18.0767 10.0799 18.48 10.0799Z">
                                            </path>
                                        </mask>
                                        <path
                                            d="M4.32 1.91992C3.00023 1.91992 1.92 3.00015 1.92 4.31992V19.6799C1.92 20.9997 3.00023 22.0799 4.32 22.0799H19.68C20.9998 22.0799 22.08 20.9997 22.08 19.6799V4.31992C22.08 3.00015 20.9998 1.91992 19.68 1.91992H4.32ZM4.32 2.87992H7.47656C5.81666 4.60701 4.8 6.87526 4.8 9.35992C4.8 11.9334 5.88871 14.2792 7.65562 16.0265C7.5914 15.9653 7.67454 16.0717 7.68281 16.2599C7.69134 16.4542 7.66209 16.7212 7.58344 16.9855C7.42613 17.5143 7.09711 18.0017 6.56812 18.178C6.46765 18.2115 6.38107 18.2773 6.32187 18.3651C6.26266 18.4529 6.23416 18.5578 6.24079 18.6635C6.24742 18.7692 6.28882 18.8698 6.35854 18.9495C6.42826 19.0292 6.52238 19.0836 6.62625 19.1043C7.95091 19.3692 8.8879 18.9704 9.57844 18.6534C10.269 18.3363 10.6421 18.123 11.34 18.4049L11.3456 18.4068C12.6523 18.9176 14.091 19.1999 15.6 19.1999C17.6147 19.1999 19.503 18.6965 21.12 17.819V19.6799C21.12 20.4808 20.4809 21.1199 19.68 21.1199H4.32C3.51913 21.1199 2.88 20.4808 2.88 19.6799V4.31992C2.88 3.51905 3.51913 2.87992 4.32 2.87992ZM8.87812 2.87992H19.68C20.4809 2.87992 21.12 3.51905 21.12 4.31992V16.7062C19.5489 17.67 17.6518 18.2399 15.6 18.2399C14.2129 18.2399 12.8945 17.9804 11.7 17.5143C10.6857 17.1046 9.85955 17.4677 9.17812 17.7805C8.80908 17.95 8.44498 18.0908 8.03344 18.1687C8.23704 17.8784 8.4112 17.5683 8.50312 17.2593C8.61173 16.8942 8.65588 16.5367 8.64187 16.2177C8.62791 15.8998 8.60013 15.6087 8.33156 15.3449L8.33062 15.344C6.72812 13.7593 5.76 11.6633 5.76 9.35992C5.76 6.80508 6.95336 4.50598 8.87812 2.87992ZM15.8325 7.19336C15.7054 7.19535 15.5842 7.2477 15.4956 7.33892C15.407 7.43014 15.3583 7.55278 15.36 7.67992V11.9999C15.3591 12.0635 15.3708 12.1267 15.3946 12.1857C15.4183 12.2447 15.4535 12.2984 15.4982 12.3437C15.5428 12.389 15.596 12.425 15.6547 12.4496C15.7134 12.4741 15.7764 12.4868 15.84 12.4868C15.9036 12.4868 15.9666 12.4741 16.0253 12.4496C16.084 12.425 16.1372 12.389 16.1818 12.3437C16.2265 12.2984 16.2617 12.2447 16.2854 12.1857C16.3091 12.1267 16.3209 12.0635 16.32 11.9999V7.67992C16.3209 7.6157 16.3089 7.55196 16.2847 7.49247C16.2605 7.43298 16.2246 7.37895 16.1791 7.33358C16.1337 7.28821 16.0796 7.25242 16.02 7.22833C15.9605 7.20425 15.8967 7.19236 15.8325 7.19336ZM8.64 7.67992C8.57639 7.67902 8.51324 7.69077 8.45422 7.71449C8.39519 7.73821 8.34147 7.77342 8.29617 7.81808C8.25088 7.86275 8.21491 7.91597 8.19036 7.97465C8.1658 8.03333 8.15316 8.09631 8.15316 8.15992C8.15316 8.22353 8.1658 8.28651 8.19036 8.3452C8.21491 8.40388 8.25088 8.4571 8.29617 8.50176C8.34147 8.54642 8.39519 8.58163 8.45422 8.60535C8.51324 8.62907 8.57639 8.64082 8.64 8.63992H10.1747L8.23312 11.7459C8.18782 11.8185 8.16277 11.9019 8.16057 11.9875C8.15837 12.0731 8.17909 12.1577 8.22059 12.2326C8.2621 12.3075 8.32287 12.3699 8.39661 12.4134C8.47036 12.4569 8.55439 12.4798 8.64 12.4799H11.04C11.1036 12.4808 11.1668 12.4691 11.2258 12.4454C11.2848 12.4216 11.3385 12.3864 11.3838 12.3418C11.4291 12.2971 11.4651 12.2439 11.4896 12.1852C11.5142 12.1265 11.5268 12.0635 11.5268 11.9999C11.5268 11.9363 11.5142 11.8733 11.4896 11.8146C11.4651 11.756 11.4291 11.7027 11.3838 11.6581C11.3385 11.6134 11.2848 11.5782 11.2258 11.5545C11.1668 11.5308 11.1036 11.519 11.04 11.5199H9.50531L11.4469 8.41398C11.4922 8.34134 11.5172 8.25791 11.5194 8.17232C11.5216 8.08674 11.5009 8.00213 11.4594 7.92725C11.4179 7.85237 11.3571 7.78995 11.2834 7.74647C11.2096 7.70298 11.1256 7.68 11.04 7.67992H8.64ZM14.3925 9.11336C14.3138 9.11475 14.2366 9.13549 14.1677 9.17374C14.0989 9.212 14.0406 9.2666 13.9978 9.33273C13.759 9.20158 13.4897 9.11992 13.2 9.11992C12.2778 9.11992 11.52 9.87777 11.52 10.7999C11.52 11.7221 12.2778 12.4799 13.2 12.4799C13.4894 12.4799 13.7582 12.398 13.9969 12.2671C14.0534 12.3546 14.1369 12.4213 14.2347 12.4572C14.3325 12.493 14.4393 12.4961 14.539 12.4659C14.6387 12.4358 14.7259 12.374 14.7874 12.2899C14.8489 12.2059 14.8814 12.1041 14.88 11.9999V10.7999V9.59992C14.8809 9.5357 14.8689 9.47196 14.8447 9.41247C14.8205 9.35298 14.7846 9.29895 14.7391 9.25358C14.6937 9.20821 14.6396 9.17242 14.58 9.14833C14.5205 9.12425 14.4567 9.11236 14.3925 9.11336ZM18.48 9.11992C17.5578 9.11992 16.8 9.87777 16.8 10.7999C16.8 11.7221 17.5578 12.4799 18.48 12.4799C19.4022 12.4799 20.16 11.7221 20.16 10.7999C20.16 9.87777 19.4022 9.11992 18.48 9.11992ZM13.2 10.0799C13.6033 10.0799 13.92 10.3966 13.92 10.7999C13.92 11.2033 13.6033 11.5199 13.2 11.5199C12.7967 11.5199 12.48 11.2033 12.48 10.7999C12.48 10.3966 12.7967 10.0799 13.2 10.0799ZM18.48 10.0799C18.8833 10.0799 19.2 10.3966 19.2 10.7999C19.2 11.2033 18.8833 11.5199 18.48 11.5199C18.0767 11.5199 17.76 11.2033 17.76 10.7999C17.76 10.3966 18.0767 10.0799 18.48 10.0799Z"
                                            fill="black"></path>
                                        <path
                                            d="M4.32 1.91992C3.00023 1.91992 1.92 3.00015 1.92 4.31992V19.6799C1.92 20.9997 3.00023 22.0799 4.32 22.0799H19.68C20.9998 22.0799 22.08 20.9997 22.08 19.6799V4.31992C22.08 3.00015 20.9998 1.91992 19.68 1.91992H4.32ZM4.32 2.87992H7.47656C5.81666 4.60701 4.8 6.87526 4.8 9.35992C4.8 11.9334 5.88871 14.2792 7.65562 16.0265C7.5914 15.9653 7.67454 16.0717 7.68281 16.2599C7.69134 16.4542 7.66209 16.7212 7.58344 16.9855C7.42613 17.5143 7.09711 18.0017 6.56812 18.178C6.46765 18.2115 6.38107 18.2773 6.32187 18.3651C6.26266 18.4529 6.23416 18.5578 6.24079 18.6635C6.24742 18.7692 6.28882 18.8698 6.35854 18.9495C6.42826 19.0292 6.52238 19.0836 6.62625 19.1043C7.95091 19.3692 8.8879 18.9704 9.57844 18.6534C10.269 18.3363 10.6421 18.123 11.34 18.4049L11.3456 18.4068C12.6523 18.9176 14.091 19.1999 15.6 19.1999C17.6147 19.1999 19.503 18.6965 21.12 17.819V19.6799C21.12 20.4808 20.4809 21.1199 19.68 21.1199H4.32C3.51913 21.1199 2.88 20.4808 2.88 19.6799V4.31992C2.88 3.51905 3.51913 2.87992 4.32 2.87992ZM8.87812 2.87992H19.68C20.4809 2.87992 21.12 3.51905 21.12 4.31992V16.7062C19.5489 17.67 17.6518 18.2399 15.6 18.2399C14.2129 18.2399 12.8945 17.9804 11.7 17.5143C10.6857 17.1046 9.85955 17.4677 9.17812 17.7805C8.80908 17.95 8.44498 18.0908 8.03344 18.1687C8.23704 17.8784 8.4112 17.5683 8.50312 17.2593C8.61173 16.8942 8.65588 16.5367 8.64187 16.2177C8.62791 15.8998 8.60013 15.6087 8.33156 15.3449L8.33062 15.344C6.72812 13.7593 5.76 11.6633 5.76 9.35992C5.76 6.80508 6.95336 4.50598 8.87812 2.87992ZM15.8325 7.19336C15.7054 7.19535 15.5842 7.2477 15.4956 7.33892C15.407 7.43014 15.3583 7.55278 15.36 7.67992V11.9999C15.3591 12.0635 15.3708 12.1267 15.3946 12.1857C15.4183 12.2447 15.4535 12.2984 15.4982 12.3437C15.5428 12.389 15.596 12.425 15.6547 12.4496C15.7134 12.4741 15.7764 12.4868 15.84 12.4868C15.9036 12.4868 15.9666 12.4741 16.0253 12.4496C16.084 12.425 16.1372 12.389 16.1818 12.3437C16.2265 12.2984 16.2617 12.2447 16.2854 12.1857C16.3091 12.1267 16.3209 12.0635 16.32 11.9999V7.67992C16.3209 7.6157 16.3089 7.55196 16.2847 7.49247C16.2605 7.43298 16.2246 7.37895 16.1791 7.33358C16.1337 7.28821 16.0796 7.25242 16.02 7.22833C15.9605 7.20425 15.8967 7.19236 15.8325 7.19336ZM8.64 7.67992C8.57639 7.67902 8.51324 7.69077 8.45422 7.71449C8.39519 7.73821 8.34147 7.77342 8.29617 7.81808C8.25088 7.86275 8.21491 7.91597 8.19036 7.97465C8.1658 8.03333 8.15316 8.09631 8.15316 8.15992C8.15316 8.22353 8.1658 8.28651 8.19036 8.3452C8.21491 8.40388 8.25088 8.4571 8.29617 8.50176C8.34147 8.54642 8.39519 8.58163 8.45422 8.60535C8.51324 8.62907 8.57639 8.64082 8.64 8.63992H10.1747L8.23312 11.7459C8.18782 11.8185 8.16277 11.9019 8.16057 11.9875C8.15837 12.0731 8.17909 12.1577 8.22059 12.2326C8.2621 12.3075 8.32287 12.3699 8.39661 12.4134C8.47036 12.4569 8.55439 12.4798 8.64 12.4799H11.04C11.1036 12.4808 11.1668 12.4691 11.2258 12.4454C11.2848 12.4216 11.3385 12.3864 11.3838 12.3418C11.4291 12.2971 11.4651 12.2439 11.4896 12.1852C11.5142 12.1265 11.5268 12.0635 11.5268 11.9999C11.5268 11.9363 11.5142 11.8733 11.4896 11.8146C11.4651 11.756 11.4291 11.7027 11.3838 11.6581C11.3385 11.6134 11.2848 11.5782 11.2258 11.5545C11.1668 11.5308 11.1036 11.519 11.04 11.5199H9.50531L11.4469 8.41398C11.4922 8.34134 11.5172 8.25791 11.5194 8.17232C11.5216 8.08674 11.5009 8.00213 11.4594 7.92725C11.4179 7.85237 11.3571 7.78995 11.2834 7.74647C11.2096 7.70298 11.1256 7.68 11.04 7.67992H8.64ZM14.3925 9.11336C14.3138 9.11475 14.2366 9.13549 14.1677 9.17374C14.0989 9.212 14.0406 9.2666 13.9978 9.33273C13.759 9.20158 13.4897 9.11992 13.2 9.11992C12.2778 9.11992 11.52 9.87777 11.52 10.7999C11.52 11.7221 12.2778 12.4799 13.2 12.4799C13.4894 12.4799 13.7582 12.398 13.9969 12.2671C14.0534 12.3546 14.1369 12.4213 14.2347 12.4572C14.3325 12.493 14.4393 12.4961 14.539 12.4659C14.6387 12.4358 14.7259 12.374 14.7874 12.2899C14.8489 12.2059 14.8814 12.1041 14.88 11.9999V10.7999V9.59992C14.8809 9.5357 14.8689 9.47196 14.8447 9.41247C14.8205 9.35298 14.7846 9.29895 14.7391 9.25358C14.6937 9.20821 14.6396 9.17242 14.58 9.14833C14.5205 9.12425 14.4567 9.11236 14.3925 9.11336ZM18.48 9.11992C17.5578 9.11992 16.8 9.87777 16.8 10.7999C16.8 11.7221 17.5578 12.4799 18.48 12.4799C19.4022 12.4799 20.16 11.7221 20.16 10.7999C20.16 9.87777 19.4022 9.11992 18.48 9.11992ZM13.2 10.0799C13.6033 10.0799 13.92 10.3966 13.92 10.7999C13.92 11.2033 13.6033 11.5199 13.2 11.5199C12.7967 11.5199 12.48 11.2033 12.48 10.7999C12.48 10.3966 12.7967 10.0799 13.2 10.0799ZM18.48 10.0799C18.8833 10.0799 19.2 10.3966 19.2 10.7999C19.2 11.2033 18.8833 11.5199 18.48 11.5199C18.0767 11.5199 17.76 11.2033 17.76 10.7999C17.76 10.3966 18.0767 10.0799 18.48 10.0799Z"
                                            stroke="black" stroke-width="0.2" mask="url(#path-1-outside-1_6394_301594)">
                                        </path>
                                    </svg></a></div>
                        </div>
                        <div class="footer-path four-item">
                            <div class="item">
                                <p class="main">Chính Sách</p>
                                <div class="item-sub"><a href="">Chính sách và
                                        quy&nbsp;định</a><a href="">Quy chế
                                        hoạt&nbsp;động</a><a href="">Bảo mật
                                        thông&nbsp;tin</a><a href="">Giải quyết
                                        tranh&nbsp;chấp</a></div>
                            </div>
                            <div class="item">
                                <p class="main">Tìm Hiểu Thêm</p>
                                <div class="item-sub"><a href="">Hướng dẫn chung</a><a
                                        href="">Hướng dẫn đặt&nbsp;xe</a><a
                                        href="">Hướng dẫn thanh&nbsp;toán</a><a
                                        href="">Hỏi và trả&nbsp;lời</a></div>
                            </div>
                            <div class="item">
                                <p class="main empty">&nbsp;</p>
                                <div class="item-sub">
                                <a href="/cả/logout">Đăng xuất</a>
                                <a href=""></a>
                                <a href=""></a>
                            </div>
                            </div>
                            <div class="item unset">
                                <p class="main">Đối Tác</p>
                                <div class="item-sub"><a href="">Đăng ký chủ&nbsp;xe
                                        Mioto</a><a href="">Đăng ký GPS
                                        MITRACK&nbsp;4G</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line"> </div>
                <div class="m-container">
                    <div class="footer-about">
                        <div class="footer-info">
                            <div class="phone-mail">
                                <p class="item">© Công ty Cổ Phần Mioto Asia</p>
                            </div>
                        </div>
                        <div class="footer-path three-item">
                            <div class="item">
                                <div class="item-sub">
                                    <p>Số GCNĐKKD: 0317307544</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-sub">
                                    <p>Ngày cấp: 24-05-22</p>
                                </div>
                            </div>
                            <div class="item width-50">
                                <div class="item-sub">
                                    <p>Nơi cấp: Sở Kế hoạch và Đầu tư TPHCM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line"> </div>
                <div class="m-container">
                    <div class="footer-about">
                        <div class="footer-info">
                            <div class="phone-mail address">
                                <p class="item">Địa chỉ: Văn phòng 02, Tầng 08, Tòa nhà Pearl Plaza, Số 561A Điện Biên
                                    Phủ, Phường 25, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam.</p>
                            </div>
                        </div>
                        <div class="footer-path three-item">
                            <div class="item">
                                <div class="item-sub">
                                    <p>Tên TK: CT CP MIOTO ASIA</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-sub">
                                    <p>Số TK: 102-989-1989</p>
                                </div>
                            </div>
                            <div class="item width-50">
                                <div class="item-sub">
                                    <p>Ngân hàng Vietcombank - CN Tân Định</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line line-white"></div>
                <div class="m-container">
                    <div class="footer-about">
                        <div class="footer-info empty">
                            <div class="phone-mail"><a class="logo-government" target="_blank"
                                    href="http://online.gov.vn/Home/WebDetails/98465"><img loading="lazy"
                                        src="/images/bocongthuong.png"></a></div>
                        </div>
                        <div class="footer-path d-flex-align-center two-item">
                            <div class="item">
                                <div class="item-sub">
                                    <p>Phương thức thanh toán</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="payment"><img loading="lazy"
                                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALgAAAC5CAYAAACbb/ViAAAACXBIWXMAACxLAAAsSwGlPZapAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAB52SURBVHgB7Z0HnBXV9cd/M6/s27dve29sYYGl79KLFEXFRBMkdtEYojE9GjX/xL8l4keNkeg/RqNGUUFRLIC9RKrS6wIuW2AbW9jG9n29zP/eWUBE2DIzb2fe8379wOLue/N2Zn5z7rnnnnsOwGAwGAwGg6E5OCjAq/hZlMliyuP0ujy9yTA+fHgC+RoSBQajnzhbuqpc3c52Z4v1oOtE52YPcGAxlrdDJpIFTkWth24uB+4ODkKeADBBMxSG2+yDb8VP8cpySGTAAqfCNkJ/ByDcSd7ORM0YBIQqorXlLnhWEKteNZB3DkjgK3HbncRa/5UJm6EOQpUXwpKBWPR+CZxY7UwD9K+SF88Fg6EyRIebnfAs7o8171Pgr+O2uTyE95jVZmgL6rbwCxfhpQO9vYrv7Ycrcfst5AWbmLgZ2oPLJCIveJNotNdXne8HVNwcfMvBYGgcDvzPbsSLK879s3PQ45ZQy81gBAY+4MKbsWzz2d//jsDphNII3aaeIYDBCBjaSRgx/+yJ53d8cBLjfo+JmxGARIWQSN/Z3/yWwGmcm3zJA4MRgJDV9LknNXya0y4Kc00YQQJ1VbJO5bGctuAG6B5i4mYEAVF66E9bcdGCM+vNCDJOW3HRguvAz2XiZgQRUQbof0b/wff8xd8CBiOIIMJeQL9yPe6JvhIMRpBB3JRoXg8dCwsyghLiel/JGyyGuWAwghBdiC6P5w368WAwghGez+QN4aEsFZYRlIQmRo7njbFhmWAwghBdqCGK15mMzIIzghKdiQgcDEYQwwTOCGqYwBlBDRM4I6hhAmcENUzgjKCGCZwR1DCBM4IaJnBGUKNHQCFA4MhTGaqDMSYMIQlhMCVEQB9mgs/lhrPDDkd1Oy2mDm+3B5xA39P/AroC3ZdNXq4LNyAkLgzGhHCY4izQhRjgsbngbLfCUdMOV4sVPruXVlSC1uk5J4FcMwMM0aHkupkREm+BgVwz3qiDx+6Cq9MOdxM5t5ZueDscEDz0MijSG0F1AkDg5AYZeISmRiFqfApSLhuLhGnDED4iCfpQ43de7XN50FXRjLZDNWjaVoqGDaXoLmuC4PSd56bRm6+HOTMOMZPTkTgnF0mzRyIsMxa8XvedV3vtbrQXH0fL/io0bS1F81dlsBPRwyNAKwjwwRAVCktOPKInD0HsxGzE5mUgYkQyDJaQc7/H54Otrh2dRxrQeuAYTuytQNueatiIwRDcnoB4mM8F9/n0x4SWHRXQIgK5ptH5qRj+h3lI/2E+jLFh4LiBWRY3seqN24/iyPMbcPyTr8H7vhGtD17EzxmGUX/6AZLmjiRWLQQDxUmsXt26r1G09DO076+j2/+gFgI5H8uwBGTcMAlDrpyMqDFp4A06qQeDq8OKpu1lqFq1E9Wr9wEO7TzE/SEyP02rAhegiw5B3qMLkbN4NnQmI+Ti8/rQtKUU++5+C+0FdTBnRWH8I1ch67pp4Hj5w7HX4UbZii04/OgncNR2QPSlBgnqhoSkhGPskh8jZ9FM6ELlX69vHV8QYKttRcGSNah9uwC+bjcQAC6MJgUuEH8x/qJhmPj4NYiZkKWI+M7E3tCOsle/QiYRtiUrfsAjQm9QIXSU1JOHaBUaPisalGGdjzRg6OKZGHnHfIRlxCp6PmdDz69+w2EcfvwTNG48Al7QttuiPYHrOWQtnopJT94IQ3go/AYdaf1ogJyt3dh795uoXLHLbyIQOB+i8lIx4akbkDQrF5xu8Cyqs9WKyje249CD78PT7oJWoQLX3ZQ+7yF7bRvUhiPizv3TJZj8jxsVH2K/+2HwK3Tym3LpWPBhBjRuKiFBDIU/kIg5/boJmLv694gkE0elR7m+oOcXN3UokuaPRiOZaLuardAipuQIbUyN6aw/45YpGPfAAiL04AjN681GjP2fyzH0V7PEh1cpBJ2A3Hsuxoxlt8IQ4cdRrh/E5mfiwg/vQOSElJ5wpAbRgJoExM0aiknEcuv9bbkHGU7HY9IT1yPh0lwogoHDmAeuQB6ZHOvNA4/4+IPw7ATMee8PiJmVCWhQ5KoLXBdpxLQXboExyoxgRE9Cj5P/7wboo+QJkiPRvpxfz8a4+350zvi8mliGxOKCV29H2Ig4aA11BU58yby/XYXIUakIZiKGJSH3rovFiaEU6PCfePloTFp6PXF3tCXuU4QPTcCFn/wRoUMioCVUFXhkfgqyb5yBoIeE7nJunYPw4QmQgmVkPKb86yaytK7theeIoYkY+/BCcGbtPISqCZxOLHMWz4IhUt2J0mBhTolG9q0XDHgyxoXpyYLXVQgjbkAgkL1oOoZcM0G8v1pANYHro0xIvng0vk9kkdFK0A/sxqcuGI8hCyb6dQFHSej8YNyDV8IYr405lWoCT5o3EpbseHyfCEuNRsa1k/ttxfkIHaYS12Sw49xyoZGVCU9epwkrrorA6WQrmSwSyI0G0KVja3UL2g7XwX68HYJP2TAVPb69sQPt5PjWmlYIHvk3LHne6H4Jlopj7AM/RkisBUoiuL1wNHeho7QebYW1Yuals80mnquSZF47jcTH06B26FCVWQvNTY4emw450JyPQ4++j8b1pfDa3DBEm5B48UhMeWqRIgsg1poWFP79Y9R9/DXcbXbowo2Inz4UE/9xHSwZ0keeuCnZol8tdHl6fV1oehQyrpoMpaDnU7VqF2o/OwBrVQs8HS4IXp+YbWhMDBMjWdk3TkfK/LHiIpVcdCF6Mse6APsPvgN4oRqqCNwQaSaxU+kx0+6KJnx57TPoKmw6vQzu6XSi6pWdsBNLe9GHd4EPkX5qjoYObLnhebRsrzq9acLb6ULt6gPEmtdi3qf3wJIp7fcPTYlCSIwZjq7OXl4lIOmSUQjLkB9X9lidKF+xFYce+QCuBht69nRwOJWQ4yVfXS12dBc1o+79g4idNgQTHr8OCTOGidEfOQxZOAlFSz+Ho7oTaqGKi2JKsMhKpjrw4Hvo+rrxWzke9KbR/29cdwSlL26UNeSWPLf+pLg5nJm4Qj/DWnwCR/6zSfLx9aEhMCX2ESsm6wOpV4yX7Xu3F9dh04Knse93q+Cut4vn882mj2++cif/5sig0rq1GhvnP4V9f3kHPqcHcjCTOUfihSOgppuiisDp6h5nlOZ/u9vtqPmw4LypqNTi1ry/X9bNqXpzVy8JUhzqPjwAr1VaFh3NtdH34UIZYkyIm5wNOTiaOrF5wb/QvOHogHPTfVYvSpauw+4/rhTdGDnQpLNBTI3/DupEUXjpO/6cHVZxW9r54cSHwOeR6PgJ9CGy9foSF/m5V8YD1FfILyp/CMzJ0ov+0s0Xu373OqxHWyAV+oCXPb8F1cRYyCF+2lDoLAaohUphQhlDVr8NSmBtrzoFDSEmzMgRE7WkUvnGDtStKZC9cZhuv9t755voKm+CVEJTY2DOVG+RipWN0Bq8gPgZwyEVe307Cp/4hBgCZfwCR20njjy/kcZMIQUdidLQiJla6bRM4BqDzk/Cs6RHT+o3FsFaId01ORs6ClSv3U/WA7ogCeKORo1OgVowgWsKgUxAQ6C3mCAJYiQbNhaT2CAUhe74ai+sgVTM6dEAs+AMai9pESOpVQRoxKPtYI3iRXt8bnLcw9IFHhITptqMiAlcY3DEZ+UkrlH5PB7igyu/v5Y+MA6pLgpo7N+kWj4NE7jG6AkhShODQCJMPp+fbKWc437v4uCM8yLQ+L1Xmph4sohkIu6A8ghirUapeJ1uyVEYuTCBawyP1SF5EYm6NxHDk6D0hI7jeYTnJEEqrm4bEziDIsDd6YTH5oQUqHsTP2u4mMuiJMbYUFnZn7ZjrVBt0RwMDcHB0+WAra4VUsm4eoqY/qocApKvGAuL1MxGWs6uqAFqwQSuNchEsXXfMUiFlnDIvnmGYiuH+hgTht06R3JBJpoT1FlSp1q9cSZwjUGzJBu3H4EcRt11GSLGJEIu9CHJvHkqEmSkDtCsxo5SZsEZZ9C6u0rMWJQK7Xox/eVboYuUk8UnIGZ6BiY+fr2sMF/rwWp42qTNKZSACVyDOOo60LyzDHKgW+PmfngHTFlRA3ZXaGOA5CvH4eJP7yGrqvJSXRvWF4NTce8xE7gG8bl8qN9QJDu0ljh7BOZ9dhdSFo6DYDy1Ta0XOAGGRDPGPbwAM5ffJrZBkYOrzYr69Yeh5kpPgDWh+n5AJ2T1nxfCdf8CGGUWRqLllWet/CUavypByfMb0biuBD67+6TkuJ7SDhwPc2ok0n6SjxG/mofI3BRFNNm4pRRdJY1QEyZwjUKFUfP+Pgy95QLIhVaiTb1sPFLmj4O7zYa2w7XoqmyG1+EkK58RZHEoGRHDEhSty05LeBx5YSPg9nO3gT5gAtcqZDHz4JL3kb5ggmKVd+lCEG2/mDhrhPjHn9R9ehBNG0qhdi8f5oNrGHtlW48VDLDdd07iexfctxqCS/1fnAlcw9CYePE/v0Db19UIGKhrQnz9zq9p7Fv9knNM4BrH3WjDnrvfEjstBwLNu8rEYj+cRkYdJnDNw6FpfQn2/ektRWoj+hNax3Hnr1+Dp50u7GijYCgTeADAQ4fKFTtQvnKrammnfUGTxHb9dgU6D9arlndyLpjAAwSf1YP9d72D4+sKFa8EKxdaaGjvn99G7dqDmhI3hQk8gPC0OfDlT/6Nqrd3K14qWiruTgd23P4Kyl/YosnOx0zgAQVZebR6sfuXK1Dyr3V9lLDzPzRT8KubnsOxlXuUb3arEEzgAYi3042Cu9/B9ttehr2hA4MNHT0avizGunlPoOGjIs2Km8JWMgMVHydaTro5YvzDV2LITyYPSh8fx4luHH7qU5T9ezM8nS7N+dxnwwQewFDL2V3UhG3Xv4Ty+VuR98jViB6T5pd26F4Sh6/5uAD7//IOWWFtFxehtC5uChN4wMOJeSv1nxSheevfkfqj8UhbkIfEmSMQmhwJOdBoTWdxvSjsmrX70XagFoLTe97a7FqECVwKGjRc1Jp6O1zEbdmNY2/uhiE2FEOunIDUy8cjamwaQhMjoQsxiDvuRct75jkQIdPII21Q5bY6YD3Wgpa9VahctR1t+2tEV+RU65NAsNpnoorA7bUdYhsQKeUNXC3WPpsaOZq6cXQZCVsZJFgagcZ1e/8A2g+ofDk5vmngl49O0GzV0nfN94UoQLLg6Wl2oPylbShftg2GuFAi8AhYhiaIDWVN8REwhIeIdVS8Do9Y8J9OVrsrm8Q0WufxTvjEa8AFpKjPhPt8+mNCy44KDCbCyf+k0tdFl398vs9b6pPRA1It0Zx5TYTTf3NndesJHiLz09Sx4P6+wYMhID4AI6zctxpqffN3MMPi4IyghgmcEdQwgTOCGiZwRlDDBM4IapjAGUENEzgjqGECZwQ1AZeLQlfjOPpYhvDQhejFakzcycfUa/fA43BBcApinxtpiz3kE/RkLdPIi4UnefKH4wSxwRPdmkX/CA7f6dyMQEBcweTIb2si50WW52lOCv0qbn2n5+Xy9JyXywvBg5M74oNjEShgBE4rnhpiQpH6w/GIn5GDyLEpMCdFQW82QUyDFgR43V7YmzrQfbQJzbsr0bCuEJ3FDeAFXd/H57wwZ0Qj5ZIxSJg1AuEjk2CKDRdF3nN4cny7G/bmDnQUHkfTtqM4/kWhmLdBNwVrD/L7knOKHJWMuKk5iM0fggh6zRKjYAgznU6ppeflI8J2dlhhq24Rz+3ErnI0bj0Cd4tdo+fWf1TJRRkQRg6xs7Ix8jcXi7X1dGZDvxP7aWLTiZ3lKHr6MzRuOAIPuWFnpdGBN+uR+pM85P56HmInZ4s3vj/Hp8KgjVePf/41ip/5Ai3bKuGzuqG65SMmy5wdjcxrpyL7ppkIH5Yo/koD2QwhnpvHi8bNpSh9cSNObCmHs6lb0zt3zgXNRdGswGnV05gLsjH+/h+LFlVvll4Ykt6w1v1VKH1uA6rf2gufjQzFBiDp0lyM/d8FiJ+SRYQt3VL5yMhRv+Ewip76HM2bjireSrtfGIghmJ6J3DsuRdLckTBGmxXZ4UOvXdeRBlSt3oOyl76EvbojYISuUYELMCSYMfovP0TOz+fILh98JlSIjZuKcejxjzCCWOz0H+f35EgrhLvbgZoP9qPg3tVw1kjvDDwQ6HwhZnKaKOz0BROhNyl3Pmdjq2tD+WvbUPr0OrgardC6n645gVOrbcmNx8zlvyB+41D4C9oYidf7z7dsO1SNrTe/hK5D9fCnCLgwHrl3z8eYe34IQ7gJg0X74Vrsu/ddNHxUqOndPVTgupvS5z1kr1W+v/nAERA1KQ0XfngnokanwZ/Qxqb+hO6eSZk/Bif2V5AhnV5b5UUekmrBnLW/F+uHKzkK9QfaAyjjqsmg88/WgmPiNjYtYkqO0MrjJyBsRBxmvHobLBnxCAbCsxMw+53fIlzsdqZgkR7yrEQSl2TeF/eILUoGYyf9udAZ9Rj/0EKMe2wh+IjBfcAGgiYEbkwOx5TnforoMdK76WoRc3IUZr75K4TlJkAJaDw7bnY2Zr/1a0SNSoUWoNGnqS/8FLqoEGgR1QUu6ATkPX4Vki8ahWAkZmw6Jj99oxjulAV5e+ysLFz48R/F0UErcDyHzOunYvaa34AL117MXHWBp18zAUMXzUAwkzxvFNJIrF3OPlFzTgwuWHE7DJbBm0z2F+omUQM15d+LoLNoa+1QVYHro4wY8z+Xg9MFd0oMPb/Rd/8AukhpsXzOrMPEJ6+HJVPb85OhN89C+nWTejq3aQQVlSUggwxt0XlD8H0gelw6shZNw4AnnGQBZ+RdlyDtiryASA/Jf/QaxEzLhFYaC6kn8BAOGddNVi0KMNjwJOow/JcXwjvAZc6YqZkY/ecrAuY60forE564lsTotDEqq/ZbRIxMRuzELHyfoFY8ftYw9Ne6+XgPJi69lvjd2oxQnI+EmcORc/tsaMGKqyJwOtlKnJsLfZgCN+5k0pPfoCXNPD7F7hXNhuzPZJO+Jv3qiYib4p8VXZqIRs/LH90iaGSFzjn0scqlWUhFnSkveaziZwwVL4RUaLZb044yVLy+DdbyFpgzo5F980wkzslVJsmICKD1YDWq3tqJtr3HyKpYJDKunYS0y/NlTYqpdeND9RDsvT+UNGsy9w+XyrpGZ2Ota0Pj5iKx7mD30WaxcxttDBs5OpEsGo1E/LQcZYwOISw9RrxetPMDVEzOUkXgeouRLFRIX473WJ3Yc9dKVLyyA5znm4tX9dpOZN82E1Of/RkRofSL6nN6cODhtSj5x3oILt/pjQ1Vb+5G8g9GieG6kLhwSCFyRBIRlRnOuu5eX5dw8QjET86GbMiD2rynHIVLP0PDp4Xw2T3fyR+pWyPgMPcpQtOIKG+chFF3XIZQskglC2Jkhv9mHqrf3Qf3CTvUQhUXhaZy0nwGqZQTq13xEhX3WT8gYi9/cSuqVu+S5VJUf1iAkifXA65v7wqiPWgaPi1C2fItkod2aiFDEnp/OAROEKMmdGIqBzrKFfx1DdZf9CSOrzkojhrnTo4iZyno4KjpQMnf1+G/sx9D/aYi2W4ZXW2NmaRulEwVgRsiTNCbpMWEqb9d+uy6kznJ37XSnI+I/NWtohWWCnV74Dy3C0EFUvnmLnjt0hqz0q1ihj56z+ssBsRNk+d70/49u36/EsWPfQ7B5un39jp6frayVny18FnUfFQAOVD3KmneaFkLXHJRReDiPkeJXQhozrW1srfywxxsNa3w2J2QSmfxcfQWdLYda4GnS+LxydDdV6puWEYMInOSIBkyuhxZtomMclvFVicDh4Onw43tP39ZrBUuh8TZZM4Rol7IUJVPlrNZV/D2bQ98XnnRAboBt9fju7zw+fwVuRGQPH80dKHSM/Satpeh4J7VfdZR7w16h7wtTnx5zbNwtVohFZr6bEqT6c/LgJWN0Bi07nj81BxIhUZGCv7yLvG3lcnRbttbg4pV2yEV+qBGEl9cLTeFCVxj6Ex6RIxIhlRO7K1A6/5jUGpdn851aPSIPjiS3s/ziBopw92SCRO4phCgDw+BMdYCqdR/UShuqlaS9q/r0Fl6HFIJy6JJYsyCM4jVNUSESt44TBenmreVKV6QyEsm1C0FxyCV0BR53d7kwASuMXgSPuWN0jYO0NBgV0UT/EF3VTOkYjCHAiolizGBawxxaV6iGKgF9zqk+cq9w8HnkNF0S8eplurLBK4xxMQxnzR/lT4c+jB/7PgRxMUnyXgF1RILmcA1Bm2Z7XNLs5Z0ad+SEQfFIdY3fKj0faAuq11cfFIDJnBNIcDdZYdX4iosteC0MKnS7oDOYpRV8YBWxFILJnBNwYldlB3N0su+pf0oT9zDqSQxtDJtTiIkQQy3tYJOUNkkk4Ge+oldZY2QSsyETMROU3CnFHlWsn46XXLxU0HwoaNE+vnIhQlcY9AOyg2bSyAVWnEq/5GrwUcqk+ofMzMTmddNlxzZcZMYenthrWrNApjANQeHxi+LJafjUuKmZmPyszdB0Mub2IWkhmHO27+TtSe07eAx2I93QC2YwDWI7VgbOkobIBW6ZS/7+ukYfudFZJUFEhBgTA7DtJd/jtAkeauQLXuqiBn/nuWDM3rHa/OgaUsp5EDz7Sc8cg3yl14NXXT/VU5bxYSPTcLsNb9F6vxxkAMtU318faGqvYyYwDUI3ZVU+9EBceldDrSs8sg75mP+1vuRds148BH6k2mr37ao9HsCT6x2mgV55IG4bOt9SJg+DHJpP1SLlh2VUJOA67L2feHE9go0EiuePG805BI1KgWz3/kdnG02NG4uFmt60506Po8HhggzInOTEUv89riJWT3d15SAPEOl/1kvhj3VtOBM4BqFNrQ6vPRTJF00SrGqViHRZgxZOBHpV07oSQeghpznBtykqj90lTeh+u19qvfzYS6KZuHQ8N9i1G8ogtJQMdPaLmJHOSJwpcVNfe8DS9bC0+GPxK+BwQSuYWiPygP3rYarTfqeSDWoX1eIurUHNdEolwlc47TtrsH+e9/pKR8XAHRXncCe378Bn80NLcAErnGoFaxcsROVb+2A1hErgv11rVhKTyu1npnAAwDB4cPBBz8QJ25apmLVDlS9vktTrQWZwAMEW2ULttzwHGy1rdAi1e/txZ7frBTL22kJJvAAgVrFtr212HzVM7KW8ZWGFmI68uIm7Lr9Nfjs2uuXyQQeQNCYcjuZdH519TNo/EreUr4SUJ+7cOnH2HfnW2IFWS1ETc6GCTzg4NBV2IitN7+I6jV7oRY+p5vEut/DoQc+UKyKlj9gAg9IODirO4lP/gIK7l8De307Bgu6c//E3kp8cfETKP7bf0/WZ9du/yC2VB/AcG4ORY9+hpr39iPnF7Mx7OezxcJB/oJGcQoeWIPGL4rgatGmS3I2TOABDhVZV1EjCu56F0f/swlj7v0RUi4ZDVNSpCJL8D6HGx1HGlC1aqdYd93ZZBXnAoEgbgoTeBAgio1u7i05gZ2LX4ElOw6J80Yi88ZpiJuUBb15YDtyqBtib+ggE9kSIuxdaNxcAm+nGxwCR9inUEXgPkGAq90GnX3gH+/qsImXuLc9IvQGOZq6iPWRlk9NQ199/h7N3cSSYcDQ2uU+l7+WsTkxl9xa1orysq0oX7YFxjgLYiYOQdz0HMTmZ4q9d4zhodCZjeI2S1poiFaOdbZ2o6PkOFr2VeLE7ip0lTTC2+083Ukj0IR9Cu7z6Y8JLTsqMKiQqa1JLMg4cIVQ8Tkbunp9K+1xY4wNk1YEn9xHT5ujpxrT+Y5Pt3TFSTs+dRvc7XbyIYO5jetkdW5y3TkDL26EEDtsiAoXxI0VYlF/tzeg3I++iMxPU8lF8QGOWv9tRKU3yX3CBn9BBeDP4yvPScnSfC2nAK/z3GmsfBAG1ViYkBHUMIEzghomcEZQwwTOCGqYwBlBDRM4I6hhAmcENUzgjKCGCZwR1PCuNqv0BogMhoZxtdmqeK/NpV4DFQbDjziaO4/xztauL8FgBCGCx3uA93a7DoDBCEaowHn4NoPBCEJ4r3EzfwOWVwkQ2ESTEWwcuAEvVIlhQgHccjAYQYQArKBfRYF74PknGIwgQgf9+/SrKPDFWN5+SvEMRuDDLafuCf3X6ZVMoviHwGAEATx0S77590mo4n3AEjAYgc2SU9ab8q1cFOqLc+CqwGAEIFS7Llj++e3vncUb+EUemYMWgMEIMHjos8603j3fO4tFeOkAmXD+EQxGAEE1e7a4Kefs+rkW+3dehQnUus8Fg6F9ltyEZY+f6wfnbWtLRL6ZiZwRACxZhGUPne+HvfZtZiJnaBnqlpzPcp+iX0Xo6MSTvPA9AUImGAyVodESL4TFN2PZ5r5e268ta3TiyUF3IXlmngaDoSrC006E5fdH3JQBlxFdhV9leuF5iLzxFjAYg8eXRK53UmM7kDf9P/PT1RgrMFx8AAAAAElFTkSuQmCC"><img
                                        loading="lazy" src="/images/vnpay.png"><img
                                        loading="lazy" src="/images/alepay.png"><img
                                        loading="lazy"
                                        src="data:image/png;base64,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"><img
                                        loading="lazy"
                                        src="data:image/png;base64,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">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <script
        type="text/javascript">AT.init({ campaign_id: 623, is_reoccur: 1, is_lastclick: 1, cookie_duration: 90 }), AT.track()</script>
    <script
        type="text/javascript">OMID = 2054257, OPID = 37337, ORef = escape(window.parent.location.href), function () { var e, t = document.createElement("script"); (t.type = "text/javascript", t.async = !0, t.src = "//track.omguk.com/e/qs/?action=Content&MID=" + OMID + "&PID=" + OPID + "&ref=" + ORef, e = document.getElementsByTagName("body")[0]) ? e.appendChild(t, e) : (e = document.getElementsByTagName("script")[0]).parentNode.insertBefore(t, e) }()</script>
	<script type="text/javascript">function get_param(e) { b = location.href, e = e.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); var o = new RegExp("[\\?&]" + e + "=([^&#]*)").exec(b); return o ? o[1] : null } function set_cookie(e, o, i) { var t = new Date; t.setTime(t.getTime() + 24 * i * 60 * 60 * 1e3); var a = "expires=" + t.toUTCString(); cookie_domain = this.cookie_domain || window.location.hostname, document.cookie = e + "=" + o + "; " + a + ";domain=" + cookie_domain + "; path=/" } get_param("utm_source") ? "Optimise" === get_param("utm_source") ? set_cookie("Optimise", !0, 90) : set_cookie("Optimise", "", 0) : get_param("utm_src") && set_cookie("Optimise", "", 0)</script>
	<script>!function (e) { function t(t) { for (var n, i, l = t[0], f = t[1], a = t[2], c = 0, s = []; c < l.length; c++)i = l[c], Object.prototype.hasOwnProperty.call(o, i) && o[i] && s.push(o[i][0]), o[i] = 0; for (n in f) Object.prototype.hasOwnProperty.call(f, n) && (e[n] = f[n]); for (p && p(t); s.length;)s.shift()(); return u.push.apply(u, a || []), r() } function r() { for (var e, t = 0; t < u.length; t++) { for (var r = u[t], n = !0, l = 1; l < r.length; l++) { var f = r[l]; 0 !== o[f] && (n = !1) } n && (u.splice(t--, 1), e = i(i.s = r[0])) } return e } var n = {}, o = { 1: 0 }, u = []; function i(t) { if (n[t]) return n[t].exports; var r = n[t] = { i: t, l: !1, exports: {} }; return e[t].call(r.exports, r, r.exports, i), r.l = !0, r.exports } i.m = e, i.c = n, i.d = function (e, t, r) { i.o(e, t) || Object.defineProperty(e, t, { enumerable: !0, get: r }) }, i.r = function (e) { "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, { value: "Module" }), Object.defineProperty(e, "__esModule", { value: !0 }) }, i.t = function (e, t) { if (1 & t && (e = i(e)), 8 & t) return e; if (4 & t && "object" == typeof e && e && e.__esModule) return e; var r = Object.create(null); if (i.r(r), Object.defineProperty(r, "default", { enumerable: !0, value: e }), 2 & t && "string" != typeof e) for (var n in e) i.d(r, n, function (t) { return e[t] }.bind(null, n)); return r }, i.n = function (e) { var t = e && e.__esModule ? function () { return e.default } : function () { return e }; return i.d(t, "a", t), t }, i.o = function (e, t) { return Object.prototype.hasOwnProperty.call(e, t) }, i.p = "/"; var l = this["webpackJsonpmioto-web"] = this["webpackJsonpmioto-web"] || [], f = l.push.bind(l); l.push = t, l = l.slice(); for (var a = 0; a < l.length; a++)t(l[a]); var p = f; r() }([])</script>

</body>
<script src="/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
const editBtn = document.getElementById('edit');
const editedContent = document.getElementById('edited');
const cancel = document.getElementById('cancel');
const inputs = document.querySelectorAll('input[disabled]'); // Lấy tất cả các thẻ input có thuộc tính disabled

editBtn.addEventListener('click', () => {
  // Xóa class "hidden" khỏi #edited
  editedContent.classList.remove('hidden');
  // Thêm class "hidden" vào #edit
  editBtn.classList.add('hidden');
  //Cho phép các thẻ input
  inputs.forEach(input => {
    input.disabled = false;
  });
});

cancel.addEventListener('click', () => {
  // Xóa class "hidden" khỏi #edit
  editBtn.classList.remove('hidden');
  // Thêm class "hidden" vào #edited
  editedContent.classList.add('hidden');
  // Vô hiệu hóa các thẻ input
  inputs.forEach(input => {
    input.disabled = true;
  });
});

</script>
</html>