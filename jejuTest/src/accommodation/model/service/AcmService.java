package accommodation.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import accommodation.model.dao.AcmDao;
import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Option;
import accommodation.model.vo.Room;
import accommodation.model.vo.RoomImg;
import accommodation.model.vo.Search;
import member.model.vo.WishList;

public class AcmService {
	
	/**
	 * 사용자가 검색한 조건으로 조건에 맞는 숙소를 호출 하는 서비스
	 * @param search
	 * @return
	 */
	public ArrayList<Acm> searchAcm(Search search) {		
		Connection conn = getConnection();
		
		ArrayList<Acm> list = new AcmDao().searchAcm(conn, search);
		
		close(conn);
		
		return list;	
	}
	
	/**
	 * 검색결과에서 검색필터 옵션들 적용하는 서비스
	 * @param search
	 * @param option
	 * @return
	 */
	public ArrayList<Acm> searchAcmOption(Search search, Option option){
		Connection conn = getConnection();
		
		ArrayList<Acm> list = new AcmDao().searchAcmOption(conn, search, option);
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 모든 숙소의 대표 이미지들 호출하는 서비스 
	 * @return
	 */
	public ArrayList<AcmImg> acmThumbnailListView(){
		Connection conn = getConnection();
		
		ArrayList<AcmImg> list = new AcmDao().acmThumbnailListView(conn);
		
		close(conn);
		
		return list;
	}
	
	
	
	
	/**
	 * 검색 결과에서 선택한 숙소 정보를 호출하는 서비스
	 * @param acmNum
	 * @return
	 */
	public Acm selectAcm(int acmNum) {
		Connection conn = getConnection();
		
		Acm acm = new AcmDao().selectAcm(conn, acmNum);
		
		close(conn);
		
		return acm;
	}
	
	
	/**
	 * 숙소 상세 페이지에서 보여줄 해당 숙소의 모든 이미지 호출
	 * @param acmNum
	 * @return
	 */
	public ArrayList<AcmImg> acmImgListView(int acmNum){
		Connection conn = getConnection();
		
		ArrayList<AcmImg> list = new AcmDao().acmImgListView(conn, acmNum);
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 숙소 상세 페이지에서 예약 가능한 룸들만 호출하는 서비스
	 * @param acmNum
	 * @param checkIn
	 * @param checkOut
	 * @return
	 */
	public ArrayList<Room> selectRoomList(int acmNum,String checkIn,String checkOut){
		Connection conn = getConnection();
		
		ArrayList<Room> list = new AcmDao().selectRoomList(conn,acmNum,checkIn,checkOut);
		
		close(conn);
		
		return list;	
	}
	
	
	/**
	 * 숙소 상세 페이지에서 예약 가능한 룸의 이미지들을 불러오는 서비스
	 * @param roomNum
	 * @return
	 */
	public ArrayList<RoomImg> roomImgListView(int roomNum){
		Connection conn = getConnection();
		
		ArrayList<RoomImg> list = new AcmDao().roomImgListView(conn, roomNum);
		
		close(conn);
		
		return list;
	}
	
	
	/**
	 * 예약할 룸 선택하고 예약화면으로 넘어갈때 해당 룸 정보 호출하는 서비스 
	 * @param roomNum
	 * @return
	 */
	public Room selectRoom(int roomNum) {
		Connection conn = getConnection();
		
		Room room = new AcmDao().selectRoom(conn, roomNum);
		
		close(conn);
		
		return room;		
	}
	
	/**
	 * 사장님페이지에서 사장님 자기 자신 회원정보 수정
	 * @param acm
	 * @return
	 */
	public Acm updateAcm(Acm acm,int ownerNum) {
		Connection conn = getConnection();
		
		int result = new AcmDao().updateAcm(conn, acm, ownerNum);
		
		Acm updateAcm = null;
		
		if(result > 0) {
			commit(conn);
			
			updateAcm = new AcmDao().updateSelectAcm(conn, ownerNum);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateAcm;
	}
	
	

	/**
	 * 찜하기 insert 하는 서비스
	 * @param memNum
	 * @param acmNum
	 * @return
	 */
	public int insertLike(int memNum, int acmNum) {
		Connection conn = getConnection();
		
		int result = new AcmDao().insertLike(conn, memNum, acmNum);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}		
		close(conn);
		
		return result;
	}
	
	
	
	/**
	 * 찜한거 삭제하는 메소드
	 * @param memNum
	 * @param acmNum
	 * @return
	 */
	public int deleteLike(int memNum, int acmNum) {
		Connection conn = getConnection();
		
		int result = new AcmDao().deleteLike(conn, memNum, acmNum);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}		
		close(conn);
		
		return result;
	}
	
	
	
	
	/**
	 * 숙소 상세 페이지 들어갈 때 회원이 찜한 숙소인지 아닌지 체크 하는 서비스
	 * @param memNum
	 * @param acmNum
	 * @return
	 */
	public int checkLike(int memNum, int acmNum) {
		Connection conn = getConnection();
		WishList wish = new AcmDao().checkLike(conn, memNum, acmNum);
		int result = 0;
		if(wish != null) {
			result = 1;
		} else {
			result = 2;
		}
		return result;
	}
	

}
