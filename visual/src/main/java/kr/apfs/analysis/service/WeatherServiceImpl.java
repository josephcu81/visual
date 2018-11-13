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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.apfs.analysis.mapper.WeatherMapper;
import kr.apfs.analysis.vo.WeatherVo;
import support.util.ResultVo;

@Service
public class WeatherServiceImpl implements WeatherService {
	@Autowired
	private WeatherMapper weatherMapper;

	@Override
	@Transactional
	public ResultVo save(List<WeatherVo> list) {
		ResultVo result = new ResultVo(Boolean.TRUE, "기상정보 저장을 완료 하였습니다.");
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("list", list);
		int insertCnt= weatherMapper.insertWeatherInfo(data);
		result.put("insertCnt", insertCnt);
		return result;
	}

	@Override
	public String saveAndGetData(Map<String, Object> condition) {
		// 추후 별도 페이징 관련 처리 필요.
		ResultVo result = new ResultVo(true, "API 요청을 완료 하였습니다.");
		String data = "";
		String serviceKey= "t%2FW%2BgR8MjLNnoqLoxLWpIrx%2BT9%2F%2FKBemixdk8wZxqBmz53x1ykp1dYhyotCSk4xj6Os3Ri7YZVKSAeEljAfksg%3D%3D";
		
		String stYmd = (String) condition.get("stYmd");
		String edYmd = (String) condition.get("edYmd");
		String areaID =  (String) condition.get("areaID");
		String paCropSpeId = (String) condition.get("paCropSpeId");
		
		CloseableHttpClient httpclient = HttpClients.createDefault();
		HttpGet httpGet = new HttpGet("http://newsky2.kma.go.kr/service/ProductingAreaInfoService/DayStats?ST_YMD="+stYmd+"&ED_YMD="+edYmd+"&AREA_ID="+areaID+"&PA_CROP_SPE_ID="+paCropSpeId+"&numOfRows=99&serviceKey="+serviceKey);
		CloseableHttpResponse response1 = null;
		try {
			response1 = httpclient.execute(httpGet);
		    HttpEntity entity1 = response1.getEntity();
		    String responseString = EntityUtils.toString(entity1, "UTF-8");
		    JSONObject jsonObj = XML.toJSONObject(responseString);
		    //data.response.body.items;
		    JSONObject items =  jsonObj.getJSONObject("response").getJSONObject("body").getJSONObject("items");
		    System.out.println(items.toString());
		    data = items.getJSONArray("item").toString();
		    //result.put("data", items);
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
		return data;
	}

}
