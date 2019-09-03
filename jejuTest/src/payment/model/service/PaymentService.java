package payment.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import payment.model.dao.PaymentDao;
import payment.model.vo.Payment;
import reservation.model.vo.Reservation;

public class PaymentService {
	
	public int insertPayment(Payment pay, Reservation reserv) {
		Connection conn = getConnection();
		
		int rResult = new PaymentDao().insertReservation(conn, reserv);
		int pResult = new PaymentDao().insertPayment(conn, pay);		
		
		if(pResult > 0 && rResult > 0) {
			commit(conn);			
		} else {
			rollback(conn);
		}		
		close(conn);
		return rResult;
	}

}
