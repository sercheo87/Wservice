/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 *
 * @author sercheo
 */
@WebService(serviceName = "PaperVIsions")
public class PaperVIsions {

	/**
	 * This is a sample web service operation
	 */
	@WebMethod(operationName = "hello")
	public String hello(@WebParam(name = "name") String txt) {
		return "Hello " + txt + " !";
	}

	/**
	 * Web service operation
	 */
	@WebMethod(operationName = "add")
	public Integer add(@WebParam(name = "num1") int num1, @WebParam(name = "num2") int num2) {
		//TODO write your implementation code here:
		return num1 + num2;
	}
}
