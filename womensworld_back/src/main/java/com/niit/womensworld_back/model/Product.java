package com.niit.womensworld_back.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;



@Entity
@Component
public class Product{


@Id
@GeneratedValue
public int id;
public String name;
public String price;
public String category_id;
public String supplier_id;
public String status;
public String offer;

@Transient
private MultipartFile img;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getCategory_id() {
	return category_id;
}
public void setCategory_id(String category_id) {
	this.category_id = category_id;
}
public String getSupplier_id() {
	return supplier_id;
}
public void setSupplier_id(String supplier_id) {
	this.supplier_id = supplier_id;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getOffer() {
	return offer;
}
public void setOffer(String offer) {
	this.offer = offer;
}
public MultipartFile getImg() {
	return img;
}
public void setImg(MultipartFile img) {
	this.img = img;
}
}
