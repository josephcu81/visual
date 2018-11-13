package support.util;

import java.util.HashMap;
import java.util.Map;

public class ResultVo {
	private boolean correct;	
	private String message;
	private Map<String, Object> resultMap;
	
	public ResultVo () {}
	
	public ResultVo (boolean correct, String message) {
		this.correct = correct;
		this.message = message;
	}
	
	public void setCorrect(boolean correct) {
		this.correct = correct;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	public void put(String key, Object value) {
		if(resultMap == null) {
			resultMap = new HashMap<String, Object>();
		}
		resultMap.put(key, value);
	}
	
	public boolean isOk() {
		return this.correct;
	}
	
	public boolean isNotOk() {
		return !this.correct;
	}
	
	public Map<String, Object> getMap() {
		return this.resultMap;
	}
	
	public String getMessage() {
		return this.message;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ResultVo [correct=").append(correct).append(", ");
		if (message != null)
			builder.append("message=").append(message).append(", ");
		if (resultMap != null)
			builder.append("resultMap=").append(resultMap);
		builder.append("]");
		return builder.toString();
	}
	
	
}
