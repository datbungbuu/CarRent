package com.asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.NhanXeDAO;
import com.asm.entity.NhanXe;
import com.asm.service.SessionService;



@Controller
public class GiaoXeController {
	
	@Autowired
	SessionService session;
	@Autowired
	NhanXeDAO NXDAO;
	
	@RequestMapping("/car/giaoxe")
	public String index(Model model) {
		NhanXe item = new NhanXe();
		model.addAttribute("item", item);
		List<NhanXe> items = NXDAO.findAll();
		model.addAttribute("items", items);
		return "GiaoXe";
	}
	@RequestMapping("/car/giaoxeedit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {	
		NhanXe item = NXDAO.findById(id).get();
		model.addAttribute("items", item);
		return "GiaoXe";
	}
	@RequestMapping("/category/update")
	public String update(Model model, NhanXe item) {
		NXDAO.save(item);
		return "redirect:/category/edit/" + item.getMaGiaoXe();

	}

}
