package kr.apfs.status.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.common.service.CommonService;
import kr.apfs.status.service.CityesService;

@RequestMapping("/status/cityes")
@Controller
public class CityesController {
	
	@Autowired
	private CityesService cityesService;
	
	@Autowired
	private CommonService commonService;
	
	/**
	 * 시도별 가입및 사고현황 화면접근
	 * @param condition
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String joinAndAcident ( ModelMap model) {
		// 년도 목록 생성
		
		// 시도 코드 목록 생성
		model.addAttribute("sidoList", commonService.getSidoCodeList());
		
		return "/status/cityes";
	}
	
	/**
	 * <pre>
	 * 도별 가입및 사고현황 목록 조회
	 * year, sidoCode
	 * </pre>
	 * @param condition
	 * @param model 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/list")
	public String list(@RequestParam Map<String, Object> condition, ModelMap model) {
		return new Gson().toJson(cityesService.list(condition));
	}
}
