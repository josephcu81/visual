package kr.apfs.analysis.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.apfs.analysis.service.WeatherService;
import kr.apfs.analysis.vo.WeatherVo;
import kr.apfs.common.service.CommonService;
import support.util.ResultVo;

@RequestMapping("/analysis/weather")
@Controller
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	@Autowired
	private CommonService commonService;
	
	/**
	 * 농주산지기상정보 화면 접근
	 * @param condition
	 * @param model
	 * @return
	 */
	@RequestMapping("/index")
	public String joinAndAcident ( ModelMap model ) {
		// 년도 목록 생성
		
		// 주산지 목록 조회
		model.addAttribute("areaList", commonService.getAreaIdList());
		
		return "/analysis/weather";
	}
	
	/**
	 * <pre>
	 * 조회 결과 정보 저장 처리
	 * </pre>
	 * @param condition
	 * @param model 
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/save")
	public String save(@RequestParam Map<String, Object> data, ModelMap model) {
		ResultVo result = new ResultVo();
		List<WeatherVo> weatherList = new ArrayList<WeatherVo>();
		result = weatherService.save(weatherList);
		return new Gson().toJson(result);
	}
	
	@ResponseBody
	@RequestMapping("/getData")
	public String getData(@RequestParam Map<String, Object> condition, ModelMap model) {
		return weatherService.saveAndGetData(condition);
	}
}
