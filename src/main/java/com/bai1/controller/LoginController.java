package com.bai1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bai1.dao.TaiKhoanDao;
import com.bai1.entity.taikhoan;

@Controller
public class LoginController {
	@Autowired
	TaiKhoanDao tkDao;

	@RequestMapping("/login/form")
	public String view() {
		return "login";
	}

	@PostMapping("/login/check")
	public String save(Model model,taikhoan account,@RequestParam("username") String user,@RequestParam("password") String pass) {
		taikhoan tk = tkDao.getByUserNameAndPassword(user, pass);
		if(tk == null) {
			model.addAttribute("message","Sai mật khẩu hoặc tài khoản !");
			return"login";
		}
		model.addAttribute("message","Thành Công");
		return "/form_success/success";
	}
}
