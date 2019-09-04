package reservation.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.vo.Acm;
import reservation.model.dao.ReservationDao;
import reservation.model.vo.Reservation;

public class ReservationService {
	
	/**
	 * 마이페이지에서 내 예약 조회 하는 서비스
	 * @param memNum
	 * @return
	 */
	public ArrayList<Reservation> myReservListView(int memNum){
		Connection conn = getConnection();
		
		ArrayList<Reservation> list = new ReservationDao().myReservListView(conn, memNum);
		
		close(conn);
		
		return list;		
	}
	
	
	public Acm reservAcmView(String reservNum) {
		Connection conn = getConnection();
		
		Acm acm = new ReservationDao().reservAcmView(conn, reservNum);
		
		close(conn);
		
		return acm;		
	}
	
	
	public int cancelReservation(String reservNum) {
		Connection conn = getConnection();
		
		int result = new ReservationDao().cancelReservation(conn, reservNum);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;		
	}

}
