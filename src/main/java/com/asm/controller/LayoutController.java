package com.asm.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.HangXeDAO;
import com.asm.dao.LoaiXeDAO;
import com.asm.dao.TruSoDAO;
import com.asm.dao.XeDAO;
import com.asm.entity.HangXe;
import com.asm.entity.LoaiXe;
import com.asm.entity.TruSo;
import com.asm.entity.Xe;

@Controller
public class LayoutController {
//	@Autowired
//	CarDao xedao;

	@Autowired
	XeDAO xedao;

	@Autowired
	HangXeDAO hangxedao;

	@Autowired
	LoaiXeDAO loaixedao;

	@Autowired
	TruSoDAO trusodao;

	SimpleDateFormat sm = new SimpleDateFormat("MM/dd/yyyy");

	public void ClearForm(@ModelAttribute("carmodel") Xe car) {
		car.setBienSo("");
		car.setNgayDangKiem(null);
		car.setTenXe("");
		car.setGiaThue(null);
		car.setMoTa("");
	}

//	hàng xe
	@ModelAttribute("hangXes")
	public List<HangXe> gethangxe1() {
		List<HangXe> listhangxe = hangxedao.findAll();
		return listhangxe;
	}

//	loại xe
	@ModelAttribute("loaiXes")
	public List<LoaiXe> getloaixe1() {
		List<LoaiXe> listloaixe = loaixedao.findAll();
		return listloaixe;
	}

//	trụ sở 
	@ModelAttribute("truSos")
	public List<TruSo> gettrusos() {
		List<TruSo> listtruso = trusodao.findAll();
		return listtruso;
	}

	@RequestMapping("car/home")
	public String homepage() {

		return "home";
	}

	@GetMapping("car/list")
	public String listCar(Model model) {
		List<Xe> cars = xedao.findAll();
		model.addAttribute("lscar", cars);
		return "listcar";
	}

	@GetMapping("car/add")
	public String indexadd(Model model, @ModelAttribute("carmodel") Xe car) {

		return "addcar";
	}

//	@GetMapping("/car/sort")
//	public String sortPrice(Model model , @RequestParam("field") Optional<String> field) {
//		Sort sort = Sort.by(Direction.DESC , field.orElse("giaXe"));
//		model.addAttribute("field" , field.orElse("giaXe").substring(0,1).toUpperCase() + field.orElse("giaXe").substring(1 , field.orElse("giaXe").length() ));
//		model.addAttribute("lscar" , xedao.findAll(sort));
//		
//		return "listcar";
//	}
//	
	@GetMapping("/car/edit/{bienSo}")
	public String editCar(Model model, @PathVariable("bienSo") String bienSo, @ModelAttribute("carmodel") Xe car) {
		if (xedao.findById(car.getBienSo()).isEmpty()) {
			return "redirect: /listcar";
		} else {
			Xe cars = xedao.findById(bienSo).get();
			car.setBienSo(cars.getBienSo());
			car.setTenXe(cars.getTenXe());
			car.setHangXe(cars.getHangXe());
			car.setLoaiXe(cars.getLoaiXe());
			car.setGiaThue(cars.getGiaThue());
			car.setSoCho(cars.getSoCho());
			car.setNgayDangKiem(cars.getNgayDangKiem());
			car.setTruyenDong(cars.getTruyenDong());
			car.setNhienLieu(cars.getNhienLieu());
			car.setNlTieuHao(cars.getNlTieuHao());
			car.setTienNghi(cars.getTienNghi());
			car.setTruSo(cars.getTruSo());
			car.setTrangThai(cars.getTrangThai());
			car.setImgDauXe(cars.getImgDauXe());
			car.setImgSuonTXe(cars.getImgSuonTXe());
			car.setImgSuonPXe(cars.getImgSuonPXe());
			car.setImgDuoiXe(cars.getImgDuoiXe());
			car.setMoTa(cars.getMoTa());

		}

		return "addcar";
	}

	@PostMapping("/car/create")
	public String addCar(Model model, @ModelAttribute("carmodel") Xe car) {

		if (!xedao.existsById(car.getBienSo())) {
			xedao.save(car);
			ClearForm(car);
			System.out.println("thêm thành công");
		} else {
			throw new RuntimeException("mã này đã tồn tại");
		}

		return "addcar";
	}

//	
	@PostMapping("/car/update")
	public String updateCar(Model model, @ModelAttribute("carmodel") Xe car) {

		if (xedao.existsById(car.getBienSo())) {
			xedao.save(car);
			ClearForm(car);
			System.out.println("update thành công");
		} else {
			throw new RuntimeException("update không thành công");
		}

		return "addcar";
	}

//	@PostMapping("/car/delete")
//	public String deleteCar(Model model, @ModelAttribute("carmodel") Xe car ) {
//		
//		if(xedao.existsById(car.getBienSo())){
//			car.setNgayDangKiem(null);
//			xedao.deleteById(car.getBienSo());
//			//ClearForm(car);
//			System.out.println("xoá thành công");
//		}else {
////			throw new RuntimeException("id này không tồn tại");
//			System.out.println("id này không tồn tại");
//		}
//		
//		return "addcar";
//	}

}
