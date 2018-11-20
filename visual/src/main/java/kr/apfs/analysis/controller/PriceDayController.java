package kr.apfs.analysis.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.analysis.service.PriceService;
import kr.apfs.common.service.CommonService;

@Controller
@RequestMapping("/analysis/price-day")
public class PriceDayController {
	
	@Autowired
	private PriceService priceService;
	
	@Autowired
	private CommonService commonService;
	
	/**
	 * 농산물 가격정보 조회 화면 
	 * @return
	 */
	@RequestMapping("/index")
	public String index(ModelMap map) {
		
		//map.addAttribute("itemCategoryCode", commonService.getItemCategoryList());
		//map.addAttribute("itemCategoryCode", commonService.getContryCodeList());
		
		return "/analysis/price-day";
	}
	
	@RequestMapping("/getData")
	@ResponseBody
	public String getData(@RequestParam Map<String, Object> condition) {
		return new Gson().toJson(priceService.getData(condition)); 
	}
}
