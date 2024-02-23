package com.asm.helper;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.asm.entity.GiaoXe;
import com.asm.entity.lsTraXe;

public class excelHelper {
	
	 public static void exportlsTraXe(List<lsTraXe> lsTX) throws IOException {
		 	// Tạo Workbook
	        Workbook workbook = new XSSFWorkbook();

	        // Tạo Sheet
	        Sheet sheet = workbook.createSheet("Lịch Sử Trả Xe");
	        
	        // Tạo header
	        Row headerRow = sheet.createRow(0);
	        headerRow.createCell(0).setCellValue("Mã Hợp Đồng");
	        headerRow.createCell(1).setCellValue("Ngày Nhận Xe");
	        headerRow.createCell(2).setCellValue("Nội Dung Bàn Giao");
	        headerRow.createCell(3).setCellValue("Tình Trạng Xe");
	        headerRow.createCell(4).setCellValue("Ngoại Thất Xe");
	        headerRow.createCell(5).setCellValue("Nội Thất Xe");
	        headerRow.createCell(6).setCellValue("Động Cơ Xe");
	        headerRow.createCell(7).setCellValue("Giấy Tờ Bàn Giao");
	        headerRow.createCell(8).setCellValue("Hình Ảnh 1");
	        headerRow.createCell(9).setCellValue("Hình Ảnh 2");
	        headerRow.createCell(10).setCellValue("Hình Ảnh 3");
	        headerRow.createCell(11).setCellValue("Hình Ảnh 4");	        
	        headerRow.createCell(12).setCellValue("Nhân Viên");
	        
	        // Thêm dữ liệu vào Sheet
	        int i = 1;
	        for (lsTraXe ls : lsTX) {
	            Row row = sheet.createRow(i);
	            row.createCell(0).setCellValue(ls.getHd().getMaHopDong());
	            row.createCell(1).setCellValue(ls.getNgayNhanxe());
	            row.createCell(2).setCellValue(ls.getNoiDung());
	            row.createCell(3).setCellValue(ls.getTinhTrang());
	            row.createCell(4).setCellValue(ls.getNgoaiThat());
	            row.createCell(5).setCellValue(ls.getNoiThat());
	            row.createCell(6).setCellValue(ls.getDongCo());
	            row.createCell(7).setCellValue(ls.getGiayToxe());
	            row.createCell(8).setCellValue(ls.getImgDauXe());
	            row.createCell(9).setCellValue(ls.getImgDuoiXe());
	            row.createCell(10).setCellValue(ls.getImgSuonPXe());
	            row.createCell(11).setCellValue(ls.getImgSuonTXe());	        
	            row.createCell(12).setCellValue(ls.getHd().getNhanVien().getMaNV());
	            i++;
	        }
	        
	        // Ghi file Excel	        
	        FileOutputStream traxefile = new FileOutputStream("lichsutraxe.xlsx");
	        workbook.write(traxefile);
	        traxefile.close();
	 }
	 
	 public static void exportlsGiaoXe(List<GiaoXe> lsGX) throws IOException {
		 	// Tạo Workbook
	        Workbook workbook = new XSSFWorkbook();

	        // Tạo Sheet
	        Sheet sheet = workbook.createSheet("Lịch Sử Giao Xe");
	        
	        // Tạo header
	        Row headerRow = sheet.createRow(0);
	        headerRow.createCell(0).setCellValue("Mã Hợp Đồng");
	        headerRow.createCell(1).setCellValue("Ngày Nhận Xe");
	        headerRow.createCell(2).setCellValue("Nội Dung Bàn Giao");
	        headerRow.createCell(3).setCellValue("Tình Trạng Xe");
	        headerRow.createCell(4).setCellValue("Ngoại Thất Xe");
	        headerRow.createCell(5).setCellValue("Nội Thất Xe");
	        headerRow.createCell(6).setCellValue("Động Cơ Xe");
	        headerRow.createCell(7).setCellValue("Giấy Tờ Bàn Giao");
	        headerRow.createCell(8).setCellValue("Hình Ảnh 1");
	        headerRow.createCell(9).setCellValue("Hình Ảnh 2");
	        headerRow.createCell(10).setCellValue("Hình Ảnh 3");
	        headerRow.createCell(11).setCellValue("Hình Ảnh 4");	        
	        headerRow.createCell(12).setCellValue("Nhân Viên");
	        
	        // Thêm dữ liệu vào Sheet
	        int i = 1;
	        for (GiaoXe ls : lsGX) {
	            Row row = sheet.createRow(i);
	            row.createCell(0).setCellValue(ls.getHopDong().getMaHopDong());
	            row.createCell(1).setCellValue(ls.getNgayGiaoXe());
	            row.createCell(2).setCellValue(ls.getNoiDung());
	            row.createCell(3).setCellValue(ls.getTinhTrang());
	            row.createCell(4).setCellValue(ls.getNgoaiThat());
	            row.createCell(5).setCellValue(ls.getNoiThat());
	            row.createCell(6).setCellValue(ls.getDongCo());
	            row.createCell(7).setCellValue(ls.getGiayToXe());
	            row.createCell(8).setCellValue(ls.getImgDauXe());
	            row.createCell(9).setCellValue(ls.getImgDuoiXe());
	            row.createCell(10).setCellValue(ls.getImgSuonPXe());
	            row.createCell(11).setCellValue(ls.getImgSuonTXe());	        
	            row.createCell(12).setCellValue(ls.getHopDong().getNhanVien().getMaNV());
	            i++;
	        }
	        
	        // Ghi file Excel	        
	        FileOutputStream giaoxefile = new FileOutputStream("lichsugiaoxe.xlsx");
	        workbook.write(giaoxefile);
	        giaoxefile.close();
	 }
}
