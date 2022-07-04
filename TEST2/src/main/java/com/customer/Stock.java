package com.customer;

public class Stock {
	
	private String Itemcode;
	private String Name;
	private String Quantity;
	private String Description;
	private String Price;
	
	//create overloaded constructor
	public Stock(String itemcode, String name, String quantity, String description, String price) {
		super();
		Itemcode = itemcode;
		Name = name;
		Quantity = quantity;
		Description = description;
		Price = price;
	}

//create getters
	public String getItemcode() {
		return Itemcode;
	}


	public String getName() {
		return Name;
	}


	public String getQuantity() {
		return Quantity;
	}


	public String getDescription() {
		return Description;
	}


	public String getPrice() {
		return Price;
	}


}
