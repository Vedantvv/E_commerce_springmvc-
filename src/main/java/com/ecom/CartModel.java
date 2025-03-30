package com.ecom;

public class CartModel {

	private int id;
	private RegModel rm;
	
	private ProductModel product;
	
	private int quantity;
	
	private Double totalPrice;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public RegModel getRm() {
		return rm;
	}

	public void setRm(RegModel rm) {
		this.rm = rm;
	}

	public ProductModel getProduct() {
		return product;
	}

	public void setProduct(ProductModel product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
