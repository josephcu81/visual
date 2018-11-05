package kr.apfs.status.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.status.service.ItemsService;

/**
 * 품목별 가입 및 사고 현황 컨트롤러
 * @author josephcu
 *
 */
@Controller
@RequestMapping("/status/items")
public class ItemsController {
	@Autowired
	private ItemsService itemsService;
	
	/**
	 * 품목별 가입 및 사고 현황 초기 화면
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String index(ModelMap model) {
		return "status/items";
	}
	
	@ResponseBody
	@RequestMapping("/list")
	public String list(@RequestParam Map<String, Object> condition) {
		return new Gson().toJson(itemsService.getItemsStatusList(condition));
	}
	
}
