package com.moss.tutorial.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moss.tutorial.cache.CacheManager;
import com.moss.tutorial.vo.User;

@Controller
@RequestMapping("order")
public class OrderController {
	private static Logger log = LoggerFactory.getLogger(OrderController.class);
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<String> orderList() {
		String cacheName = "icache-global";
		String key = "user";
		User u = new User("moss", "123456");
		User gValue = (User) CacheManager.get(cacheName, key);// A
		if (gValue != null) {
			log.info("获取缓存成功：" + gValue.getName());
		} else {
			log.info("获取缓存为空，设置缓存");
			CacheManager.set(cacheName, key, u);
			log.info("设置缓存之后获取缓存：" + (User) CacheManager.get(cacheName, key));
		}
		return new ResponseEntity<String>(HttpStatus.OK);
	}
}
