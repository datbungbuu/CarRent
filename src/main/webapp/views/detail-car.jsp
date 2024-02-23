<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<!-- 49A 241097 -->
<head itemscope="" itemtype="http://schema.org/WebSite">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="calendar/style.css">
<link href="css/main.chunk.css" rel="stylesheet">
<link href="css/2.chunk.css" rel="stylesheet">
<link href="/css/indexStyle.css" rel="stylesheet">
</head>

<body class="">
  <div canvas="container" id="root">
    <div class="mioto-layout">
      <section class="header scroll-top">
        <%@include file="Layout/header.jsp" %>
      </section>
      <section class="body">
        <div class="header-car">
          <div class="m-container">
            <a href="#outsfeatures">Đặc điểm</a>
            <a href="#papers">Giấy tờ thuê xe</a>
            <a href="#carmap">Vị trí xe</a>
            <!-- <a href="#owner">Chủ xe</a> -->
          </div>
        </div>
        <div class="cover-car">
          <div class="m-container">
            <div class="cover-car-container">
              <div class="main-img">
                <div class="cover-car-item">
                  <img loading="lazy" alt="Cho thuê xe tự lái MAZDA 2 2023"
                    src="/images/xe/${car.imgDauXe }">
                </div>
              </div>
              <div class="sub-img">
                <div class="cover-car-item">
                  <img loading="lazy"
                    src="/images/xe/${car.imgDuoiXe }" alt="Cho thuê xe tự lái MAZDA 2 2023">
                </div>
                <div class="cover-car-item">
                  <img loading="lazy"
                    src="/images/xe/${car.imgSuonPXe }" alt="Cho thuê xe tự lái MAZDA 2 2023">
                </div>
                <div class="cover-car-item">
                  <img loading="lazy"
                    src="/images/xe/${car.imgSuonTXe }" alt="Cho thuê xe tự lái MAZDA 2 2023">
                </div>
              </div>
              <!-- <div class="see-more-img">
                <div class="wrap-svg">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                    xmlns="http://www.w3.org/2000/svg">
                    <path
                      d="M18.7104 21.2499H8.48044C7.08044 21.2499 5.94043 20.1099 5.94043 18.7099V8.47995C5.94043 7.07995 7.08044 5.93994 8.48044 5.93994H18.7104C20.1104 5.93994 21.2504 7.07995 21.2504 8.47995V18.7099C21.2504 20.1099 20.1104 21.2499 18.7104 21.2499Z"
                      stroke="#242420" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path
                      d="M3.48999 17.32C3.02999 16.86 2.75 16.22 2.75 15.52V5.29001C2.75 3.89001 3.89001 2.75 5.29001 2.75H15.52C16.31 2.75 17.02 3.10999 17.49 3.67999"
                      stroke="#242420" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path
                      d="M5.94043 18.1001L8.87042 15.1701C9.37042 14.6701 10.1804 14.6701 10.6704 15.1701L11.4204 15.9201C11.9204 16.4201 12.7304 16.4201 13.2204 15.9201L16.5204 12.6201C17.0204 12.1201 17.8304 12.1201 18.3204 12.6201L21.2504 15.5501"
                      stroke="#242420" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path
                      d="M10.4095 8.41992C9.63955 8.41992 9.01953 9.03991 9.01953 9.80991C9.01953 10.5799 9.63955 11.1999 10.4095 11.1999C11.1795 11.1999 11.7995 10.5799 11.7995 9.80991C11.7995 9.03991 11.1695 8.41992 10.4095 8.41992Z"
                      fill="#242420"></path>
                  </svg>
                </div>
                <p>Xem tất cả ảnh</p>
              </div> -->
            </div>
          </div>
        </div>
        <div class="detail-car">
          <div class="m-container">
            <div class="detail-container">
              <div class="content-detail">
                <div class="info-car-basic">
                  <div class="group-name">
                    <h3><span style="text-transform:uppercase">${car.tenXe }</span></h3>
                    <div class="group-action d-flex-center-btw">
                      <div class="shared">
                        <div class="wrap-svg wrap-ic share">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M6.99015 14.02C8.1389 14.02 9.07015 13.1156 9.07015 12C9.07015 10.8844 8.1389 9.97998 6.99015 9.97998C5.8414 9.97998 4.91016 10.8844 4.91016 12C4.91016 13.1156 5.8414 14.02 6.99015 14.02Z"
                              stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                            </path>
                            <path
                              d="M17.0698 6.99995C18.1854 6.99995 19.0898 6.09557 19.0898 4.97995C19.0898 3.86433 18.1854 2.95996 17.0698 2.95996C15.9542 2.95996 15.0498 3.86433 15.0498 4.97995C15.0498 6.09557 15.9542 6.99995 17.0698 6.99995Z"
                              stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                            </path>
                            <path
                              d="M17.0698 21.04C18.1854 21.04 19.0898 20.1356 19.0898 19.02C19.0898 17.9044 18.1854 17 17.0698 17C15.9542 17 15.0498 17.9044 15.0498 19.02C15.0498 20.1356 15.9542 21.04 17.0698 21.04Z"
                              stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                            </path>
                            <path d="M9.23047 10.44L14.8305 6.54004" stroke="black" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round">
                            </path>
                            <path d="M14.8305 17.4601L9.23047 13.5601" stroke="black" stroke-width="1.5"
                              stroke-linecap="round" stroke-linejoin="round">
                            </path>
                          </svg>
                        </div>
                        <div class="fav-item wrap-ic wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24"
                            fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M21.25 8.7196C21.25 9.8796 20.81 11.0496 19.92 11.9396L18.44 13.4196L12.07 19.7896C12.04 19.8196 12.03 19.8296 12 19.8496C11.97 19.8296 11.96 19.8196 11.93 19.7896L4.08 11.9396C3.19 11.0496 2.75 9.8896 2.75 8.7196C2.75 7.54961 3.19 6.37961 4.08 5.48961C5.86 3.71961 8.74 3.71961 10.52 5.48961L11.99 6.9696L13.47 5.48961C15.25 3.71961 18.12 3.71961 19.9 5.48961C20.81 6.37961 21.25 7.53961 21.25 8.7196Z"
                              stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                            </path>
                          </svg>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="group-total">
                    <div class="wrap-svg">
                      <svg class="star-rating" width="16" height="17" viewBox="0 0 16 17"
                        fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                          d="M14.6667 7.23331C14.7333 6.89998 14.4667 6.49998 14.1333 6.49998L10.3333 5.96665L8.59999 2.49998C8.53333 2.36665 8.46666 2.29998 8.33333 2.23331C7.99999 2.03331 7.59999 2.16665 7.39999 2.49998L5.73333 5.96665L1.93333 6.49998C1.73333 6.49998 1.59999 6.56665 1.53333 6.69998C1.26666 6.96665 1.26666 7.36665 1.53333 7.63331L4.26666 10.3L3.59999 14.1C3.59999 14.2333 3.59999 14.3666 3.66666 14.5C3.86666 14.8333 4.26666 14.9666 4.59999 14.7666L7.99999 12.9666L11.4 14.7666C11.4667 14.8333 11.6 14.8333 11.7333 14.8333C11.8 14.8333 11.8 14.8333 11.8667 14.8333C12.2 14.7666 12.4667 14.4333 12.4 14.0333L11.7333 10.2333L14.4667 7.56665C14.6 7.49998 14.6667 7.36665 14.6667 7.23331Z"
                          fill="#FFC634"></path>
                      </svg>
                    </div>
                    <span class="info">5.0</span>
                    <span class="dot">•</span>
                    <div class="wrap-svg">
                      <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                        xmlns="http://www.w3.org/2000/svg" style="margin-right: 4px;">
                        <g clip-path="url(#clip0_1087_41996)">
                          <path
                            d="M10.0625 1.21875C10.0625 1.06369 10.1887 0.9375 10.3438 0.9375H11.9688C12.1238 0.9375 12.25 1.06369 12.25 1.21875V2.89422H13.1875V1.21875C13.1875 0.546719 12.6408 0 11.9688 0H10.3438C9.67172 0 9.125 0.546719 9.125 1.21875V2.89422H10.0625V1.21875Z"
                            fill="#5FCF86"></path>
                          <path
                            d="M5.69806 15.0623C5.49325 14.7441 5.375 14.3673 5.375 13.9686V6.94092H1.09375C0.490656 6.94092 0 7.43157 0 8.03467V13.9686C0 14.5186 0.408156 14.9749 0.9375 15.051V15.5309C0.9375 15.7898 1.14737 15.9997 1.40625 15.9997C1.66513 15.9997 1.875 15.7898 1.875 15.5309V15.0623H5.69806V15.0623ZM1.875 8.65967C1.875 8.40079 2.08487 8.19092 2.34375 8.19092C2.60263 8.19092 2.8125 8.40079 2.8125 8.65967V13.3436C2.8125 13.6024 2.60263 13.8123 2.34375 13.8123C2.08487 13.8123 1.875 13.6024 1.875 13.3436V8.65967Z"
                            fill="#5FCF86"></path>
                          <path
                            d="M4.375 5.26562C4.375 5.11056 4.50119 4.98438 4.65625 4.98438H5.375V4.92547C5.375 4.61094 5.44687 4.31291 5.57506 4.04688H4.65625C3.98422 4.04688 3.4375 4.59359 3.4375 5.26562V6.00359H4.375V5.26562Z"
                            fill="#5FCF86"></path>
                          <path
                            d="M14.9062 3.83154H7.40625C6.80316 3.83154 6.3125 4.3222 6.3125 4.92529V13.9686C6.3125 14.5186 6.72066 14.9749 7.25 15.051V15.5309C7.25 15.7898 7.45987 15.9997 7.71875 15.9997C7.97763 15.9997 8.1875 15.7898 8.1875 15.5309V15.0623H14.125V15.5309C14.125 15.7898 14.3349 15.9997 14.5938 15.9997C14.8526 15.9997 15.0625 15.7898 15.0625 15.5309V15.051C15.5918 14.9749 16 14.5186 16 13.9686V4.92529C16 4.32217 15.5093 3.83154 14.9062 3.83154ZM9.125 13.3436C9.125 13.6024 8.91513 13.8123 8.65625 13.8123C8.39737 13.8123 8.1875 13.6024 8.1875 13.3436V5.55029C8.1875 5.29142 8.39737 5.08154 8.65625 5.08154C8.91513 5.08154 9.125 5.29142 9.125 5.55029V13.3436ZM13.6562 13.8123C13.3974 13.8123 13.1875 13.6024 13.1875 13.3436V5.55029C13.1875 5.29142 13.3974 5.08154 13.6562 5.08154C13.9151 5.08154 14.125 5.29142 14.125 5.55029V13.3436C14.125 13.6024 13.9151 13.8123 13.6562 13.8123Z"
                            fill="#5FCF86"></path>
                        </g>
                        <defs>
                          <clippath id="clip0_1087_41996">
                            <rect width="16" height="16" fill="white"></rect>
                          </clippath>
                        </defs>
                      </svg>
                    </div>
                      <span class="info">37 chuyến</span>
                      <span class="dot">•</span>
                      <span class="info">Quận 5, Hồ Chí Minh</span>
                  </div>
                  <div class="group-tag">
                    <span class="tag-item transmission">Số tự động</span>
                    <span class="tag-item instant">Đặt xe nhanh</span>
                  </div>
                </div>
              </div>
              <div class="sidebar-detail">
                <div class="insurance cardetail">
                  <img loading="lazy"
                    src="/images/insurance-polish.svg">
                  <div class="content">
                    <p>Bảo hiểm thuê xe</p>
                    <p class="note">Chuyến đi có mua bảo hiểm. Khách thuê bồi thường tối đa 2.000.000 VNĐ trong trường hợp có sự cố ngoài ý muốn.</p>
                  </div>
                </div>
                <div class="rent-box" id="cardetail" style="position: relative;">
                  <div class="price">
                    <h4><span id="priceRent"></span>đ/ngày</h4>
                  </div>
				<button id="openModal" type="button" class="btn btn-primary hidden" data-bs-toggle="modal" data-bs-target="#exampleModal">
					Open modal
				</button>
                  <div class="date-time-form" id="chooseDate">
                    <div class="form-item">
                      <label>Nhận xe</label>
                      <div class="wrap-date-time">
                        <div class="wrap-date">
                          <span id="startDate" class="value"></span>
                        </div>
                      </div>
                    </div>
                    <div class="line"></div>
                    <div class="form-item">
                      <label>Trả xe</label>
                      <div class="wrap-date-time">
                        <div class="wrap-date">
                          <span id="endDate" class="value"></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="dropdown-form"><label>Địa điểm giao xe</label>
                    <div class="wrap-form "><span class="value">Quận 5, Hồ Chí Minh</span></div>
                  </div>
                  <div class="hidden">
                  	<span id="carId" class="hidden">${car.bienSo }</span>
                  	<form:form action="/contract/rent?id=${car.bienSo }" modelAttribute="contract">
	                  	<form:input path="ngayTao" id="createDateInput" value=""/>
	                  	<form:input path="ngayBatDau" id="startDateInput" value=""/>
	                  	<form:input path="ngayKetThuc" id="endDateInput" value=""/>
	                  	<form:input path="giaThue" id="priceInput" value=""/>
	                  	<form:input path="tongTien" id="totalPriceInput" value=""/>
	                  	<form:input path="tienCoc" id="prePriceInput" value="0"/>
	                  	<form:input path="xe" id="carInput" value=""/>
	                  	<c:choose>
							<c:when test="${not empty currentAccount}">
								<form:input path="khachHang" id="" value="${currentAccount.maKH }"/>
							</c:when>
						</c:choose>
	                  	<button id="RENT"></button>
                  	</form:form>
                  	<div class="line-page"></div>
                  </div>
                  <div class="price-container">
                   	<span class="hidden" id="price">${car.giaThue }</span>
                    <div class="price-item">
                      <p class="df-align-center">Đơn giá thuê</p>
                      <p class="cost"><span id="priceRent1"></span>đ/ngày</p>
                    </div>
                    <!-- <div class="price-item">
                      <p class="df-align-center">Bảo hiểm thuê xe</p>
                      <p class="cost"><span>71 673đ ngày</span></p>
                    </div> -->
                    <div class="line-page"></div>
                    <div class="price-item">
                      <p>Tổng cộng</p>
                      <p class="cost"><span id="priceRent2"></span>đ x <span id="countDays">0</span> ngày</p>
                    </div>
                    <!-- <div class="promotion">
                      <div class="wrap-svg">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                          viewBox="0 0 24 24" fill="none">
                          <path
                            d="M21.3 10.8394C21.69 10.8394 22 10.5294 22 10.1394V9.20938C22 5.10938 20.75 3.85938 16.65 3.85938H7.35C3.25 3.85937 2 5.10938 2 9.20938V9.67938C2 10.0694 2.31 10.3794 2.7 10.3794C3.6 10.3794 4.33 11.1094 4.33 12.0094C4.33 12.9094 3.6 13.6294 2.7 13.6294C2.31 13.6294 2 13.9394 2 14.3294V14.7994C2 18.8994 3.25 20.1494 7.35 20.1494H16.65C20.75 20.1494 22 18.8994 22 14.7994C22 14.4094 21.69 14.0994 21.3 14.0994C20.4 14.0994 19.67 13.3694 19.67 12.4694C19.67 11.5694 20.4 10.8394 21.3 10.8394ZM9 8.87938C9.55 8.87938 10 9.32938 10 9.87938C10 10.4294 9.56 10.8794 9 10.8794C8.45 10.8794 8 10.4294 8 9.87938C8 9.32938 8.44 8.87938 9 8.87938ZM15 15.8794C14.44 15.8794 13.99 15.4294 13.99 14.8794C13.99 14.3294 14.44 13.8794 14.99 13.8794C15.54 13.8794 15.99 14.3294 15.99 14.8794C15.99 15.4294 15.56 15.8794 15 15.8794ZM15.9 9.47937L9.17 16.2094C9.02 16.3594 8.83 16.4294 8.64 16.4294C8.45 16.4294 8.26 16.3594 8.11 16.2094C7.82 15.9194 7.82 15.4394 8.11 15.1494L14.84 8.41938C15.13 8.12938 15.61 8.12938 15.9 8.41938C16.19 8.70938 16.19 9.18937 15.9 9.47937Z"
                            fill="#263D2A"></path>
                        </svg>
                      </div>
                      <p>Sử dụng mã khuyến mãi</p>
                    </div> -->
                    <div class="line-page"></div>
                    <div class="price-item total">
                      <p>Thành tiền</p>
                      <p class="cost"><span id="totalPrice"></span>đ</p>
                    </div>
                  </div>
                  <a id="chooseRent" class="btn btn-primary btn--m width-100">
                    <div class="wrap-svg">
                      <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                          d="M12.9733 7.70015L8.46667 14.2668C8.29334 14.5268 8.01335 14.6668 7.71335 14.6668C7.62002 14.6668 7.52667 14.6535 7.43334 14.6268C7.05334 14.5068 6.79335 14.1668 6.79335 13.7735V10.0135C6.79335 9.86015 6.64667 9.72682 6.46667 9.72682L3.78001 9.6935C3.44001 9.6935 3.12668 9.50016 2.97335 9.20682C2.82668 8.92016 2.84668 8.5735 3.03335 8.30017L7.53335 1.7335C7.76001 1.40016 8.18001 1.25349 8.56668 1.37349C8.94668 1.49349 9.20668 1.83349 9.20668 2.22682V5.98683C9.20668 6.14017 9.35335 6.2735 9.53335 6.2735L12.22 6.30682C12.56 6.30682 12.8733 6.49349 13.0267 6.79349C13.1733 7.08016 13.1533 7.42682 12.9733 7.70015Z"
                          fill="#FFC634"></path>
                      </svg>
                    </div>
                    CHỌN THUÊ
                  </a>
                  <p class="text-danger">${uNeedLogin}</p>
                </div>
                <div class="surcharge">
                  <p class="title text-primary">Phụ phí có thể phát sinh</p>
                  <div class="surcharge-container">
                    <div class="surcharge-item">
                      <div class="wrap-svg">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path d="M8 7.33398V10.4407" stroke="#666666" stroke-linecap="round" stroke-linejoin="round">
                          </path>
                          <path
                            d="M8 6.05469C8.27614 6.05469 8.5 5.83083 8.5 5.55469C8.5 5.27855 8.27614 5.05469 8 5.05469C7.72386 5.05469 7.5 5.27855 7.5 5.55469C7.5 5.83083 7.72386 6.05469 8 6.05469Z"
                            fill="#666666"></path>
                          <path
                            d="M7.99967 14.1673C11.4054 14.1673 14.1663 11.4064 14.1663 8.00065C14.1663 4.5949 11.4054 1.83398 7.99967 1.83398C4.59392 1.83398 1.83301 4.5949 1.83301 8.00065C1.83301 11.4064 4.59392 14.1673 7.99967 14.1673Z"
                            stroke="#666666" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </div>
                      <div class="content">
                        <div class="content-item">
                          <p class="title">Phí vượt giới hạn</p>
                          <p class="cost"><span>4 000đ/km</span></p>
                        </div>
                        <div class="content-item">
                          <p>Phụ phí phát sinh nếu lộ trình di chuyển vượt quá <span>300km</span> khi thuê xe<span> 1 ngày</span></p>
                        </div>
                      </div>
                    </div>
                    <div class="surcharge-item">
                      <div class="wrap-svg">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path d="M8 7.33398V10.4407" stroke="#666666" stroke-linecap="round" stroke-linejoin="round">
                          </path>
                          <path
                            d="M8 6.05469C8.27614 6.05469 8.5 5.83083 8.5 5.55469C8.5 5.27855 8.27614 5.05469 8 5.05469C7.72386 5.05469 7.5 5.27855 7.5 5.55469C7.5 5.83083 7.72386 6.05469 8 6.05469Z"
                            fill="#666666"></path>
                          <path
                            d="M7.99967 14.1673C11.4054 14.1673 14.1663 11.4064 14.1663 8.00065C14.1663 4.5949 11.4054 1.83398 7.99967 1.83398C4.59392 1.83398 1.83301 4.5949 1.83301 8.00065C1.83301 11.4064 4.59392 14.1673 7.99967 14.1673Z"
                            stroke="#666666" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </div>
                      <div class="content">
                        <div class="content-item">
                          <p class="title">Phí quá giờ</p>
                          <p class="cost"><span>100 000đ/h</span></p>
                        </div>
                        <div class="content-item">
                          <p>Phụ phí phát sinh nếu hoàn trả xe trễ giờ. Trường hợp trễ quá<span> 4 tiếng</span>, phụ phí thêm <span>1 ngày </span>thuê</p>
                        </div>
                      </div>
                    </div>
                    <div class="surcharge-item">
                      <div class="wrap-svg">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path d="M8 7.33398V10.4407" stroke="#666666" stroke-linecap="round" stroke-linejoin="round">
                          </path>
                          <path
                            d="M8 6.05469C8.27614 6.05469 8.5 5.83083 8.5 5.55469C8.5 5.27855 8.27614 5.05469 8 5.05469C7.72386 5.05469 7.5 5.27855 7.5 5.55469C7.5 5.83083 7.72386 6.05469 8 6.05469Z"
                            fill="#666666"></path>
                          <path
                            d="M7.99967 14.1673C11.4054 14.1673 14.1663 11.4064 14.1663 8.00065C14.1663 4.5949 11.4054 1.83398 7.99967 1.83398C4.59392 1.83398 1.83301 4.5949 1.83301 8.00065C1.83301 11.4064 4.59392 14.1673 7.99967 14.1673Z"
                            stroke="#666666" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </div>
                      <div class="content">
                        <div class="content-item">
                          <p class="title">Phí vệ sinh</p>
                          <p class="cost"><span>60 000đ</span></p>
                        </div>
                        <div class="content-item">
                          <p>Phụ phí phát sinh khi xe hoàn trả không đảm bảo vệ sinh (nhiều vết bẩn, bùn cát, sình lầy...)</p>
                        </div>
                      </div>
                    </div>
                    <div class="surcharge-item">
                      <div class="wrap-svg">
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path d="M8 7.33398V10.4407" stroke="#666666" stroke-linecap="round" stroke-linejoin="round">
                          </path>
                          <path
                            d="M8 6.05469C8.27614 6.05469 8.5 5.83083 8.5 5.55469C8.5 5.27855 8.27614 5.05469 8 5.05469C7.72386 5.05469 7.5 5.27855 7.5 5.55469C7.5 5.83083 7.72386 6.05469 8 6.05469Z"
                            fill="#666666"></path>
                          <path
                            d="M7.99967 14.1673C11.4054 14.1673 14.1663 11.4064 14.1663 8.00065C14.1663 4.5949 11.4054 1.83398 7.99967 1.83398C4.59392 1.83398 1.83301 4.5949 1.83301 8.00065C1.83301 11.4064 4.59392 14.1673 7.99967 14.1673Z"
                            stroke="#666666" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </div>
                      <div class="content">
                        <div class="content-item">
                          <p class="title">Phí khử mùi</p>
                          <p class="cost"><span>300 000đ</span></p>
                        </div>
                        <div class="content-item">
                          <p>Phụ phí phát sinh khi xe hoàn trả bị ám mùi khó chịu (mùi thuốc lá, thực phẩm nặng mùi...)</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- <div class="wrap-btn">
                  <a class="btn btn-link">
                    <svg width="20" height="20" viewBox="0 0 20 20"
                      fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path
                        d="M16.7 12.0584C17.2917 12.5667 16.875 13.4251 16.0333 13.4251H9.875V3.79175H16.0333C16.875 3.79175 17.2917 4.65841 16.7 5.15841L14.1917 7.30007C13.35 8.01674 13.35 9.19174 14.1917 9.90841L16.7 12.0584Z"
                        stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                      <path d="M3.02539 9.14185V17.7085" stroke="black" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round"></path>
                      <path
                        d="M9.0166 11.7167H3.87493C3.39993 11.7167 3.0166 11.3334 3.0166 10.8584V3.15008C3.0166 2.67508 3.39993 2.29175 3.87493 2.29175H9.0166C9.4916 2.29175 9.87493 2.67508 9.87493 3.15008V10.8584C9.87493 11.3334 9.4916 11.7167 9.0166 11.7167Z"
                        stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                    </svg>Báo cáo xe này
                  </a>
                </div> -->
              </div>
              <div class="content-detail">
                <div class="line-page"></div>
                <div class="info-car-desc" id="outsfeatures">
                  <h6>Đặc điểm</h6>
                  <div class="outstanding-features">
                  <c:choose>
					    <c:when test="${numberOfSeats != null}">
		                    <div class="outstanding-features__item">
		                      <div class="wrap-svg">
		                        <svg width="32" height="32" viewBox="0 0 32 32" fill="none"
		                          xmlns="http://www.w3.org/2000/svg">
		                          <path
		                            d="M10.914 23.3289C10.9148 23.3284 10.9156 23.3279 10.9163 23.3274C10.9155 23.3279 10.9148 23.3284 10.914 23.3289ZM10.914 23.3289C10.914 23.3289 10.914 23.3289 10.914 23.3289L11.3128 23.9114M10.914 23.3289L11.3128 23.9114M11.3128 23.9114L10.9807 23.2882L20.6697 23.9458C20.6682 23.9484 20.6656 23.9496 20.6631 23.9479C20.655 23.9424 20.6343 23.9284 20.6014 23.9074C20.6014 23.9073 20.6014 23.9073 20.6013 23.9073C20.5141 23.8516 20.3413 23.7468 20.0921 23.6208C20.0919 23.6207 20.0918 23.6206 20.0917 23.6206C19.3397 23.2404 17.8926 22.6674 16.0003 22.6674C14.1715 22.6674 12.7584 23.2026 11.9869 23.5817L11.9929 23.5929M11.3128 23.9114L11.331 23.9456C11.3324 23.9483 11.3352 23.9495 11.3377 23.9478C11.3444 23.9432 11.3592 23.9332 11.3821 23.9184L11.9929 23.5929L11.9929 23.5929M11.9929 23.5929C11.9909 23.5892 11.9889 23.5855 11.9868 23.5818C11.6767 23.7342 11.4702 23.8614 11.3821 23.9184L11.9929 23.5929ZM10.6691 24.2983L10.6691 24.2983C10.7406 24.4324 10.8728 24.5792 11.0793 24.6538C11.3072 24.7361 11.5609 24.7039 11.7614 24.5667L11.7614 24.5667C11.7978 24.5418 13.4597 23.4174 16.0003 23.4174C18.5426 23.4174 20.205 24.5432 20.2393 24.5667L20.2393 24.5667C20.4389 24.7034 20.6938 24.7372 20.9245 24.6528C21.1293 24.5779 21.2557 24.4338 21.3233 24.3136L22.4886 22.2427L24.3242 23.0447L21.6934 28.584H9.99882L7.65051 23.0635L9.57427 22.2435L10.6691 24.2983ZM24.4348 22.8117L24.4345 22.8124L24.4348 22.8117Z"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <path
		                            d="M12.75 4.66675C12.75 3.97639 13.3096 3.41675 14 3.41675H18C18.6904 3.41675 19.25 3.97639 19.25 4.66675V7.00008C19.25 7.13815 19.1381 7.25008 19 7.25008H13C12.8619 7.25008 12.75 7.13815 12.75 7.00008V4.66675Z"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <path
		                            d="M9.33398 22.6668L9.90564 11.2336C9.95887 10.1692 10.8374 9.3335 11.9031 9.3335H20.0982C21.1639 9.3335 22.0424 10.1692 22.0957 11.2336L22.6673 22.6668"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <path d="M14.667 7.35815V9.8901" stroke="#5FCF86" stroke-width="1.5"></path>
		                          <path d="M17.334 7.35815V9.8901" stroke="#5FCF86" stroke-width="1.5"></path>
		                        </svg>
		                      </div>
			                      <div class="title">
			                        <p class="sub">Số ghế</p>
			                        <p class="main">${numberOfSeats }</p>
			                      </div>
		                    </div>
					    </c:when>    
					    <c:otherwise>
					    </c:otherwise>
					</c:choose>
					<c:choose>
					    <c:when test="${transmission != null}">
		                    <div class="outstanding-features__item">
		                      <div class="wrap-svg">
		                        <svg width="32" height="32" viewBox="0 0 32 32" fill="none"
		                          xmlns="http://www.w3.org/2000/svg">
		                          <path
		                            d="M25.9163 7.99992C25.9163 9.05846 25.0582 9.91659 23.9997 9.91659C22.9411 9.91659 22.083 9.05846 22.083 7.99992C22.083 6.94137 22.9411 6.08325 23.9997 6.08325C25.0582 6.08325 25.9163 6.94137 25.9163 7.99992Z"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <circle cx="23.9997" cy="23.9999" r="1.91667" stroke="#5FCF86" stroke-width="1.5"></circle>
		                          <path
		                            d="M17.9163 7.99992C17.9163 9.05846 17.0582 9.91659 15.9997 9.91659C14.9411 9.91659 14.083 9.05846 14.083 7.99992C14.083 6.94137 14.9411 6.08325 15.9997 6.08325C17.0582 6.08325 17.9163 6.94137 17.9163 7.99992Z"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <path
		                            d="M17.9163 23.9999C17.9163 25.0585 17.0582 25.9166 15.9997 25.9166C14.9411 25.9166 14.083 25.0585 14.083 23.9999C14.083 22.9414 14.9411 22.0833 15.9997 22.0833C17.0582 22.0833 17.9163 22.9414 17.9163 23.9999Z"
		                            stroke="#5FCF86" stroke-width="1.5"></path>
		                          <circle cx="7.99967" cy="7.99992" r="1.91667" stroke="#5FCF86" stroke-width="1.5"></circle>
		                          <path
		                            d="M10.1025 26.6666V21.3333H7.99837C7.59559 21.3333 7.25184 21.4053 6.96712 21.5494C6.68066 21.6918 6.46278 21.894 6.31348 22.1562C6.16244 22.4166 6.08691 22.723 6.08691 23.0754C6.08691 23.4296 6.1633 23.7343 6.31608 23.9895C6.46886 24.243 6.69021 24.4374 6.98014 24.5728C7.26834 24.7083 7.6173 24.776 8.02702 24.776H9.43587V23.8697H8.20931C7.99403 23.8697 7.81521 23.8402 7.67285 23.7812C7.53049 23.7221 7.42459 23.6336 7.35514 23.5155C7.28396 23.3975 7.24837 23.2508 7.24837 23.0754C7.24837 22.8984 7.28396 22.7491 7.35514 22.6275C7.42459 22.506 7.53136 22.414 7.67546 22.3515C7.81782 22.2872 7.9975 22.2551 8.21452 22.2551H8.97493V26.6666H10.1025ZM7.22233 24.2395L5.89681 26.6666H7.1416L8.43848 24.2395H7.22233Z"
		                            fill="#5FCF86"></path>
		                          <path
		                            d="M24 10.6665V15.9998M24 21.3332V15.9998M16 10.6665V21.3332M8 10.6665V15.4998C8 15.776 8.22386 15.9998 8.5 15.9998H24"
		                            stroke="#5FCF86" stroke-width="1.5" stroke-linecap="round"></path>
		                        </svg>
		                      </div>
		                      <div class="title">
		                        <p class="sub">Truyền động</p>
		                        <p class="main">${transmission }</p>
		                      </div>
		                    </div>
                    	</c:when>    
					    <c:otherwise>
					    </c:otherwise>
					</c:choose>
					<c:choose>
					    <c:when test="${fuelType != null}">
		                    <div class="outstanding-features__item">
		                      <div class="wrap-svg">
		                        <svg width="32" height="32" viewBox="0 0 32 32" fill="none"
		                          xmlns="http://www.w3.org/2000/svg">
		                          <path
		                            d="M24.3337 27.2499H7.66699C7.52892 27.2499 7.41699 27.138 7.41699 26.9999V12.4599C7.41699 12.3869 7.44888 12.3175 7.5043 12.27L14.652 6.14344L14.1639 5.574L14.652 6.14344C14.6973 6.1046 14.755 6.08325 14.8147 6.08325H24.3337C24.4717 6.08325 24.5837 6.19518 24.5837 6.33325V26.9999C24.5837 27.138 24.4717 27.2499 24.3337 27.2499Z"
		                            stroke="#5FCF86" stroke-width="1.5" stroke-linecap="round"></path>
		                          <path d="M12.0001 5.33325L7.42285 9.46712" stroke="#5FCF86" stroke-width="1.5"
		                            stroke-linecap="round"></path>
		                          <path
		                            d="M17.888 19.5212L16.7708 15.93C16.5378 15.1812 15.4785 15.1798 15.2436 15.928L14.1172 19.5164C13.7178 20.7889 14.6682 22.0833 16.0019 22.0833C17.3335 22.0833 18.2836 20.7927 17.888 19.5212Z"
		                            stroke="#5FCF86" stroke-width="1.5" stroke-linecap="round"></path>
		                          <path
		                            d="M23.2503 3.66675V5.66675C23.2503 5.80482 23.1384 5.91675 23.0003 5.91675H14.667C14.5827 5.91675 14.5365 5.8916 14.5072 5.86702C14.4721 5.83755 14.44 5.78953 14.4245 5.72738C14.4089 5.66524 14.4147 5.60775 14.4318 5.56523C14.4461 5.52975 14.4749 5.48584 14.5493 5.44616L18.2993 3.44616C18.3356 3.42685 18.376 3.41675 18.417 3.41675H23.0003C23.1384 3.41675 23.2503 3.52868 23.2503 3.66675Z"
		                            stroke="#5FCF86" stroke-width="1.5" stroke-linecap="round"></path>
		                        </svg>
		                      </div>
		                      <div class="title">
		                        <p class="sub">Nhiên liệu</p>
		                        <p class="main">${fuelType }</p>
		                      </div>
		                    </div>
                    	</c:when>    
					    <c:otherwise>
					    </c:otherwise>
					</c:choose>
					<c:choose>
				    <c:when test="${fuelConsumption != null}">
						<div class="outstanding-features__item">
							<div class="wrap-svg">
								<svg width="32" height="32" viewBox="0 0 32 32"
									fill="none" xmlns="http://www.w3.org/2000/svg">
									<path
										d="M7.41667 24V23.25H6.66667H4.75V18.0833H6.66667H7.41667V17.3333V15.4167H9.33333H9.64399L9.86366 15.197L12.3107 12.75H24.5833V23.25H22.6667H22.356L22.1363 23.4697L19.6893 25.9167H7.41667V24Z"
										stroke="#5FCF86" stroke-width="1.5"
										stroke-linecap="round"></path>
									<path d="M24 21.3333H28" stroke="#5FCF86"
										stroke-width="1.5"></path>
									<path d="M24 18.6665H28" stroke="#5FCF86"
										stroke-width="1.5"></path>
									<path
										d="M15.417 7.33325C15.417 6.6429 15.9766 6.08325 16.667 6.08325H20.667C21.3573 6.08325 21.917 6.6429 21.917 7.33325V8.58325H15.417V7.33325Z"
										stroke="#5FCF86" stroke-width="1.5"></path>
									<path d="M17.333 9.33325V11.9999M19.9997 9.33325V11.9999"
										stroke="#5FCF86" stroke-width="1.5"></path>
									<path d="M4.66699 26.01L4.66699 15.3308" stroke="#5FCF86"
										stroke-width="1.5" stroke-linecap="round"></path>
									<path d="M27.3291 23.3384L27.3291 16.6704"
										stroke="#5FCF86" stroke-width="1.5"
										stroke-linecap="round"></path></svg>
							</div>
							<div class="title">
								<p class="sub">NL tiêu hao</p>
								<p class="main">${fuelConsumption }</p>
							</div>
						</div>
						</c:when>
					    <c:otherwise>
					    </c:otherwise>
					</c:choose>
                  </div>
                </div>
                <div class="line-page"></div>
                <div class="info-car-desc">
                  <h6>Mô tả</h6>
                  <pre class=""><span>${car.moTa }</span></pre>
                </div>
                <div class="line-page"></div>
                <div class="info-car-desc">
                  <h6>Các tiện nghi khác</h6>
                  <div class="features-car">
                    <ul>
                    	<c:choose>
					    	<c:when test="${map != null}">
                      			<li> <img loading="lazy" src="/images/map-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${map }</li>
                        	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${camera != null}">
		                      	<li> <img loading="lazy" src="/images/dash_camera-v2.png"
		                          	alt="Mioto - Thuê xe tự lái">${camera }</li>
	                    	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${reverseCamera != null}">
					    		<li> <img loading="lazy" src="/images/reverse_camera-v2.png"
	                          		alt="Mioto - Thuê xe tự lái">${reverseCamera }</li>
                          	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${fullCamera != null}">
					    		<li> <img loading="lazy" src="/images/360_camera-v2.png"
	                          		alt="Mioto - Thuê xe tự lái">${fullCamera }</li>
                          	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${gps != null}">
					    		<li> <img loading="lazy" src="/images/gps-v2.png"
	                          		alt="Mioto - Thuê xe tự lái">${gps }</li>
                          	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${usb != null}">
					    		<li> <img loading="lazy" src="/images/usb-v2.png"
	                          		alt="Mioto - Thuê xe tự lái">${usb }</li>
                          	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${sensor != null}">
		                      	<li> <img loading="lazy" src="/images/tpms-v2.png"
		                          	alt="Mioto - Thuê xe tự lái">${sensor }</li>
                         	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${collisionSensor != null}">
		                      	<li> <img loading="lazy" src="/images/impact_sensor-v2.png"
		                          	alt="Mioto - Thuê xe tự lái">${collisionSensor }</li>
                         	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
                      	<c:choose>
				    		<c:when test="${speedWarning != null}">
				    			<li> <img loading="lazy" src="/images/head_up-v2.png"
		                          	alt="Mioto - Thuê xe tự lái">${speedWarning }</li>
		                    </c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${spareTire != null}">
			    				<li> <img loading="lazy" src="/images/spare_tire-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${spareTire }</li>
                      		</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${dvdScreen != null}">
				    			<li> <img loading="lazy" src="/images/dvd-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${dvdScreen }</li>
                      		</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${etc != null}">
			    				<li> <img loading="lazy" src="/images/etc-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${etc }</li>
                   			</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${bluetooth != null}">
			    				<li> <img loading="lazy" src="/images/bluetooth-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${bluetooth }</li>
                   			</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
						<c:choose>
				    		<c:when test="${airbag != null}">
				    			<li> <img loading="lazy" src="/images/airbags-v2.png"
                          			alt="Mioto - Thuê xe tự lái">${airbag }</li>
                          	</c:when>    
					    	<c:otherwise>
					    	</c:otherwise>
						</c:choose>
                    </ul>
                  </div>
                </div>
                <div class="line-page"></div>
                <div class="info-car-desc" id="papers">
                  <h6 class="df-align-center">Giấy tờ thuê xe
                    <span class="tooltip tooltip--m  icon--m">
                      <span class="wrap-svg">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path
                            d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path
                            d="M9.08984 9.00008C9.32495 8.33175 9.789 7.76819 10.3998 7.40921C11.0106 7.05024 11.7287 6.91902 12.427 7.03879C13.1253 7.15857 13.7587 7.52161 14.2149 8.06361C14.6712 8.60561 14.9209 9.2916 14.9198 10.0001C14.9198 12.0001 11.9198 13.0001 11.9198 13.0001"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path d="M12 17H12.01" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </span>
                      <span class="tooltip-text">
                        <b>Bạn đã có CCCD gắn chip </b>
                        <br>Giấy tờ thuê xe gồm có: 
                        <br>- Giấy phép lái xe CCCD (chủ xe đối chiếu và gửi lại bạn)
                        <br>
                        <b>Bạn chưa có CCCD gắn chip </b>
                        <br>Giấy tờ thuê xe gồm có:
                        <br>- Giấy phép lái xe (chủ xe đối chiếu và gửi lại bạn)
                        <br>- Passport (chủ xe đối chiếu, giữ lại và hoàn trả khi bạn trả xe)
                        <br>Lưu ý: Khách thuê vui lòng chuẩn bị đầy đủ BẢN GỐC tất cả giấy tờ thuê xe khi làm thủ tục nhận xe.
                      </span>
                    </span>
                  </h6>
                  <div class="required-papers">
                    <div class="required-papers__item">
                      <div class="type__item">
                        <div class="wrap-svg">
                          <svg width="17" height="16" viewBox="0 0 17 16" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M8.49967 1.33325C4.82634 1.33325 1.83301 4.32659 1.83301 7.99992C1.83301 11.6733 4.82634 14.6666 8.49967 14.6666C12.173 14.6666 15.1663 11.6733 15.1663 7.99992C15.1663 4.32659 12.173 1.33325 8.49967 1.33325ZM8.49967 6.05325C8.22634 6.05325 7.99967 5.83325 7.99967 5.55325C7.99967 5.27992 8.22634 5.05325 8.49967 5.05325C8.77967 5.05325 8.99967 5.27992 8.99967 5.55325C8.99967 5.83325 8.77967 6.05325 8.49967 6.05325ZM8.99967 10.3866C8.99967 10.6666 8.77301 10.8866 8.49967 10.8866C8.22634 10.8866 7.99967 10.6666 7.99967 10.3866V7.27992C7.99967 6.99992 8.22634 6.77992 8.49967 6.77992C8.77301 6.77992 8.99967 6.99992 8.99967 7.27992V10.3866Z"
                              fill="#666666"></path>
                          </svg>
                        </div>
                        <p class="font-12">Chọn 1 trong 2 hình thức</p>
                      </div>
                      <div class="type-content"><img loading="lazy" src="/images/gplx_cccd.png">
                        <div class="type-name">
                          <p>GPLX CCCD gắn chip (đối chiếu)</p>
                        </div>
                      </div>
                      <div class="type-content"><img loading="lazy"
                          src="/images/gplx_passport.png">
                        <div class="type-name">
                          <p>GPLX (đối chiếu) Passport (giữ lại)</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="info-car-desc">
                  <h6 class="df-align-center">Tài sản thế chấp
                    <span class="tooltip tooltip--m  icon--m">
                      <span class="wrap-svg">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path
                            d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path
                            d="M9.08984 9.00008C9.32495 8.33175 9.789 7.76819 10.3998 7.40921C11.0106 7.05024 11.7287 6.91902 12.427 7.03879C13.1253 7.15857 13.7587 7.52161 14.2149 8.06361C14.6712 8.60561 14.9209 9.2916 14.9198 10.0001C14.9198 12.0001 11.9198 13.0001 11.9198 13.0001"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path d="M12 17H12.01" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                      </span>
                      <span class="tooltip-text">
                        Bạn sẽ để lại tài sản thế chấp (tiền mặt/chuyển khoản hoặc xe máy kèm cà vẹt gốc) cho chủ xe khi làm thủ tục nhận xe <br>
                        Chủ xe sẽ gửi lại tài sản thế chấp khi bạn hoàn trả xe theo như nguyên trạng ban đầu lúc nhận xe
                      </span>
                    </span>
                  </h6>
                  <div class="required-papers">
                    <p>15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu</p>
                  </div>
                </div>
                <div class="info-car-desc">
                  <h6>Điều khoản</h6>
                  <pre>
