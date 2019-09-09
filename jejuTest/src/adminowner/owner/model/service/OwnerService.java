package adminowner.owner.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import adminowner.admin.model.vo.Chart;
import adminowner.owner.model.dao.OwnerDao;

public class OwnerService {

	public ArrayList<Chart> chartSearch(int acmNum){
		Connection conn = getConnection();
		ArrayList<Chart> list = new OwnerDao().chartSearch(conn,acmNum);
		close(conn);
		return list;
		
	}
}
