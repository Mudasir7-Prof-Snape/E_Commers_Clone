package com.ecommers.customer;

import com.ecommers.dbhandler.DataFetcher;
public class Validator {
	public static boolean isValid(String uname,String pass) {
		String dbpass=DataFetcher.fetchPassword(uname);
		if(pass.equals(dbpass)) return true;
		return false;
	}
}
