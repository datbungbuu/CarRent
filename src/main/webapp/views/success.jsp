<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hợp đồng Cho Thuê Xe</title>
    <style>
	   	
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            font-size: 24px;
            margin-top: 0;
        }
        p {
            margin-bottom: 10px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        td, th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            text-align: left;
        }
        .signature {
            text-align: center;
        }
    </style>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
</head>

<body class="container">
	<div class="mt-5 mb-5 d-flex justify-content-evenly">
		<div>
			<a class="btn btn-primary" href="/contract/confirm">Đồng ý</a>
		</div>
		<div>
			<a class="btn btn-primary" href="/car/index">Về trang chủ</a>
		</div>
	</div>
	<div id="source-html">
	<h3 class="text-center">CỘNG HÒA XÃ HÔI CHỦ NGHĨA VIỆT NAM</h3>
	<h3 class="text-center">Độc lập – Tự do – Hạnh phúc</h3>
	<h3 class="text-center">----------o0o-----------</h3>
	<br>
    <h3 class="text-center">Hợp đồng Cho Thuê Xe</h3>
    <br>
    <p>- Căn cứ Luật Thương mại năm 2005 và Bộ luật dân sự năm 2005 được Quốc hội nước Cộng hoà xã hội Chủ nghĩa Việt Nam thông qua ngày 14 tháng 06 năm 2005;</p>
    <p>- Căn  cứ vào khả năng và nhu cầu của hai bên</p>
    <br>
    <em>Hôm nay, ngày 16 tháng 10 năm 2017, tại Công ty TNHH TMDV và XD Đức Hà, chúng tôi gồm: </em>
    
    <p><strong>Ngày lập:</strong> ${createDate }</p>
    <h3>Thông tin các bên</h3>
    <table class="table table-bordered">
        <tr>
            <th>Bên A (Bên cho thuê)</th>
            <th>Bên B (Bên thuê)</th>
        </tr>
        <tr>
            <td>
                <p>Tên: CarRent Company</p>
                <p>Địa chỉ: ${addressA }</p>
                <p>Số điện thoại: ${phoneNumberA }</p>
                <p>Email: ${emailAddressA }</p>
            </td>
            <td>
                <p>Tên: ${nameB }</p>
                <p>Địa chỉ: ${addressB }</p>
                <p>Số điện thoại: ${phoneNumberB }</p>
                <p>Email: ${emailAddressB }</p>
            </td>
        </tr>
        <tr>
            <th>Thông tin xe</th>
            <th>Thông tin hợp đồng</th>
        </tr>
        <tr>
            <td>
                <p>Tên xe: ${nameCar }</p>
                <p>Biển số: ${licensePlates }</p>
                <p>Giá thuê/ngày:${pricePerDay }VND/Ngày </p>
            </td>
            <td>
                <p>Ngày bắt đầu: ${startDate }</p>
                <p>Ngày kết thúc: ${endDate }</p>
                <p>Giá thuê: ${totalPrice }kVND</p>
            </td>
        </tr>
    </table>
    <div>
    <h3>NGHĨA VỤ CỦA CÁC BÊN</h3><h3>Bên A: </h3>
    	<p>- Đảm bảo đúng loại xe, chất lượng xe và đầy đủ giấy tờ theo quy định của pháp luật. Xe hoạt động bình thường, có đầy đủ các chi tiết máy, có 01 lốp sơ cua, kích nâng xe, đồ tháo lốp.</p>
		<p>- Chịu trách nhiệm pháp lý về nguồn gốc và quyền sở hữu của xe.</p>
		<p>- Giao xe và toàn bộ các giấy tờ liên quan đến xe ngay sau khi Hợp đồng có hiệu lực.</p>
		<p>- Xuất hóa đơn GTGT trực tiếp cho Bên A ngay khi ký kết hợp đồng.</p>
	<h3>NGHĨA VỤ CỦA CÁC BÊN</h3><h3>Bên B: </h3>
		<p>- Thanh toán ngay tiền cho Bên B khi Hợp đồng có hiệu lực.</p>
		<p>- Kiểm tra xe trước khi nhận và rửa xe trước khi trả.</p>
		<p>- Mỗi ngày xe nghỉ để sửa chữa hay vì lý do nào khác mà xe không hoạt động hoạt động kinh doanh được (do lỗi Bên A) thì Bên A phải chịu trả tiền cho Bên B với số tiền như đang thuê xe sử dụng bình thường.</p>
		<p>- Tất cả các bồi thường trên không liên quan đến việc Bên B làm bảo hiểm.</p>
		<p>- Chịu tất cả các chi phí phát sinh ngoài thỏa thuận trong hợp đồng.</p>
		<p>- Chịu toàn bộ chi phí xăng khi sử dụng xe.</p>
	</div>
	<div class="text-center row">
    	<div class="col">
	    	<h3>ĐẠI DIỆN BÊN A</h3>
	    	<br>
	    	<br>
	    	<br>
    	</div>
		<div class="col">
	    	<h3>ĐẠI DIỆN BÊN B</h3>
	    	<br>
	    	<br>
	    	<br>
    	</div>
	</div>
    </div>
    
    <br>
    <button id="submit" onclick="exportHTML()">Export to Word</button>
</body>
<script>
    function exportHTML(){
       
       var sourceHTML = document.getElementById("source-html").innerHTML;
       
       var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
       var fileDownload = document.createElement("a");
       document.body.appendChild(fileDownload);
       fileDownload.href = source;
       fileDownload.download = 'document.doc';
       fileDownload.click();
       document.body.removeChild(fileDownload);
    }
</script>
</html>
