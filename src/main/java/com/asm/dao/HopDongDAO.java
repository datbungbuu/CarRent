package com.asm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.asm.entity.HopDong;

public interface HopDongDAO extends JpaRepository<HopDong, Integer> {
	
	List<HopDong> findByNhanVienIsNull();
	List<HopDong> findByNhanVienIsNotNull();
}
