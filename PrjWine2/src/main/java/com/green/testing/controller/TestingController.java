package com.green.testing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestingController {
	
//		@Autowired
//		private  TestingService   testingService;
		
		@RequestMapping("/Testinglist")
		public String testinglist() {
			return "/testing/testinglist";
		}
		
	}


