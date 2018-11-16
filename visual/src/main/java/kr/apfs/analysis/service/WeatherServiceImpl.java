package kr.apfs.analysis.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import kr.apfs.analysis.mapper.WeatherMapper;
import kr.apfs.analysis.vo.WeatherVo;
import support.util.ResultVo;

@Service
public class WeatherServiceImpl implements WeatherService {
	private final Logger logger = LoggerFactory.getLogger(WeatherServiceImpl.class);
	@Autowired
	private WeatherMapper weatherMapper;

	@Override
	@Transactional
	public ResultVo save(List<WeatherVo> list) {
		ResultVo result = new ResultVo(Boolean.TRUE, "기상정보 저장을 완료 하였습니다.");
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("list", list);
		int insertCnt = 0;
		for(WeatherVo weatherInfo :list) {
			insertCnt += weatherMapper.insertWeatherInfo(weatherInfo);
		}
		result.put("insertCnt", insertCnt);
		return result;
	}

	@Override
	@Transactional
	public List<WeatherVo> saveAndGetData(Map<String, Object> condition) {
		// 추후 별도 페이징 관련 처리 필요.
		//ResultVo result = new ResultVo(true, "API 요청을 완료 하였습니다.");
		List<WeatherVo> result = null;
		String serviceKey= "t%2FW%2BgR8MjLNnoqLoxLWpIrx%2BT9%2F%2FKBemixdk8wZxqBmz53x1ykp1dYhyotCSk4xj6Os3Ri7YZVKSAeEljAfksg%3D%3D";
		//String serviceKey= "1a7ea4ee-f376-49ba-a289-8d604065c7c5"; //at center api 인증키 가격정보
		  
		String stYmd = (String) condition.get("stYmd");
		String edYmd = (String) condition.get("edYmd");
		String areaID =  (String) condition.get("areaID");
		String paCropSpeId = (String) condition.get("paCropSpeId");
		
		CloseableHttpClient httpclient = HttpClients.createDefault();
		//HttpGet httpGet = new HttpGet("http://newsky2.kma.go.kr/service/ProductingAreaInfoService/DayStats?ST_YMD="+stYmd+"&ED_YMD="+edYmd+"&AREA_ID="+areaID+"&PA_CROP_SPE_ID="+paCropSpeId+serviceKey);
		HttpGet httpGet = new HttpGet("http://newsky2.kma.go.kr/service/ProductingAreaInfoService/DayStats?ST_YMD="+stYmd+"&ED_YMD="+edYmd+"&AREA_ID="+areaID+"&PA_CROP_SPE_ID="+paCropSpeId+"&pageNo=1&numOfRows=990&serviceKey="+serviceKey);
		CloseableHttpResponse response1 = null;
		try {
			// api 호출 및 요청 결과 객체 변환
			response1 = httpclient.execute(httpGet);
		    HttpEntity entity1 = response1.getEntity();
		    String responseString = EntityUtils.toString(entity1, "UTF-8");
		    JSONObject jsonObj = XML.toJSONObject(responseString);
		    JSONObject items =  jsonObj.getJSONObject("response").getJSONObject("body").getJSONObject("items");
		    String data = items.getJSONArray("item").toString();
		    
		    Gson gson = new Gson();
		    System.out.println(data);
		    List<WeatherVo> weatherList = gson.fromJson(data, new TypeToken<List<WeatherVo>>(){}.getType());
		    
		 /*   for(WeatherVo weatherInfo : weatherList) {
		    	weatherMapper.insertWeatherInfo(weatherInfo);
		    }
		   */ 
		    System.out.println(weatherList);
		   /* Map<String, Object> weatherInfo = new HashMap<String, Object>();
		    weatherInfo.put("list", weatherList);
		     weatherMapper.insertWeatherInfo(weatherInfo); // 중복데이터 처리에 따른 별도 처리 필요
*/		   
		    
		    result =  weatherList;
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if(response1 != null) {
				try {
					response1.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

}
