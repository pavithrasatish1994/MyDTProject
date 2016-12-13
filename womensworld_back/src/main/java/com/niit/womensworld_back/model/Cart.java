package com.niit.womensworld_back.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {
 @Id
 private int id;
 private int pid;
 private String pname;
 private String user_name;
 private String price;
 private String quantity;
 private String total_amount;
 

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}
public String getTotal_amount() {
	return total_amount;
}
public void setTotal_amount(String total_amount) {
	this.total_amount = total_amount;
}

}
