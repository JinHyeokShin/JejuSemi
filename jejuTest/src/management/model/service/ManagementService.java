package management.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import management.model.dao.ManagementDao;
import management.model.vo.Management;
/**
 * @author JinHyuk
 *
 */
public class ManagementService {
	/**
	 * 1_1. 게시판 리스트 갯수 조회용 서비스
	 * @return
	 */
	public int getOwnerListCount() {
		Connection conn = getConnection();
		
		int listCount = new ManagementDao().getOwnerListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	
	/**
	 * 1_2. 게시판 리스트 조회용 서비스
	 * @param currentPage
	 * @param boardLimit
	 * @return
	 */
	public ArrayList<Management> ownerSelectList(int currentPage, int boardLimit, int memNum){
		Connection conn = getConnection();
		ArrayList<Management> list = new ManagementDao().ownerSelectList(conn, currentPage, boardLimit, memNum);
		
		close(conn);
		
		return list;
	}
}
