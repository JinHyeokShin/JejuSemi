package accommodation.model.service;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.dao.AcmDao;
import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Search;
import static common.JDBCTemplate.*;

public class AcmService {
	
	public ArrayList<Acm> searchAcm(Search search) {		
		Connection conn = getConnection();
		
		ArrayList<Acm> list = new AcmDao().searchAcm(conn, search);
		
		close(conn);
		
		return list;	
	}
	
	
	/**
	 * 모든 숙소 이미지를 불러 
	 * @return
	 */
	public ArrayList<AcmImg> acmThumbnailListView(){
		Connection conn = getConnection();
		
		ArrayList<AcmImg> list = new AcmDao().acmThumbnailListView(conn);
		
		close(conn);
		
		return list;
	}
	
	
	
	
	/**
	 * 검색 결과에서 선택한 숙소 정보를 호출하는 서비스
	 * @param acmNum
	 * @return
	 */
	public Acm selectAcm(int acmNum) {
		Connection conn = getConnection();
		
		Acm acm = new AcmDao().selectAcm(conn, acmNum);
		
		close(conn);
		
		return acm;
	}
	
	
	

}
