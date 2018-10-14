package kr.apfs.sample.service;

import org.springframework.stereotype.Service;

/**
 * @ClassName SamplServiceImpl
 * @Description {클래스 내용 정의}
 * @author josep
 * @ModificationInformation (수정자/수정일/수정내용)
 * <pre>
 *  --------------------------------------------------
 *   2018. 10. 14. / josep / 최초생성
 *  --------------------------------------------------
 * </pre>
 * @see
 */
@Service
public class SamplServiceImpl implements SampleService {

	/* (non-Javadoc)
	 * @see kr.apfs.sample.service.SampleService#getGreeding(java.lang.String)
	 */
	@Override
	public String getGreeding(String paramString) {		
		return "안녕하세요."+ paramString + "님!";
	}

}
