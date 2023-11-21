package com.bai1.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ve {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String tensukien;
	String tenve;
	String mota;
	Double giave;
	Date thoigiansukien;
	String diachi;
	String hinh;
	Integer soluong;
}
