package com.ecommers.product;
import java.util.*;
public class Cart {
	private static List<Product> items;
	public Cart() {
		this.items=new ArrayList<>();
	}
	public static void addItem(Product p) {
		items.add(p);
	}
	public static List<Product> getItems(){
		return items;
	}
	public static double getTotal() {
		double total=0.0;
		for(Product p:items) {
			total+=p.getPprice();//in product class.
		}
		return total;
	}
}
