package kr.apfs.analysis.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import kr.apfs.analysis.vo.PriceDayVo;
import kr.apfs.analysis.vo.WeatherVo;

@Service
public class PriceServiceImpl implements PriceService {

	@Override
	public List<PriceDayVo> getData(Map<String, Object> condition) {
		List<PriceDayVo> result = null;
		String serviceKey= "1a7ea4ee-f376-49ba-a289-8d604065c7c5"; //at center api 인증키 가격정보
		String certId = "iceman6958";
		/*regday : $('input[name="regday"]').val(),
    	productClsCode : $('input[name="productClsCode"]').val(),
    	itemCategoryCode : $('input[name="itemCategoryCode"]').val(),
    	contryCode : $('input[name="contryCode"]').val()*/
		
		String regday = (String) condition.get("regday");
		String productClsCode = (String) condition.get("productClsCode");
		String itemCategoryCode =  (String) condition.get("itemCategoryCode");
		String contryCode = (String) condition.get("contryCode");
		
		CloseableHttpClient httpclient = HttpClients.createDefault();
		HttpGet httpGet = new HttpGet("http://www.kamis.or.kr/service/price/xml.do?action=dailyPriceByCategoryList&p_product_cls_code="+productClsCode+"&p_country_code="+contryCode+"&p_regday="+regday+"&p_convert_kg_yn=N&p_item_category_code="+itemCategoryCode+"&p_cert_key="+serviceKey+"&p_cert_id="+certId+"&p_returntype=xml");
		
		System.out.println("요청 url : " +"http://www.kamis.or.kr/service/price/xml.do?action=dailyPriceByCategoryList&p_product_cls_code="+productClsCode+"&p_country_code="+contryCode+"&p_regday="+regday+"&p_convert_kg_yn=N&p_item_category_code="+itemCategoryCode+"&p_cert_key="+serviceKey+"&p_cert_id="+certId+"&p_returntype=xml");
		
		CloseableHttpResponse response1 = null;
		try {
			// api 호출 및 요청 결과 객체 변환
			response1 = httpclient.execute(httpGet);
		    HttpEntity entity1 = response1.getEntity();
		    String responseString = EntityUtils.toString(entity1, "UTF-8");
		   // System.out.println(responseString);
		    JSONObject jsonObj = XML.toJSONObject(responseString);
		    JSONObject items =  jsonObj.getJSONObject("document").getJSONObject("data");
		    String data = items.getJSONArray("item").toString();
		    System.out.println(data);
		    Gson gson = new Gson();
		    List<PriceDayVo> resultDataList = gson.fromJson(data, new TypeToken<List<PriceDayVo>>(){}.getType());
		    System.out.println(resultDataList.toString());
		    
		    result =  resultDataList;
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
