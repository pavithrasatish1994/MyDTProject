package com.niit.womensworld_back.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Users {
@Id
private int id;
private String pwd;
private String role;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}

}
