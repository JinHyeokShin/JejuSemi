package adminowner.admin.model.service;
import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import adminowner.admin.model.dao.AdminDao;
import member.model.vo.Member;
public class AdminService {
	public ArrayList<Member> searchMember() {
		Connection conn = getConnection();
		ArrayList<Member> list = new AdminDao().searchMember(conn);
		close(conn);
		System.out.println("service List : "+list);
		return list;
	}

}
