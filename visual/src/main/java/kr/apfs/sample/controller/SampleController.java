package kr.apfs.sample.controller;

import kr.apfs.sample.service.SampleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/sample"})
public class SampleController
{
  
  private static final Logger logger = LoggerFactory.getLogger(SampleController.class);
  
  @Autowired
  private SampleService sampleService;

  @RequestMapping({"/index"})
  public String index(@RequestParam(required=false) String name, ModelMap map)
  {
	  logger.debug("로그를 호출한다.!!!!!!!!!!!!!!!!!");
	  logger.debug("로그를 호출한다.!!!!!!!!!!!!!!!!!");
	  logger.debug("로그를 호출한다.!!!!!!!!!!!!!!!!!");
	  logger.debug("로그를 호출한다.!!!!!!!!!!!!!!!!!");
	  logger.debug("로그를 호출한다.!!!!!!!!!!!!!!!!!");
    map.addAttribute("greed", sampleService.getGreeding(name));
    return "sample/index";
  }
}