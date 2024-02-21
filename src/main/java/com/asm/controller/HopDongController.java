package com.asm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.asm.dao.HopDongDAO;
import com.asm.entity.HopDong;
import com.asm.service.SessionService;

@Controller
@RequestMapping("contract")
public class HopDongController {

	@Autowired
	HopDongDAO hopDongDAO;
	
	@Autowired
	SessionService session;

	@RequestMapping("rent")
	public String clickThue(Model model, RedirectAttributes redirectAttributes, @ModelAttribute("contract") HopDong hopDong) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (session.getAttribute("currentAccount")==null) {
			redirectAttributes.addFlashAttribute("uNeedLogin", "Hãy đăng nhập");
			return "redirect:/detail?id=" + hopDong.getXe().getBienSo();
		}
		if (sdf.format(hopDong.getNgayKetThuc()).equals(sdf.format(new Date()))) {
			redirectAttributes.addFlashAttribute("uNeedLogin", "Chọn lại ngày");
			return "redirect:/detail?id=" + hopDong.getXe().getBienSo();
		}
		
		SimpleDateFormat sdfdmy = new SimpleDateFormat("dd/MM/yyyy");
		model.addAttribute("createDate", sdfdmy.format(hopDong.getNgayTao()));
		
		model.addAttribute("addressA", hopDong.getXe().getTruSo().getDuong() + ", " + hopDong.getXe().getTruSo().getXa() + ", " + hopDong.getXe().getTruSo().getHuyen() + ", " + hopDong.getXe().getTruSo().getTinh());
		model.addAttribute("phoneNumberA", hopDong.getXe().getTruSo().getSoDienThoai());
		model.addAttribute("emailAddressA", hopDong.getXe().getTruSo().getEmail());
		
		model.addAttribute("addressB", hopDong.getKhachHang().getDuong() + hopDong.getKhachHang().getXa() + hopDong.getKhachHang().getHuyen() + hopDong.getKhachHang().getTinh());
		model.addAttribute("phoneNumberB", hopDong.getKhachHang().getSoDienThoai());
		model.addAttribute("emailAddressB", hopDong.getKhachHang().getEmail());
		model.addAttribute("nameB", hopDong.getKhachHang().getTenKH());
		
		model.addAttribute("nameCar", hopDong.getXe().getTenXe());
		model.addAttribute("licensePlates", hopDong.getXe().getBienSo());
		model.addAttribute("pricePerDay", hopDong.getGiaThue());
		model.addAttribute("startDate", sdfdmy.format(hopDong.getNgayBatDau()));
		model.addAttribute("endDate", sdfdmy.format(hopDong.getNgayKetThuc()));
		model.addAttribute("totalPrice", hopDong.getTongTien()/1000);
		session.setAttribute("hopDong", hopDong);
		return "success";
	}
	
	@RequestMapping("confirm")
	public String confirmRent(Model model) {
		HopDong hopDong = session.getAttribute("hopDong");
		hopDongDAO.save(hopDong);
		return "redirect:/car/index";
	}

}
