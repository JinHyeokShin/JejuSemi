package festival.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import festival.model.dao.FestivalDao;
import festival.model.vo.Festival;
import festival.model.vo.FestivalImg;

import static common.JDBCTemplate.*;

public class FestivalService {

	public ArrayList<Festival> selectList() {

		Connection conn = getConnection();

		ArrayList<Festival> list = new FestivalDao().selectList(conn);

		close(conn);
		return list;
	}
	
	public FestivalImg festivalImgView(int festivalNum) {
		
		Connection conn = getConnection();
		
		FestivalImg festivalImgView = new FestivalDao().festivalImgView(conn, festivalNum);
		
		close(conn);
		return festivalImgView;
		
	}

}
