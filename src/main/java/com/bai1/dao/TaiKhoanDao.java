package com.bai1.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.bai1.entity.taikhoan;

public interface TaiKhoanDao extends JpaRepository<taikhoan, Integer> {
@Query("SELECT t FROM taikhoan t WHERE t.username = ?1 AND t.password = ?2")
taikhoan getByUserNameAndPassword(String user,String pass);
}
