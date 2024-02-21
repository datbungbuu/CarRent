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
</head>
<body>
    <h1>Hợp đồng Cho Thuê Xe</h1>
    <p><strong>Ngày lập:</strong> ${createDate }</p>
    <h2>Thông tin các bên</h2>
    <table>
        <tr>
            <th>Bên A (Bên cho thuê)</th>
            <th>Bên B (Bên thuê)</th>
        </tr>
        <tr>
            <td>
                <p>Tên: [Tên của bên cho thuê]</p>
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
    <h2>Nội dung hợp đồng</h2>
    <h3>Điều khoản</h3>
    <pre style="font-size: 20px;">Quy định khác:
		◦ Sử dụng xe đúng mục đích.
		◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.
		◦ Không sử dụng xe thuê để cầm cố, thế chấp.
		◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.
		◦ Không chở hàng quốc cấm dễ cháy nổ.
		◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.
		◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.
		Trân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !
	</pre>
    <h2>Chữ ký</h2>
    <div class="signature">
        <p><strong>Bên A (Bên cho thuê):</strong></p>
        <p><img src="/images/chu_ky_ben_a.png" alt="Chữ ký bên A"></p>
    </div>
    <div class="signature">
        <p><strong>Bên B (Bên thuê):</strong></p>
        <p><img src="/images/chu_ky_ben_b.png" alt="Chữ ký bên B"></p>
    </div>
    <a href="/contract/confirm">Đồng ý</a>
</body>
</html>
