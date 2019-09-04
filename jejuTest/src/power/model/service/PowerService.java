package power.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import accommodation.model.vo.Acm;
import payment.model.vo.Payment;
import power.model.dao.PowerDao;
import power.model.vo.Power;

/**	페이 / 파워 등록
 * @author JinHyuk
 *
 */
public class PowerService {
	public int insertPayment(Payment pay, Power pow, Acm acm) {
		Connection conn = getConnection();
		
		int payResult = new PowerDao().insertPayment(conn, pay);		
		int powResult = new PowerDao().insertPower(conn, pow);
		int acmResult = new PowerDao().updateAcmStatus(conn, acm);
		
		if(powResult > 0 && payResult > 0 && acmResult >00) {
			commit(conn);			
		} else {
			rollback(conn);
		}		
		close(conn);
		return powResult;
	}
}
