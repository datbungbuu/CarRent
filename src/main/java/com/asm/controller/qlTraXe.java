package com.asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.HopDongDAO;
import com.asm.dao.lsTraXeDAO;
import com.asm.entity.HopDong;
import com.asm.entity.lsTraXe;

@Controller
public class qlTraXe {
	
	@Autowired
	lsTraXeDAO lsDAO;
	
	@Autowired
	HopDongDAO hopDongDAO;

	@RequestMapping("/car/qlTraXe")
	public String qllsTraXe(Model model, @ModelAttribute("traxemodel")lsTraXe tx) {
		
		return "TraXe/qlTraXe";
	}
	
	@RequestMapping("/car/qlTraXe/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		HopDong hopdong = hopDongDAO.findById(id).get();
		model.addAttribute("hd", hopdong);
		return "TraXe/qlTraXe";
	}
	
	@RequestMapping("/car/listTraXe")
	public String listTraXe(Model model) {
		List<lsTraXe> lsTX = lsDAO.findAll();
		model.addAttribute("dsTraXe", lsTX);
		return "TraXe/listTraXe";
	}
}
