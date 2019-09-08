package accommodation.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import accommodation.model.vo.Acm;
import accommodation.model.vo.AcmImg;
import accommodation.model.vo.Option;
import accommodation.model.vo.Room;
import accommodation.model.vo.RoomImg;
import accommodation.model.vo.Search;
import member.model.vo.WishList;
import nation.model.vo.Nation;

public class AcmDao {
	
	private Properties prop = new Properties();
	
	public AcmDao() {
		
		String fileName = AcmDao.class.getResource("/sql/accommodation/accommodation-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));			
			
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	
	
	
	/**
	 * 검색위젯으로 숙소 검색하는 서비스
	 * @param conn
	 * @param search
	 * @return
	 */
	public ArrayList<Acm> searchAcm(Connection conn, Search search) {
		ArrayList<Acm> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchAcm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search.getSearchCheckInDate());
			pstmt.setString(2, search.getSearchCheckOutDate());
			pstmt.setInt(3, search.getAdult()+search.getChild());
			pstmt.setInt(4, (search.getPage()*5)-4);
			pstmt.setInt(5, search.getPage()*5);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Acm acm = new Acm();
				acm.setAcmNum(rset.getInt("acm_num"));
				acm.setAcmName(rset.getString("acm_name"));
				acm.setAcmPhone(rset.getString("acm_phone"));
				acm.setAcmAddress(rset.getString("acm_address"));
				acm.setAcmType(rset.getString("acm_type"));
				acm.setAcmGrade(rset.getInt("acm_grade"));
				acm.setAcmDescriptA(rset.getString("acm_descript_a"));
				acm.setAcmDescriptB(rset.getString("acm_descript_b"));
				acm.setAcmCoordX(rset.getString("acm_coord_x"));
				acm.setAcmCoordY(rset.getString("acm_coord_y"));
				acm.setAcmDistrict(rset.getString("acm_district"));
				acm.setAcmPower(rset.getString("acm_power"));
				acm.setStatus(rset.getString("acm_status"));
				acm.setMinPrice(rset.getInt("minprice"));
				
				list.add(acm);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public ArrayList<Acm> searchAcmOption(Connection conn, Search search, Option option){
		ArrayList<Acm> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String[] arr1 = option.getArrType();
		String[] arr2 = option.getArrDist();
		String[] arr3 = option.getArrStar();
		String[] arr4 = option.getArrPrice();
		
		String str1 = "SELECT * FROM (SELECT ROWNUM AS RNUM, SEARCH.* FROM (SELECT ACM_NUM, ACM_NAME, ACM_PHONE, ACM_ADDRESS, ACM_TYPE, ACM_GRADE, ACM_DESCRIPT_A, ACM_DESCRIPT_B, ACM_COORD_X, ACM_COORD_Y, ACM_DISTRICT, ACM_POWER, ACM_STATUS, MIN(ROOM_PRICE) MINPRICE FROM ACCOMMODATION JOIN ROOM USING(ACM_NUM) WHERE ROOM_NUM  NOT IN (SELECT ROOM_NUM FROM RESERVATION WHERE CHECKIN_DATE >= ? AND CHECKOUT_DATE < ?) AND ACM_STATUS='Y' AND ROOM_PAX>=? ";
		String str2 = "";
		String str3 = "";
		String str4 = "";
		String str5 = " GROUP BY ACM_NUM, ACM_NAME, ACM_PHONE, ACM_ADDRESS, ACM_TYPE, ACM_GRADE, ACM_DESCRIPT_A, ACM_DESCRIPT_B, ACM_COORD_X, ACM_COORD_Y, ACM_DISTRICT, ACM_POWER, ACM_STATUS ";
		String str6 = "";
		String str7 = " ORDER BY ACM_POWER DESC, MIN(ROOM_PRICE)) SEARCH) WHERE RNUM BETWEEN ? AND ?";
		
		
		
		if(arr1.length == 1 || arr1.length == 6) {	// type 필터에 체크가 하나도 없거나 모두 있으면		
			str2 = "";
		}
		if(arr1.length == 2) {	// 체크가 1개면
			str2 = " AND " + arr1[0] +" "+ arr1[1];	// AND ACM_TYPE IN 'H'
		}
		if(arr1.length == 3) {	// 체크가 2개면
			str2 = " AND " + arr1[0] +"("+arr1[1]+","+arr1[2]+")";	// AND ACM_TYPE IN('H','R')
		}
		if(arr1.length == 4) {	// 체크가 3개면
			str2 = " AND " + arr1[0] +"("+arr1[1]+","+arr1[2]+","+arr1[3]+")";	// AND ACM_TYPE IN('H','R','C')
		}
		if(arr1.length == 5) {	// 체크가 4개면
			str2 = " AND " + arr1[0] +"("+arr1[1]+","+arr1[2]+","+arr1[3]+","+arr1[4]+")";	// AND ACM_TYPE IN('H','R','C','G')
		}
				
		
		if(arr2.length == 1 || arr2.length == 3) {	// district 필터에 체크가 없거나 모두 있으면
			str3 = "";			
		}
		if(arr2.length == 2) {	// 체크가 1개면
			str3 = " AND "+arr2[0]+arr2[1];
		}
		
		if(arr3.length == 1 || arr3.length == 6) {	// star 필터에 체크가 없거나 모두 있으면
			str4 = "";
		}
		if(arr3.length == 2) {	// 체크가 1개면
			str4 = " AND " + arr3[0] +" "+ arr3[1];	// AND ACM_GRADE IN 1
		}
		if(arr3.length == 3) {	// 체크가 2개면
			str4 = " AND " + arr3[0] +"("+arr3[1]+","+arr3[2]+")";	// AND ACM_GRADE IN(1,2)
		}
		if(arr3.length == 4) {	// 체크가 3개면
			str4 = " AND " + arr3[0] +"("+arr3[1]+","+arr3[2]+","+arr3[3]+")";	// AND ACM_GRADE IN(1,2,3)
		}
		if(arr3.length == 5) {	// 체크가 4개면
			str4 = " AND " + arr3[0] +"("+arr3[1]+","+arr3[2]+","+arr3[3]+","+arr3[4]+")";	// AND ACM_GRADE IN(1,2,3,4)
		}
		
		
		if(Integer.parseInt(arr4[1]) == 0) {	// min=0 / max=값
			str6 = arr4[0]+"<"+arr4[2];
		}
		if(Integer.parseInt(arr4[2]) == 0) {	// min=값 / max=0
			str6 = arr4[0]+">"+arr4[1];
		}
		if(Integer.parseInt(arr4[1]) == 0 && Integer.parseInt(arr4[2]) == 0) {	// min=0 / max=0 이면 
			str6 = "";
		}
		if(Integer.parseInt(arr4[1]) != 0 && Integer.parseInt(arr4[2]) != 0) {	// min=값 / max=값
			str6 = arr4[0]+" BETWEEN "+arr4[1]+" AND "+arr4[2];
		}
		
		
		String sql = str1+str2+str3+str4+str5+str6+str7;
		
		System.out.println(sql);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search.getSearchCheckInDate());
			pstmt.setString(2, search.getSearchCheckOutDate());
			pstmt.setInt(3, search.getAdult()+search.getChild());
			pstmt.setInt(4, (search.getPage()*5)-4);
			pstmt.setInt(5, search.getPage()*5);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Acm acm = new Acm();
				acm.setAcmNum(rset.getInt("acm_num"));
				acm.setAcmName(rset.getString("acm_name"));
				acm.setAcmPhone(rset.getString("acm_phone"));
				acm.setAcmAddress(rset.getString("acm_address"));
				acm.setAcmType(rset.getString("acm_type"));
				acm.setAcmGrade(rset.getInt("acm_grade"));
				acm.setAcmDescriptA(rset.getString("acm_descript_a"));
				acm.setAcmDescriptB(rset.getString("acm_descript_b"));
				acm.setAcmCoordX(rset.getString("acm_coord_x"));
				acm.setAcmCoordY(rset.getString("acm_coord_y"));
				acm.setAcmDistrict(rset.getString("acm_district"));
				acm.setAcmPower(rset.getString("acm_power"));
				acm.setStatus(rset.getString("acm_status"));
				acm.setMinPrice(rset.getInt("minprice"));
				
				list.add(acm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	
	
	public ArrayList<AcmImg> acmThumbnailListView(Connection conn){
		ArrayList<AcmImg> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("acmThumbnailListView");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new AcmImg(rset.getInt("img_num"),
						            rset.getString("img_path"),
						            rset.getInt("acm_num"),
						            rset.getInt("status")));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	
	
	
	public Acm selectAcm(Connection conn, int acmNum) {
		
		Acm acm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAcm");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acmNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				acm = new Acm(rset.getInt("acm_num"),
						      rset.getString("acm_name"),
						      rset.getString("acm_phone"),
						      rset.getString("acm_address"),
						      rset.getString("acm_type"),
						      rset.getInt("acm_grade"),
						      rset.getString("acm_descript_a"),
						      rset.getString("acm_descript_b"),
						      rset.getString("acm_coord_x"),
						      rset.getString("acm_coord_y"),
						      rset.getString("acm_district"),
						      rset.getString("acm_power"),
						      rset.getString("acm_status"));				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return acm;
	}
	
	
	
	public ArrayList<AcmImg> acmImgListView(Connection conn, int acmNum){
		ArrayList<AcmImg> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("acmImgListView");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, acmNum);			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new AcmImg(rset.getInt("img_num"),
						            rset.getString("img_path"),
						            rset.getInt("acm_num"),
						            rset.getInt("status")));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public ArrayList<Room> selectRoomList(Connection conn,int acmNum,String checkIn,String checkOut){
		ArrayList<Room> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRoomList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkIn);
			pstmt.setString(2, checkOut);
			pstmt.setInt(3, acmNum);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Room(rset.getInt("room_num"),
								  rset.getInt("acm_num"),
								  rset.getString("room_name"),
								  rset.getInt("room_price"),
								  rset.getInt("room_pax"),
								  rset.getString("room_descript_a"),
								  rset.getString("room_descript_b"),
								  rset.getString("room_smoke")));
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public ArrayList<RoomImg> roomImgListView(Connection conn, int roomNum){
		ArrayList<RoomImg> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("roomImgListView");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, roomNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				RoomImg roomImg = new RoomImg();
				roomImg.setImgPath(rset.getString("img_path"));
				
				list.add(roomImg);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public Room selectRoom(Connection conn, int roomNum) {
		Room room = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRoom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, roomNum);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				room = new Room(rset.getInt("room_num"),
						        rset.getInt("acm_num"),
						        rset.getString("room_name"),
						        rset.getInt("room_price"),
						        rset.getInt("room_pax"),
						        rset.getString("room_descript_a"),
						        rset.getString("room_descript_b"),
						        rset.getString("room_smoke"));
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return room;
	}
	
	
	public Acm updateSelectAcm(Connection conn, int ownerNum) {
		
		Acm acm = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("updateSelectAcm");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ownerNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				acm = new Acm(rset.getInt("acm_num"),
						      rset.getString("acm_name"),
						      rset.getString("acm_phone"),
						      rset.getString("acm_address"),
						      rset.getString("acm_type"),
						      rset.getInt("acm_grade"),
						      rset.getString("acm_descript_a"),
						      rset.getString("acm_descript_b"),
						      rset.getString("acm_coord_x"),
						      rset.getString("acm_coord_y"),
						      rset.getString("acm_district"),
						      rset.getString("acm_power"),
						      rset.getString("acm_status"));				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return acm;
	}
	public int updateAcm(Connection conn, Acm acm, int ownerNum) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateAcm");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, acm.getAcmName());
			pstmt.setString(2, acm.getAcmPhone());
			pstmt.setString(3, acm.getAcmDescriptA());
			pstmt.setString(4, acm.getAcmDescriptB());
			pstmt.setInt(5, ownerNum);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result;
	}
	
	
	

	public int insertLike(Connection conn, int memNum, int acmNum) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertLike");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			pstmt.setInt(2, acmNum);
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int deleteLike(Connection conn, int memNum, int acmNum) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteLike");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			pstmt.setInt(2, acmNum);
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public WishList checkLike(Connection conn, int memNum, int acmNum) {
		WishList wish = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("checkLike");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			pstmt.setInt(2, acmNum);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				wish = new WishList(rset.getInt("mem_num"),rset.getInt("acm_num"),rset.getDate("wish_date"));
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return wish;
	}
	
	
	
	public ArrayList<WishList> selectWishList(Connection conn, int memNum){
		ArrayList<WishList> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectWishList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNum);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new WishList(rset.getInt("mem_num"),rset.getInt("acm_num"),rset.getDate("wish_date")));				
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return list;
	}
	
	
	
	public ArrayList<Acm> selectAcmList(Connection conn){
		ArrayList<Acm> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAcmList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Acm acm = new Acm();
				acm.setAcmNum(rset.getInt("acm_num"));
				acm.setAcmName(rset.getString("acm_name"));
				acm.setAcmPhone(rset.getString("acm_phone"));
				acm.setAcmAddress(rset.getString("acm_address"));
				acm.setAcmType(rset.getString("acm_type"));
				acm.setAcmGrade(rset.getInt("acm_grade"));
				acm.setAcmDescriptA(rset.getString("acm_descript_a"));
				acm.setAcmDescriptB(rset.getString("acm_descript_b"));
				acm.setAcmCoordX(rset.getString("acm_coord_x"));
				acm.setAcmCoordY(rset.getString("acm_coord_y"));
				acm.setAcmDistrict(rset.getString("acm_district"));
				acm.setAcmPower(rset.getString("acm_power"));
				
				list.add(acm);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);			
		}
		return list;
	}
	
	
	public ArrayList<Nation> selectNation(Connection conn){
		ArrayList<Nation> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;		
		String sql = prop.getProperty("selectNation");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Nation(rset.getInt("nation_code"),rset.getString("nation_name"),rset.getString("img_path")));				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	
	public ArrayList<Acm> powerList(Connection conn){
		
		ArrayList<Acm> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("powerList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Acm(rset.getInt("acm_num"),
						         rset.getString("acm_name"),
						         rset.getString("acm_phone"),
						         rset.getString("acm_address"),
						         rset.getString("acm_type"),
						         rset.getInt("acm_grade"),
						         rset.getString("acm_district")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
}