Quy định khác:
  ◦ Sử dụng xe đúng mục đích.
  ◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.
  ◦ Không sử dụng xe thuê để cầm cố, thế chấp.
  ◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.
  ◦ Không chở hàng quốc cấm dễ cháy nổ.
  ◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.
  ◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.
Trân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời ! 
                  </pre>
                </div>
                <div class="info-car-desc">
                  <h6>Chính sách huỷ chuyến<br>
                    <p class="font-16 fontWeight-4 text-gray">Miễn phí hủy chuyến trong vòng 1 giờ sau khi đặt cọc
                    </p>
                  </h6>
                  <div class="cancel-policy">
                    <div class="column title">
                      <div class="column__item case">Thời điểm hủy chuyến</div>
                      <div class="column__item">Khách thuê hủy chuyến</div>
                      <div class="column__item">Chủ xe hủy chuyến</div>
                    </div>
                    <div class="column">
                      <div class="column__item case">Trong vòng 1h sau giữ chỗ</div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM15.84 10.59L12.32 14.11C12.17 14.26 11.98 14.33 11.79 14.33C11.6 14.33 11.4 14.26 11.26 14.11L9.5 12.35C9.2 12.06 9.2 11.58 9.5 11.29C9.79 11 10.27 11 10.56 11.29L11.79 12.52L14.78 9.53C15.07 9.24 15.54 9.24 15.84 9.53C16.13 9.82 16.13 10.3 15.84 10.59Z"
                              fill="#12B76A"></path>
                          </svg>
                        </div>Hoàn tiền giữ chỗ 100%
                      </div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM15.84 10.59L12.32 14.11C12.17 14.26 11.98 14.33 11.79 14.33C11.6 14.33 11.4 14.26 11.26 14.11L9.5 12.35C9.2 12.06 9.2 11.58 9.5 11.29C9.79 11 10.27 11 10.56 11.29L11.79 12.52L14.78 9.53C15.07 9.24 15.54 9.24 15.84 9.53C16.13 9.82 16.13 10.3 15.84 10.59Z"
                              fill="#12B76A"></path>
                          </svg>
                        </div>Không tốn phí<span>(Đánh giá hệ thống 3*)</span>
                      </div>
                    </div>
                    <div class="column">
                      <div class="column__item case">Trước chuyến đi &gt;7 ngày</div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM15.84 10.59L12.32 14.11C12.17 14.26 11.98 14.33 11.79 14.33C11.6 14.33 11.4 14.26 11.26 14.11L9.5 12.35C9.2 12.06 9.2 11.58 9.5 11.29C9.79 11 10.27 11 10.56 11.29L11.79 12.52L14.78 9.53C15.07 9.24 15.54 9.24 15.84 9.53C16.13 9.82 16.13 10.3 15.84 10.59Z"
                              fill="#12B76A"></path>
                          </svg>
                        </div>Hoàn tiền giữ chỗ 70%
                      </div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM15.84 10.59L12.32 14.11C12.17 14.26 11.98 14.33 11.79 14.33C11.6 14.33 11.4 14.26 11.26 14.11L9.5 12.35C9.2 12.06 9.2 11.58 9.5 11.29C9.79 11 10.27 11 10.56 11.29L11.79 12.52L14.78 9.53C15.07 9.24 15.54 9.24 15.84 9.53C16.13 9.82 16.13 10.3 15.84 10.59Z"
                              fill="#12B76A"></path>
                          </svg>
                        </div>Đền tiền 30%<span>(Đánh giá hệ thống 3*)</span>
                      </div>
                    </div>
                    <div class="column">
                      <div class="column__item case">Trong vòng 7 ngày trước chuyến đi</div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM14.67 13.39C14.97 13.69 14.96 14.16 14.67 14.45C14.52 14.59 14.33 14.67 14.14 14.67C13.95 14.67 13.75 14.59 13.61 14.44L12.25 13.07L10.9 14.44C10.75 14.59 10.56 14.67 10.36 14.67C10.17 14.67 9.98 14.59 9.84 14.45C9.54 14.16 9.53999 13.69 9.82999 13.39L11.2 12L9.82999 10.61C9.53999 10.31 9.54 9.84 9.84 9.55C10.13 9.26 10.61 9.26 10.9 9.56L12.25 10.93L13.61 9.56C13.9 9.26 14.37 9.26 14.67 9.55C14.96 9.84 14.97 10.31 14.67 10.61L13.3 12L14.67 13.39Z"
                              fill="#F04438"></path>
                          </svg>
                        </div>Không hoàn tiền
                      </div>
                      <div class="column__item">
                        <div class="wrap-svg">
                          <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                              d="M12.25 2C6.74 2 2.25 6.49 2.25 12C2.25 17.51 6.74 22 12.25 22C17.76 22 22.25 17.51 22.25 12C22.25 6.49 17.76 2 12.25 2ZM14.67 13.39C14.97 13.69 14.96 14.16 14.67 14.45C14.52 14.59 14.33 14.67 14.14 14.67C13.95 14.67 13.75 14.59 13.61 14.44L12.25 13.07L10.9 14.44C10.75 14.59 10.56 14.67 10.36 14.67C10.17 14.67 9.98 14.59 9.84 14.45C9.54 14.16 9.53999 13.69 9.82999 13.39L11.2 12L9.82999 10.61C9.53999 10.31 9.54 9.84 9.84 9.55C10.13 9.26 10.61 9.26 10.9 9.56L12.25 10.93L13.61 9.56C13.9 9.26 14.37 9.26 14.67 9.55C14.96 9.84 14.97 10.31 14.67 10.61L13.3 12L14.67 13.39Z"
                              fill="#F04438"></path>
                          </svg>
                        </div>Đền tiền 100%<span>(Đánh giá hệ thống 2*)</span>
                      </div>
                    </div>
                    <div class="desc-note">
                      <p>* Khách thuê không nhận xe sẽ không được hoàn tiền giữ chỗ</p>
                      <p>* Chủ xe không giao xe sẽ hoàn đền 100% tiền giữ chỗ cho bạn</p>
                      <p class="df-align-center">* Tiền giữ chỗ bồi thường cho chủ xe hủy chuyến (nếu có) sẽ được
                        Mioto hoàn trả đến bạn bằng chuyển khoản ngân hàng trong vòng 1-3 ngày làm việc.
                        <span
                          class="tooltip tooltip--m ">
                          <span class="wrap-svg">
                            <svg width="24" height="24"
                              viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path
                                d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z"
                                stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                              <path
                                d="M9.08984 9.00008C9.32495 8.33175 9.789 7.76819 10.3998 7.40921C11.0106 7.05024 11.7287 6.91902 12.427 7.03879C13.1253 7.15857 13.7587 7.52161 14.2149 8.06361C14.6712 8.60561 14.9209 9.2916 14.9198 10.0001C14.9198 12.0001 11.9198 13.0001 11.9198 13.0001"
                                stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                              <path d="M12 17H12.01" stroke="black" stroke-width="1.5" stroke-linecap="round"
                                stroke-linejoin="round"></path>
                            </svg>
                          </span>
                          <span class="tooltip-text">
                            <b>Thủ tục hoàn tiền đền cọc</b>
                            Mioto sẽ hoàn lại tiền cọc (tiền đền cọc do chủ xe hủy chuyến (nếu có) theo chính sách hủy chuyến)
                            qua tài khoản ngân hàng của khách thuê trong vòng 1-3 ngày làm việc kể từ thời điểm hủy
                            chuyến.
                            <i>
                              *Nhân viên Mioto sẽ liên hệ khách thuê (qua số điện thoại đã đăng ký trên Mioto)
                              để xin thông tin tài khoản ngân hàng, hoặc Khách thuê có thể chủ động gửi thông tin cho
                              Mioto qua email Contact@mioto.vn hoặc nhắn tin tại Mioto Fanpage
                            </i>
                          </span>
                        </span>
                      </p>
                    </div>
                  </div>
                </div>
                <div class="line-page"></div>
                <div class="info-car-desc" id="carmap">
                  <h6>Vị trí xe</h6>
                  <div class="car-address">
                    <div class="address">
                      <div class="wrap-svg">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path
                            d="M11.9998 2.56885C7.8898 2.56885 4.5498 5.90884 4.5498 10.0188C4.5498 14.9088 10.7298 21.8288 10.9898 22.1189C11.2498 22.4089 11.6198 22.5688 11.9998 22.5688C12.3798 22.5688 12.7498 22.4089 13.0098 22.1189C13.6698 21.3889 19.4498 14.7988 19.4498 10.0188C19.4498 5.90884 16.1098 2.56885 11.9998 2.56885ZM11.9998 20.9988C11.1898 20.0588 6.0498 14.0188 6.0498 10.0188C6.0498 6.73884 8.7198 4.06885 11.9998 4.06885C15.2798 4.06885 17.9498 6.73884 17.9498 10.0188C17.9498 13.3988 14.1198 18.5988 11.9998 20.9988Z"
                            fill="black"></path>
                          <path
                            d="M11.9998 2.56885C7.8898 2.56885 4.5498 5.90884 4.5498 10.0188C4.5498 14.9088 10.7298 21.8288 10.9898 22.1189C11.2498 22.4089 11.6198 22.5688 11.9998 22.5688C12.3798 22.5688 12.7498 22.4089 13.0098 22.1189C13.6698 21.3889 19.4498 14.7988 19.4498 10.0188C19.4498 5.90884 16.1098 2.56885 11.9998 2.56885ZM8.87981 10.0188C8.87981 8.29884 10.2798 6.89885 11.9998 6.89885C13.7198 6.89885 15.1198 8.29884 15.1198 10.0188C15.1198 11.7388 13.7198 13.1389 11.9998 13.1389C10.2798 13.1389 8.87981 11.7388 8.87981 10.0188Z"
                            fill="black"></path>
                        </svg>
                      </div>
                      <p>Quận 5, Hồ Chí Minh</p>
                    </div>
                    <a href="">
                    <div class="maps-detail">
                      <div class="wrap-svg">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                          xmlns="http://www.w3.org/2000/svg">
                          <path
                            d="M5.41653 7.3916H3.99987C3.04987 7.3916 2.2832 8.15827 2.2832 9.10827V15.0999C2.2832 16.0499 3.04987 16.8166 3.99987 16.8166H15.9915C16.9415 16.8166 17.7082 16.0499 17.7082 15.0999V9.10827"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path d="M13.4253 7.3916H8.55859" stroke="black" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"></path>
                          <path
                            d="M13.4248 13.3833H15.9915C16.9415 13.3833 17.7081 14.15 17.7081 15.1C17.7081 16.05 16.9415 16.8166 15.9915 16.8166H13.4248"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path d="M13.4248 4.81665H15.9915C16.9415 4.81665 17.7081 5.58332 17.7081 6.53332"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path d="M17.708 15.1V6.53333" stroke="black" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"></path>
                          <path d="M13.4248 4.81665V13.3833" stroke="black" stroke-width="1.5" stroke-linecap="round"
                            stroke-linejoin="round"></path>
                          <path
                            d="M2.29199 11.6749H5.71699C6.19199 11.6749 6.57532 11.9999 6.57532 12.4083C6.57532 12.8166 6.95866 13.1416 7.43366 13.1416H8.29199C8.76699 13.1416 9.15032 13.4666 9.15032 13.8749V14.6083V16.8083"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path
                            d="M7.00006 3.19165C5.81673 3.19165 4.8584 4.14998 4.8584 5.33332C4.8584 6.79998 6.77506 8.94998 6.85839 9.04165C6.93339 9.12498 7.06674 9.12498 7.14174 9.04165C7.22507 8.94998 9.14173 6.79998 9.14173 5.33332C9.14173 4.14998 8.18339 3.19165 7.00006 3.19165Z"
                            stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                          <path
                            d="M7.00046 6.14996C7.41007 6.14996 7.74212 5.8179 7.74212 5.40829C7.74212 4.99868 7.41007 4.66663 7.00046 4.66663C6.59084 4.66663 6.25879 4.99868 6.25879 5.40829C6.25879 5.8179 6.59084 6.14996 7.00046 6.14996Z"
                            fill="black"></path>
                        </svg>
                      </div>
                      <p class="font-14 fontWeight-7">Xem bản đồ</p>
                      <div class="wrap-svg">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                          viewBox="0 0 20 20" fill="none">
                          <path
                            d="M12.9499 9.40832L8.23328 4.69999C8.15581 4.62188 8.06364 4.55989 7.96209 4.51758C7.86054 4.47527 7.75162 4.45349 7.64161 4.45349C7.5316 4.45349 7.42268 4.47527 7.32113 4.51758C7.21958 4.55989 7.12741 4.62188 7.04994 4.69999C6.89474 4.85613 6.80762 5.06734 6.80762 5.28749C6.80762 5.50764 6.89474 5.71885 7.04994 5.87499L11.1749 10.0417L7.04994 14.1667C6.89474 14.3228 6.80762 14.534 6.80762 14.7542C6.80762 14.9743 6.89474 15.1855 7.04994 15.3417C7.12712 15.4204 7.21916 15.483 7.32072 15.526C7.42229 15.5689 7.53135 15.5912 7.64161 15.5917C7.75187 15.5912 7.86094 15.5689 7.9625 15.526C8.06406 15.483 8.1561 15.4204 8.23328 15.3417L12.9499 10.6333C13.0345 10.5553 13.102 10.4606 13.1482 10.3552C13.1944 10.2497 13.2182 10.1359 13.2182 10.0208C13.2182 9.90574 13.1944 9.7919 13.1482 9.68648C13.102 9.58107 13.0345 9.48636 12.9499 9.40832Z"
                            fill="black"></path>
                        </svg>
                      </div>
                    </div>
                    </a>
                  </div>
                  <p class="note-address">Địa chỉ cụ thể sẽ được hiển thị sau khi đặt cọc</p>
                </div>
                <div class="line-page"></div>
              </div>
            </div>
            <div class="clear"></div>
          </div>
          <div class="related-car space sec">
            <div class="m-container">
              <h6>Xe tương tự </h6>
            </div>
            <div class="m-container">
              <div class="swiper swiper-related-car swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden">
                <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                  <!-- item in items -->
                  <c:forEach var="item" items="${cars }">
                  <div class="swiper-slide swiper-slide-active" style="width: 305px; margin-right: 20px;">
                    <a href="/detail?id=${item.bienSo }" class=" item-car">
                      <div class="item-box">
                        <div class="img-car">
                          <div class="fix-img">
                            <img src="/images/xe/${item.imgDauXe }">
                          </div>
                          <div class="fav-item wrap-svg" name="favIcon">
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path
                                d="M17.7083 7.26666C17.7083 8.23333 17.3417 9.20833 16.6 9.95L15.3667 11.1833L10.0583 16.4917C10.0333 16.5167 10.025 16.525 10 16.5417C9.97501 16.525 9.96667 16.5167 9.94167 16.4917L3.40001 9.95C2.65834 9.20833 2.29167 8.24166 2.29167 7.26666C2.29167 6.29166 2.65834 5.31667 3.40001 4.575C4.88334 3.1 7.28334 3.1 8.76667 4.575L9.99167 5.80833L11.225 4.575C12.7083 3.1 15.1 3.1 16.5833 4.575C17.3417 5.31667 17.7083 6.28333 17.7083 7.26666Z"
                                stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                            </svg>
                          </div>
                          <span class="label-pos">
                            <span class="rent">Đặt xe nhanh 
                              <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path
                                    d="M12.9733 7.70015L8.46667 14.2668C8.29334 14.5268 8.01335 14.6668 7.71335 14.6668C7.62002 14.6668 7.52667 14.6535 7.43334 14.6268C7.05334 14.5068 6.79335 14.1668 6.79335 13.7735V10.0135C6.79335 9.86015 6.64667 9.72682 6.46667 9.72682L3.78001 9.6935C3.44001 9.6935 3.12668 9.50016 2.97335 9.20682C2.82668 8.92016 2.84668 8.5735 3.03335 8.30017L7.53335 1.7335C7.76001 1.40016 8.18001 1.25349 8.56668 1.37349C8.94668 1.49349 9.20668 1.83349 9.20668 2.22682V5.98683C9.20668 6.14017 9.35335 6.2735 9.53335 6.2735L12.22 6.30682C12.56 6.30682 12.8733 6.49349 13.0267 6.79349C13.1733 7.08016 13.1533 7.42682 12.9733 7.70015Z"
                                    fill="#FFC634"></path>
                              </svg>
                            </span>
                            <span class="rent">Miễn thế chấp 
                              <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                  d="M2.06654 3.41201L3.30916 4.68289C3.50222 4.88033 3.81878 4.88389 4.01622 4.69084C4.21367 4.49778 4.21723 4.18122 4.02417 3.98378L2.73171 2.66192C4.08658 1.32458 5.9467 0.5 7.99999 0.5C12.1421 0.5 15.5 3.8579 15.5 8.00004C15.5 10.0709 14.6612 11.9454 13.3035 13.3031L11.9871 11.9806C11.7923 11.7849 11.4757 11.7842 11.28 11.979C11.0843 12.1738 11.0836 12.4904 11.2784 12.6861L12.5495 13.9631C11.2875 14.9276 9.71111 15.5001 7.99999 15.5001C3.85785 15.5001 0.5 12.1422 0.5 8.00004C0.5 6.27151 1.08422 4.68039 2.06654 3.41201Z"
                                  stroke="#5FCF86" stroke-linecap="round" stroke-linejoin="round"></path>
                                <path
                                  d="M10.3364 5.92398H10.1909C10.0678 5.21142 9.48584 4.66675 8.78821 4.66675H5.12098C4.65092 4.66675 4.26666 5.07712 4.26666 5.57703C4.26666 5.6106 4.27412 5.64045 4.27785 5.67402C4.27412 5.68895 4.26666 5.70387 4.26666 5.72252V9.93815C4.26666 10.7067 4.89341 11.3334 5.65819 11.3334H10.3364C11.1012 11.3334 11.728 10.7067 11.728 9.93815V7.31551C11.728 6.547 11.1012 5.92398 10.3364 5.92398ZM10.1275 9.09876C9.87009 9.09876 9.65745 8.88984 9.65745 8.6287C9.65745 8.36755 9.87009 8.1549 10.1275 8.1549C10.3887 8.1549 10.6013 8.36755 10.6013 8.6287C10.6013 8.88984 10.3887 9.09876 10.1275 9.09876ZM5.12098 5.22635H8.78821C9.17992 5.22635 9.50822 5.52107 9.61641 5.92398H5.12098C4.95683 5.92398 4.82626 5.76729 4.82626 5.57703C4.82626 5.38303 4.95683 5.22635 5.12098 5.22635Z"
                                  fill="#5FCF86"></path>
                              </svg>
                            </span>
                          </span>
                        </div>
                        <div class="desc-car">
                          <div class="desc-tag">
                            <span class="tag-item transmission">Số tự động</span>
                            <span class="tag-item non-mortgage">Giao xe tận nơi</span>
                          </div>
                          <div class="desc-name">
                            <p>${item.tenXe }</p>
                            <div class="wrap-svg">
                              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                  d="M8.65372 3.63C9.89372 3.29813 11.2114 3 12 3C12.7886 3 14.1063 3.29813 15.3463 3.63C16.6149 3.9675 17.8937 4.36687 18.6457 4.60875C18.9601 4.71096 19.2389 4.8984 19.4499 5.14954C19.661 5.40068 19.7958 5.70533 19.8389 6.0285C20.52 11.0651 18.9394 14.7979 17.0217 17.2672C16.2085 18.3236 15.2388 19.2538 14.1451 20.0269C13.767 20.2944 13.3663 20.5296 12.9474 20.73C12.6274 20.8785 12.2834 21 12 21C11.7166 21 11.3737 20.8785 11.0526 20.73C10.6337 20.5296 10.233 20.2944 9.85486 20.0269C8.76118 19.2538 7.79153 18.3236 6.97829 17.2672C5.06058 14.7979 3.48001 11.0651 4.16115 6.0285C4.20422 5.70533 4.33903 5.40068 4.55008 5.14954C4.76114 4.8984 5.03988 4.71096 5.35429 4.60875C6.44594 4.25641 7.54607 3.93007 8.65372 3.63Z"
                                  stroke="#5FCF86" stroke-width="1.5"></path>
                                <path d="M11.3333 12.6668L9.5 10.8335" stroke="#5FCF86" stroke-width="1.5"
                                  stroke-linecap="round" stroke-linejoin="round"></path>
                                <path d="M14.9997 9L11.333 12.6667" stroke="#5FCF86" stroke-width="1.5"
                                  stroke-linecap="round" stroke-linejoin="round"></path>
                              </svg>
                            </div>
                          </div>
                          <div class="desc-address-price">
                            <div class="address">
                              <div class="wrap-svg">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="17" viewBox="0 0 16 17" fill="none">
                                  <path
                                    d="M7.99999 1.83331C5.25999 1.83331 3.03333 4.05998 3.03333 6.79998C3.03333 10.06 7.15333 14.6733 7.32666 14.8666C7.49999 15.06 7.74666 15.1666 7.99999 15.1666C8.25332 15.1666 8.49999 15.06 8.67332 14.8666C9.11332 14.38 12.9667 9.98664 12.9667 6.79998C12.9667 4.05998 10.74 1.83331 7.99999 1.83331ZM7.99999 14.12C7.45999 13.4933 4.03333 9.46664 4.03333 6.79998C4.03333 4.61331 5.81332 2.83331 7.99999 2.83331C10.1867 2.83331 11.9667 4.61331 11.9667 6.79998C11.9667 9.05331 9.41332 12.52 7.99999 14.12Z"
                                    fill="#101840"></path>
                                  <path
                                    d="M7.99999 1.83331C5.25999 1.83331 3.03333 4.05998 3.03333 6.79998C3.03333 10.06 7.15333 14.6733 7.32666 14.8666C7.49999 15.06 7.74666 15.1666 7.99999 15.1666C8.25332 15.1666 8.49999 15.06 8.67332 14.8666C9.11332 14.38 12.9667 9.98664 12.9667 6.79998C12.9667 4.05998 10.74 1.83331 7.99999 1.83331ZM5.91999 6.79998C5.91999 5.65331 6.85332 4.71998 7.99999 4.71998C9.14666 4.71998 10.08 5.65331 10.08 6.79998C10.08 7.94664 9.14666 8.87998 7.99999 8.87998C6.85332 8.87998 5.91999 7.94664 5.91999 6.79998Z"
                                    fill="#101840"></path>
                                </svg>
                              </div>
                              <p>Quận 11, Hồ Chí Minh</p>
                            </div>
                          </div>
                          <div class="line-page"></div>
                          <div class="desc-info-price">
                            <div class="info">
                              <div class="wrap-svg">
                                <svg class="star-rating" width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path
                                    d="M14.6667 7.23331C14.7333 6.89998 14.4667 6.49998 14.1333 6.49998L10.3333 5.96665L8.59999 2.49998C8.53333 2.36665 8.46666 2.29998 8.33333 2.23331C7.99999 2.03331 7.59999 2.16665 7.39999 2.49998L5.73333 5.96665L1.93333 6.49998C1.73333 6.49998 1.59999 6.56665 1.53333 6.69998C1.26666 6.96665 1.26666 7.36665 1.53333 7.63331L4.26666 10.3L3.59999 14.1C3.59999 14.2333 3.59999 14.3666 3.66666 14.5C3.86666 14.8333 4.26666 14.9666 4.59999 14.7666L7.99999 12.9666L11.4 14.7666C11.4667 14.8333 11.6 14.8333 11.7333 14.8333C11.8 14.8333 11.8 14.8333 11.8667 14.8333C12.2 14.7666 12.4667 14.4333 12.4 14.0333L11.7333 10.2333L14.4667 7.56665C14.6 7.49998 14.6667 7.36665 14.6667 7.23331Z"
                                    fill="#FFC634"></path>
                                </svg>
                              </div>
                              <span class="info">4.6</span>
                              <span class="dot">•</span>
                              <div class="wrap-svg">
                                <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                  xmlns="http://www.w3.org/2000/svg" style="margin-right: 4px;">
                                  <g clip-path="url(#clip0_1087_41996)">
                                    <path
                                      d="M10.0625 1.21875C10.0625 1.06369 10.1887 0.9375 10.3438 0.9375H11.9688C12.1238 0.9375 12.25 1.06369 12.25 1.21875V2.89422H13.1875V1.21875C13.1875 0.546719 12.6408 0 11.9688 0H10.3438C9.67172 0 9.125 0.546719 9.125 1.21875V2.89422H10.0625V1.21875Z"
                                      fill="#5FCF86"></path>
                                    <path
                                      d="M5.69806 15.0623C5.49325 14.7441 5.375 14.3673 5.375 13.9686V6.94092H1.09375C0.490656 6.94092 0 7.43157 0 8.03467V13.9686C0 14.5186 0.408156 14.9749 0.9375 15.051V15.5309C0.9375 15.7898 1.14737 15.9997 1.40625 15.9997C1.66513 15.9997 1.875 15.7898 1.875 15.5309V15.0623H5.69806V15.0623ZM1.875 8.65967C1.875 8.40079 2.08487 8.19092 2.34375 8.19092C2.60263 8.19092 2.8125 8.40079 2.8125 8.65967V13.3436C2.8125 13.6024 2.60263 13.8123 2.34375 13.8123C2.08487 13.8123 1.875 13.6024 1.875 13.3436V8.65967Z"
                                      fill="#5FCF86"></path>
                                    <path
                                      d="M4.375 5.26562C4.375 5.11056 4.50119 4.98438 4.65625 4.98438H5.375V4.92547C5.375 4.61094 5.44687 4.31291 5.57506 4.04688H4.65625C3.98422 4.04688 3.4375 4.59359 3.4375 5.26562V6.00359H4.375V5.26562Z"
                                      fill="#5FCF86"></path>
                                    <path
                                      d="M14.9062 3.83154H7.40625C6.80316 3.83154 6.3125 4.3222 6.3125 4.92529V13.9686C6.3125 14.5186 6.72066 14.9749 7.25 15.051V15.5309C7.25 15.7898 7.45987 15.9997 7.71875 15.9997C7.97763 15.9997 8.1875 15.7898 8.1875 15.5309V15.0623H14.125V15.5309C14.125 15.7898 14.3349 15.9997 14.5938 15.9997C14.8526 15.9997 15.0625 15.7898 15.0625 15.5309V15.051C15.5918 14.9749 16 14.5186 16 13.9686V4.92529C16 4.32217 15.5093 3.83154 14.9062 3.83154ZM9.125 13.3436C9.125 13.6024 8.91513 13.8123 8.65625 13.8123C8.39737 13.8123 8.1875 13.6024 8.1875 13.3436V5.55029C8.1875 5.29142 8.39737 5.08154 8.65625 5.08154C8.91513 5.08154 9.125 5.29142 9.125 5.55029V13.3436ZM13.6562 13.8123C13.3974 13.8123 13.1875 13.6024 13.1875 13.3436V5.55029C13.1875 5.29142 13.3974 5.08154 13.6562 5.08154C13.9151 5.08154 14.125 5.29142 14.125 5.55029V13.3436C14.125 13.6024 13.9151 13.8123 13.6562 13.8123Z"
                                      fill="#5FCF86"></path>
                                  </g>
                                  <defs>
                                    <clippath id="clip0_1087_41996">
                                      <rect width="16" height="16" fill="white"></rect>
                                    </clippath>
                                  </defs>
                                </svg>
                              </div>
                                <span class="info">38 chuyến</span>
                            </div>
                            <div class="wrap-price">
                              <div class="price">
                                <span class="price-special">${item.giaThue / 1000}K</span>/ ngày
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                  </c:forEach>
                </div>
                <div
                  class="swiper-pagination pagi-related swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal swiper-pagination-bullets-dynamic"
                  style="width: 40px;"><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active swiper-pagination-bullet-active-main"
                    style="left: 16px;"></span><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active-next"
                    style="left: 16px;"></span><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active-next-next"
                    style="left: 16px;"></span><span class="swiper-pagination-bullet" style="left: 16px;"></span><span
                    class="swiper-pagination-bullet" style="left: 16px;"></span><span class="swiper-pagination-bullet"
                    style="left: 16px;"></span></div>
              </div>
              <div class="swiper-button-next related-car-next"></div>
              <div class="swiper-button-prev related-car-prev swiper-button-disabled"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="footer">
        <div class="m-container">
          <div class="footer-about">
            <div class="footer-info">
              <a href="" class="wrap-svg logo">
                <img loading="lazy" src="/images/logo-full.png">
              </a>
              <div class="phone-mail">
                <a class="item" href="">
                  <p class="main">1900 9217</p>
                  <p>Tổng đài hỗ trợ: 7AM - 10PM</p>
                </a>
                <a class="item" href="">
                  <p class="main">contact@mioto.vn</p>
                  <p>Gửi mail cho Mioto</p>
                </a></div>
              <div class="footer-contact">
                <a class="wrap-svg" target="_blank" href="">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                      d="M11.94 21.2501V14.1601H9.5V11.4301H11.94V9.43012C11.94 8.31012 12.22 7.47012 12.86 6.83012C13.5 6.19012 14.34 5.87012 15.42 5.87012C16.22 5.87012 16.94 5.91012 17.5 5.99012V8.39012H16.06C15.54 8.39012 15.18 8.51012 14.98 8.75012C14.82 8.99012 14.74 9.31012 14.74 9.71012V11.4301H17.51L17.15 14.1601H14.75V21.2501"
                      stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                    <path
                      d="M17.14 21.25H6.86C4.59 21.25 2.75 19.41 2.75 17.14V6.86C2.75 4.59 4.59 2.75 6.86 2.75H17.14C19.41 2.75 21.25 4.59 21.25 6.86V17.14C21.25 19.41 19.41 21.25 17.14 21.25Z"
                      stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                    </path>
                  </svg>
                </a>
                <a class="wrap-svg" target="_blank" href="">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                      d="M9.75999 12.69C8.27999 12.69 7.04999 13.92 7.04999 15.4C7.04999 16.88 8.27999 18.11 9.75999 18.11C11.24 18.11 12.47 16.88 12.47 15.4V2.75H15.65C15.65 2.79 15.65 2.79 15.65 2.82C15.65 3.07 15.65 3.33 15.72 3.58C15.94 4.77 16.66 5.82 17.67 6.47C18.36 6.94 19.19 7.19 20.05 7.19C20.05 7.19 20.05 7.19 20.09 7.19V10.33H20.05C18.39 10.33 16.87 9.82 15.64 8.92V15.39C15.64 18.64 13 21.24 9.74999 21.24C6.49999 21.24 3.89999 18.64 3.89999 15.39C3.89999 12.14 6.49999 9.5 9.74999 9.5V12.69H9.75999Z"
                      stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                    </path>
                  </svg>
                </a>
                <a class="wrap-svg" target="_blank" href="">
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                      d="M4.32 1.91992C3.00023 1.91992 1.92 3.00015 1.92 4.31992V19.6799C1.92 20.9997 3.00023 22.0799 4.32 22.0799H19.68C20.9998 22.0799 22.08 20.9997 22.08 19.6799V4.31992C22.08 3.00015 20.9998 1.91992 19.68 1.91992H4.32ZM4.32 2.87992H7.47656C5.81666 4.60701 4.8 6.87526 4.8 9.35992C4.8 11.9334 5.88871 14.2792 7.65562 16.0265C7.5914 15.9653 7.67454 16.0717 7.68281 16.2599C7.69134 16.4542 7.66209 16.7212 7.58344 16.9855C7.42613 17.5143 7.09711 18.0017 6.56812 18.178C6.46765 18.2115 6.38107 18.2773 6.32187 18.3651C6.26266 18.4529 6.23416 18.5578 6.24079 18.6635C6.24742 18.7692 6.28882 18.8698 6.35854 18.9495C6.42826 19.0292 6.52238 19.0836 6.62625 19.1043C7.95091 19.3692 8.8879 18.9704 9.57844 18.6534C10.269 18.3363 10.6421 18.123 11.34 18.4049L11.3456 18.4068C12.6523 18.9176 14.091 19.1999 15.6 19.1999C17.6147 19.1999 19.503 18.6965 21.12 17.819V19.6799C21.12 20.4808 20.4809 21.1199 19.68 21.1199H4.32C3.51913 21.1199 2.88 20.4808 2.88 19.6799V4.31992C2.88 3.51905 3.51913 2.87992 4.32 2.87992ZM8.87812 2.87992H19.68C20.4809 2.87992 21.12 3.51905 21.12 4.31992V16.7062C19.5489 17.67 17.6518 18.2399 15.6 18.2399C14.2129 18.2399 12.8945 17.9804 11.7 17.5143C10.6857 17.1046 9.85955 17.4677 9.17812 17.7805C8.80908 17.95 8.44498 18.0908 8.03344 18.1687C8.23704 17.8784 8.4112 17.5683 8.50312 17.2593C8.61173 16.8942 8.65588 16.5367 8.64187 16.2177C8.62791 15.8998 8.60013 15.6087 8.33156 15.3449L8.33062 15.344C6.72812 13.7593 5.76 11.6633 5.76 9.35992C5.76 6.80508 6.95336 4.50598 8.87812 2.87992ZM15.8325 7.19336C15.7054 7.19535 15.5842 7.2477 15.4956 7.33892C15.407 7.43014 15.3583 7.55278 15.36 7.67992V11.9999C15.3591 12.0635 15.3708 12.1267 15.3946 12.1857C15.4183 12.2447 15.4535 12.2984 15.4982 12.3437C15.5428 12.389 15.596 12.425 15.6547 12.4496C15.7134 12.4741 15.7764 12.4868 15.84 12.4868C15.9036 12.4868 15.9666 12.4741 16.0253 12.4496C16.084 12.425 16.1372 12.389 16.1818 12.3437C16.2265 12.2984 16.2617 12.2447 16.2854 12.1857C16.3091 12.1267 16.3209 12.0635 16.32 11.9999V7.67992C16.3209 7.6157 16.3089 7.55196 16.2847 7.49247C16.2605 7.43298 16.2246 7.37895 16.1791 7.33358C16.1337 7.28821 16.0796 7.25242 16.02 7.22833C15.9605 7.20425 15.8967 7.19236 15.8325 7.19336ZM8.64 7.67992C8.57639 7.67902 8.51324 7.69077 8.45422 7.71449C8.39519 7.73821 8.34147 7.77342 8.29617 7.81808C8.25088 7.86275 8.21491 7.91597 8.19036 7.97465C8.1658 8.03333 8.15316 8.09631 8.15316 8.15992C8.15316 8.22353 8.1658 8.28651 8.19036 8.3452C8.21491 8.40388 8.25088 8.4571 8.29617 8.50176C8.34147 8.54642 8.39519 8.58163 8.45422 8.60535C8.51324 8.62907 8.57639 8.64082 8.64 8.63992H10.1747L8.23312 11.7459C8.18782 11.8185 8.16277 11.9019 8.16057 11.9875C8.15837 12.0731 8.17909 12.1577 8.22059 12.2326C8.2621 12.3075 8.32287 12.3699 8.39661 12.4134C8.47036 12.4569 8.55439 12.4798 8.64 12.4799H11.04C11.1036 12.4808 11.1668 12.4691 11.2258 12.4454C11.2848 12.4216 11.3385 12.3864 11.3838 12.3418C11.4291 12.2971 11.4651 12.2439 11.4896 12.1852C11.5142 12.1265 11.5268 12.0635 11.5268 11.9999C11.5268 11.9363 11.5142 11.8733 11.4896 11.8146C11.4651 11.756 11.4291 11.7027 11.3838 11.6581C11.3385 11.6134 11.2848 11.5782 11.2258 11.5545C11.1668 11.5308 11.1036 11.519 11.04 11.5199H9.50531L11.4469 8.41398C11.4922 8.34134 11.5172 8.25791 11.5194 8.17232C11.5216 8.08674 11.5009 8.00213 11.4594 7.92725C11.4179 7.85237 11.3571 7.78995 11.2834 7.74647C11.2096 7.70298 11.1256 7.68 11.04 7.67992H8.64ZM14.3925 9.11336C14.3138 9.11475 14.2366 9.13549 14.1677 9.17374C14.0989 9.212 14.0406 9.2666 13.9978 9.33273C13.759 9.20158 13.4897 9.11992 13.2 9.11992C12.2778 9.11992 11.52 9.87777 11.52 10.7999C11.52 11.7221 12.2778 12.4799 13.2 12.4799C13.4894 12.4799 13.7582 12.398 13.9969 12.2671C14.0534 12.3546 14.1369 12.4213 14.2347 12.4572C14.3325 12.493 14.4393 12.4961 14.539 12.4659C14.6387 12.4358 14.7259 12.374 14.7874 12.2899C14.8489 12.2059 14.8814 12.1041 14.88 11.9999V10.7999V9.59992C14.8809 9.5357 14.8689 9.47196 14.8447 9.41247C14.8205 9.35298 14.7846 9.29895 14.7391 9.25358C14.6937 9.20821 14.6396 9.17242 14.58 9.14833C14.5205 9.12425 14.4567 9.11236 14.3925 9.11336ZM18.48 9.11992C17.5578 9.11992 16.8 9.87777 16.8 10.7999C16.8 11.7221 17.5578 12.4799 18.48 12.4799C19.4022 12.4799 20.16 11.7221 20.16 10.7999C20.16 9.87777 19.4022 9.11992 18.48 9.11992ZM13.2 10.0799C13.6033 10.0799 13.92 10.3966 13.92 10.7999C13.92 11.2033 13.6033 11.5199 13.2 11.5199C12.7967 11.5199 12.48 11.2033 12.48 10.7999C12.48 10.3966 12.7967 10.0799 13.2 10.0799ZM18.48 10.0799C18.8833 10.0799 19.2 10.3966 19.2 10.7999C19.2 11.2033 18.8833 11.5199 18.48 11.5199C18.0767 11.5199 17.76 11.2033 17.76 10.7999C17.76 10.3966 18.0767 10.0799 18.48 10.0799Z"
                      fill="black">
                    </path>
                  </svg>
                </a>
              </div>
            </div>
            <div class="footer-path four-item">
              <div class="item">
                <p class="main">Chính Sách</p>
                <div class="item-sub">
                  <a href="">Chính sách và quy định</a>
                  <a href="">Quy chế hoạt động</a>
                  <a href="">Bảo mật thông tin</a>
                  <a href="">Giải quyết tranh chấp</a>
                  </div>
              </div>
              <div class="item">
                <p class="main">Tìm Hiểu Thêm</p>
                <div class="item-sub">
                  <a href="">Hướng dẫn chung</a>
                  <a href="">Hướng dẫn đặt xe</a>
                  <a href="">Hướng dẫn thanh toán</a>
                  <a href="">Hỏi và trả lời</a>
                  </div>
              </div>
              <div class="item">
                <p class="main empty"> </p>
                <div class="item-sub">
                  <a href="">Về Mioto</a>
                  <a href="">Mioto Blog</a>
                  <a href="">Tuyển dụng</a>
                </div>
              </div>
              <div class="item unset">
                <p class="main">Đối Tác</p>
                <div class="item-sub">
                  <a href="">Đăng ký chủ xe Mioto</a>
                  <a href="">Đăng ký GPS MITRACK 4G</a>
                </div>
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
                <p class="item">Địa chỉ: Văn phòng 02, Tầng 08, Tòa nhà Pearl Plaza, Số 561A Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam.</p>
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
              <div class="phone-mail">
                <a class="logo-government" target="_blank" href="http://online.gov.vn/">
                  <img loading="lazy" src="/images/bocongthuong.png">
                </a>
              </div>
            </div>
            <div class="footer-path d-flex-align-center two-item">
              <div class="item">
                <div class="item-sub">
                  <p>Phương thức thanh toán</p>
                </div>
              </div>
              <div class="item">
                <div class="payment">
                  <img loading="lazy"
                    src="data:image/png;base64,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">
                  <img loading="lazy"
                    src="/images/vnpay.780689d6.png">
                  <img loading="lazy"
                    src="/images/alepay.bb769e5d.png">
                  <img loading="lazy"
                    src="data:image/png;base64,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">
                  <img loading="lazy"
                    src="data:image/png;base64,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">
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
  
  <%-- modal calendar --%>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		        <div class="modal-header">
		            <h4 class="modal-title" id="exampleModalLabel">Thời gian</h4>
		            <button id="closeModal" type="button" class="btn-close hidden" data-bs-dismiss="modal" aria-label="Close"></button>
		        </div>
		        <div class="modal-body">
		            <div id="calendar">
		
		            </div>
		        </div>
		        <div class="modal-footer">
		            <div id="startInModal"></div>
		             - 
		            <div id="endInModal"></div>
		            <div>Số ngày thuê: <span id="daysDifference"></span></div>
		            <button id="continue" type="button" class="btn btn-primary">Tiếp tục</button>
		        </div>
		    </div>
		</div>
	</div>
	
</body>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="https://npmcdn.com/react@15.3.0/dist/react.min.js"></script>
	<script src="https://npmcdn.com/react-dom@15.3.0/dist/react-dom.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.14.1/moment-with-locales.min.js"></script>
	<script src="calendar/script.js"></script>
</html>