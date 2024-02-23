package com.asm.entity;

import java.io.Serializable;
import java.util.Date;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "nhanxe")
@Data
@NoArgsConstructor
public class NhanXe implements Serializable{
	// mã nhận xe, tự tăng
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "magiaoxe")
	private Integer maGiaoXe;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaygiaoxe", nullable = false)
	private Date ngayGiaoXe;
	
	@Column(name = "ngoaithat", nullable = false)
	private String ngoaiThat;
	
	@Column(name = "noithat", nullable = false)
	private String noiThat;
	
	@Column(name = "dongco", nullable = false)
	private String dongCo;
	
	@Column(name = "giaytoxe", nullable = false)
	private String giayToXe;
	
	@Column(name = "tinhtrang", nullable = false)
	private String tinhTrang;
	
	@Column(name = "noidung", nullable = false)
	private String noiDung;
	
	@OneToOne 
	@JoinColumn(name = "mahd")
	private HopDong hopDong;

}
