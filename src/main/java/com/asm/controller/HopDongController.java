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
	public String clickThue(RedirectAttributes redirectAttributes, @ModelAttribute("contract") HopDong hopDong) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (sdf.format(hopDong.getNgayKetThuc()).equals(sdf.format(new Date()))) {
			redirectAttributes.addAttribute("uNeedLogin", "Chọn lại ngày");
			return "/detail?id=" + hopDong.getXe().getBienSo();
		}
		if (session.getAttribute("currentAccount")==null) {
			redirectAttributes.addAttribute("uNeedLogin", "Hãy đăng nhập");
			return "/detail?id=" + hopDong.getXe().getBienSo();
		}
		hopDongDAO.save(hopDong);
		return "success";
	}

}
