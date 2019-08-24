package accommodation.model.service;

import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.dao.AcmDao;
import accommodation.model.vo.Acm;
import accommodation.model.vo.Search;
import static common.JDBCTemplate.*;

public class AcmService {
	
	
	public ArrayList<Acm> searchAcm(Search search) {		
		Connection conn = getConnection();
		
		ArrayList<Acm> list = new AcmDao().searchAcm(conn, search);
		
		close(conn);
		
		return list;	
	}
	
	
	
	
	
	
	
	
	
	
	

}
