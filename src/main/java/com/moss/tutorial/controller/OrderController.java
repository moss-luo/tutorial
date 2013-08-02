package com.moss.tutorial.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("order")
public class OrderController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ResponseEntity<String> orderList(){
//		throw new RuntimeException();
		return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
	}
}
