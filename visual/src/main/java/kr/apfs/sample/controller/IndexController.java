package kr.apfs.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 홈페이지 최초 진입점
 * @author josephcu
 */
@Controller
@RequestMapping ("/")
public class IndexController {
	
	/**
	 * index page 지정
	 * @return
	 */
	@RequestMapping("index")
	public String index() {
		return "/index";
	}
}
