package tourSpot.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import tourSpot.model.dao.TourSpotDao;
import tourSpot.model.vo.TourSpot;
import tourSpot.model.vo.TourSpotImg;

public class TourSpotService {
	
	public ArrayList<TourSpot> selectList(){
		
		Connection conn = getConnection();
		   
		ArrayList<TourSpot> list = new TourSpotDao().selectList(conn);
		
		close(conn);
		return list;
	}
	
	public TourSpotImg tourImgView(int spotNum) {
		
		Connection conn = getConnection();
		
		TourSpotImg tourImgView = new TourSpotDao().tourImgView(conn, spotNum);
		
		close(conn);
		return tourImgView;
		
	}

}
