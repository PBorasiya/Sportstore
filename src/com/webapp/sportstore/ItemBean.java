package com.webapp.sportstore;

import java.io.Serializable;

public class ItemBean implements Serializable {

	private int productCode;
	private double productprice;
	private String productName;
	private String productDisc;
	private String imagePath;
	private double totalCost;

	public ItemBean() {
		
	}

	public ItemBean(int productCode, double productprice, String productName, String productDisc, String imagePath) {
		super();
		this.productCode = productCode;
		this.productprice = productprice;
		this.productName = productName;
		this.productDisc = productDisc;
		this.imagePath = imagePath;
	}
	public int getProductCode() {
		return productCode;
	}


	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}


	public double getProductprice() {
		return productprice;
	}


	public void setProductprice(double productprice) {
		this.productprice = productprice;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductDisc() {
		return productDisc;
	}


	public void setProductDisc(String productDisc) {
		this.productDisc = productDisc;
	}


	public String getImagePath() {
		return imagePath;
	}


	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public double getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	
}
