package com.green.tasting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TastingWineController {
		
		// 시음회 등록 화면  
		@RequestMapping("/TastingWriteForm")
		public String TastingWriteForm() {
						
			return "/testing/tastingwriteform";
		}
		
		// 시음회 등록 
		@RequestMapping("TastingWrite")
		public String TastingWrite() {
			
			
			return "/testing/tastingwriteform";
		}
		
		// 신청한 시음회 
		@RequestMapping("/UserTasting")
		public String userTasting() {
			
			
			return "/testing/usertasting";
		}
		
		// 시음회 정보
		@RequestMapping("/TastingList")
		public String tastingList() {
			
			
			return "/testing/testinglist";
		}
		
}
