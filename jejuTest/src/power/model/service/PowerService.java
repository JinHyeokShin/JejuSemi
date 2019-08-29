package power.model.service;

import java.sql.Connection;

import power.model.dao.PowerDao;
import power.model.vo.Power;
import static common.JDBCTemplate.*;

public class PowerService {
	public int ownerInsertPower(Power p,int ownerNum) {
		Connection conn = getConnection();
		
		int result = new PowerDao().ownerInsertPower(conn,p, ownerNum);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
