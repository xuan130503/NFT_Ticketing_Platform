package com.bai1.entity;

import jakarta.persistence.Entity;
 
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class taikhoan {
	@Id
	String username;
	String password;
	Boolean role;
}
