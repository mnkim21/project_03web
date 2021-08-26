package com.team6.cinema.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;
import com.team6.cinema.store.StoreHistoryDTO;

/***
 * 회원 DAO 클래스
 * @author 6조
 *
 */
public class UserDAO {
	
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public UserDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}

	/***
	 * 회원가입 insert 메소드
	 * @param dto
	 * @return 회원가입 성공유무
	 */
	public int userAdd(UserDTO dto) {
		
		try {
			
			String sql = "insert into tblUser values(seqUser.nextVal,?,?,?,?,?,?,?,default,default,?,?,?,?,default,default,default)";
			//insert into tblUser values(seqUser.nextVal,name,phone,'id','pw','gender','birth','email',default,default,'prefer_genre','prefer_theater','question','answer',default,default,default);
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getUserName());
			pstat.setString(2, dto.getUserTel());
			pstat.setString(3, dto.getUserId());
			pstat.setString(4, dto.getUserPw());
			pstat.setString(5, dto.getUserGender());
			pstat.setString(6, dto.getUserBirth());
			pstat.setString(7, dto.getUserEmail());
			pstat.setString(8, dto.getUserGenre());
			pstat.setString(9, dto.getUserTheater());
			pstat.setString(10, dto.getUserQuestion());
			pstat.setString(11, dto.getUserAnswer());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			
		}
		
		return 0;
	}

	/***
	 * 회원가입시 아이디 중복확인 메소드
	 * @param id
	 * @return 중복확인 유무
	 */
	public int idcheck(String id) {
		
		try {
			String sql = "select count(*) as cnt from tblUser where userId=?";
			
			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("cnt").equals("1")) {
				return 1;
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return 0;
		
	}

	
	/***
	 * 로그인 확인 메소드
	 * @param id
	 * @param pw
	 * @return 로그인 성공유무
	 */
	public int loginCheck(String id, String pw) {
		
		try {
			
			String sql = "select count(*) as cnt from tblUser where userId=? and userPw=?";
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, id);
			pstat.setString(2, pw);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				
				if(rs.getString("cnt").equals("1")) {
					return 1;
				}
			}
		} catch (Exception e) {

		}
		
		return 0;
	}

	
	/***
	 * 회원정보를 반환하는 메소드
	 * @param my_id
	 * @return 회원 정보 dto
	 */
	public UserDTO getUserInfo(String my_id) {
		
		try {
			String sql = "select * from tblUser where userId=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, my_id);
			
			rs = pstat.executeQuery();
			
			UserDTO dto = new UserDTO();
			
			if(rs.next()) {
				
				dto.setUserSeq(rs.getString("userSeq"));
				dto.setUserName(rs.getString("userName"));
				dto.setUserTel(rs.getString("userTel"));
				dto.setUserId(rs.getString("userId"));
				dto.setUserPw(rs.getString("userPw"));
				dto.setUserGender(rs.getString("userGender"));
				dto.setUserBirth(rs.getString("userBirth"));
				dto.setUserEmail(rs.getString("userEmail"));
				dto.setUserGrade(rs.getString("userGrade"));
				dto.setUserPoint(rs.getString("userPoint"));
				dto.setUserGenre(rs.getString("userGenre"));
				dto.setUserTheater(rs.getString("userTheater"));
				dto.setUserQuestion(rs.getString("userQuestion"));
				dto.setUserAnswer(rs.getString("userAnswer"));
				dto.setUserImage(rs.getString("userImage"));
				dto.setUserLv(rs.getString("userLv"));
				dto.setUserRegdate(rs.getString("userRegdate"));
			}
			
			return dto;
			
		} catch (Exception e) {
			
		}
		
		
		return null;
	}
	
	
	/***
	 * 회원의 아이디 찾기 메소드
	 * @param name
	 * @param tel
	 * @return 회원 아이디, 가입일 
	 */
	public UserDTO searchId(String name, String tel) {
		
		try {
			
			String sql = "select * from tblUser where userName=? and userTel=?";
			
			pstat =conn.prepareStatement(sql);
			
			pstat.setString(1, name);
			pstat.setString(2, tel);
			
			rs = pstat.executeQuery();
			
			UserDTO dto = new UserDTO();
			
			if(rs.next()) {

				dto.setUserId(rs.getString("userId"));
				dto.setUserRegdate(rs.getString("userRegdate"));
			
			}
			
			return dto;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	/***
	 * 회원 비밀번호 찾기 메소드
	 * @param name
	 * @param tel
	 * @param id
	 * @param question
	 * @param answer
	 * @return 회원 비밀번호
	 */
	public String searchPw(String name, String tel, String id, String question, String answer) {

		try {
			
			String sql = "select userPw from tblUser where userName=? and userId=? and userTel=? and userquestion=? and userAnswer=?";

			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, name);
			pstat.setString(2, id);
			pstat.setString(3, tel);
			pstat.setString(4, question);
			pstat.setString(5, answer);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				return rs.getString("userPw");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		
		return null;
	}

	/***
	 * 회원 개인정보수정 전 비밀번호 확인 메소드
	 * @param id
	 * @param pw
	 * @return 비밀번호 일치 유무
	 */
	public int userEditPwCheck(String id, String pw) {
		
		
		try {
			
			String sql = "select count(*) as cnt from tblUser where userId=? and userPw=?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			pstat.setString(2, pw);
			rs = pstat.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt("cnt")==1) {
					return 1;
				}
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		return 0;
	}

	/***
	 * 회원정보를 수정하는 메소드
	 * @param dto
	 * @return 회원정보수정 유무
	 */
	public int userEditInfo(UserDTO dto) {
		
		try {
			
			String sql = "update tblUser set userPw=?, userEmail=?,userTel=?,userQuestion=?,userAnswer=?,userTheater=?,userGenre=?,userImage=? where userId=?";

			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getUserPw());
			pstat.setString(2, dto.getUserEmail());
			pstat.setString(3, dto.getUserTel());
			pstat.setString(4, dto.getUserQuestion());
			pstat.setString(5, dto.getUserAnswer());
			pstat.setString(6, dto.getUserTheater());
			pstat.setString(7, dto.getUserGenre());
			pstat.setString(8, dto.getUserImage());
			pstat.setString(9, dto.getUserId());
			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			
			
			
			
		}
		
		
		
		
		
		return 0;
	}
	
	
	/***
	 * 회원의 예매 정보를 가져오는 메소드
	 * @param my_id 
	 * @return 회원 예매정보 리스트
	 */
	public ArrayList<MyTicketingDTO> getMyTicketing(String my_id) {
		
		
		try {
			String sql ="select * from vwTicketing where userId=?";
			
			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, my_id);
			
			rs = pstat.executeQuery();
			ArrayList<MyTicketingDTO> ticketList= new ArrayList<MyTicketingDTO>();
			
			while(rs.next()) {
				MyTicketingDTO tDto= new MyTicketingDTO();
				
				tDto.setTicketingSeq(rs.getString("ticketingSeq"));
				tDto.setUserSeq(rs.getString("userSeq"));
				tDto.setScheduleSeq(rs.getString("scheduleSeq"));
				tDto.setUserId(rs.getString("userId"));
				tDto.setTicketingDate(rs.getString("ticketingDate"));
				tDto.setTheaterName(rs.getString("theaterName"));
				tDto.setTheaterRoomName(rs.getString("theaterRoomName"));
				tDto.setScheduleDate(rs.getString("scheduleDate"));
				tDto.setScheduleTime(rs.getString("scheduleTime"));
				tDto.setMoviePoster(rs.getString("moviePoster"));
				tDto.setMovieKorname(rs.getString("movieKorname"));
				tDto.setMovieFormat(rs.getString("movieFormat"));
				tDto.setMovieTime(rs.getString("movieTime"));
				
				ticketList.add(tDto);
				
			}
			
			return ticketList;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		return null;
	}

	
	/***
	 * 회원의 예매 수를 반환하는 메소드
	 * @param my_id
	 * @return 회원의 예매 수
	 */
	public int getMyTicketCount(String my_id) {
		
		
		
		try {
			String sql ="select count(*) as cnt from vwTicketing where userId=?";
			
			pstat=conn.prepareStatement(sql);
			
			pstat.setString(1, my_id);
			
			rs = pstat.executeQuery();
			
			if(rs.next()) {

				return rs.getInt("cnt");
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return 0;
	}

	/***
	 * 회원의 매점 구매내역을 가져오는 메소드
	 * @param my_id
	 * @return 매점 구매내역 목록 반환
	 */
	public ArrayList<StoreHistoryDTO> getMyStoreHistory(String my_id) {
		
		try {
			String sql ="select * from vwStoreHistory where userId=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, my_id);
			
			rs=pstat.executeQuery();
			
			ArrayList<StoreHistoryDTO> list = new ArrayList<StoreHistoryDTO>();
			
			while(rs.next()) {
				
				StoreHistoryDTO dto = new StoreHistoryDTO();
				
				dto.setStoreHistorySeq(rs.getString("storeHistorySeq"));
				dto.setUserSeq(rs.getString("userSeq"));
				dto.setUserId(rs.getString("userId"));
				dto.setItemSeq(rs.getString("itemSeq"));
				dto.setStoreHistoryRegdate(rs.getString("storeHistoryRegdate"));
				dto.setStoreHistoryCount(rs.getString("storeHistoryCount"));
				dto.setStoreCheck(rs.getString("storeCheck"));
				dto.setItemName(rs.getString("itemName"));
				dto.setItemPrice(rs.getString("itemPrice"));
				dto.setItemImage(rs.getString("itemImage"));
				
				list.add(dto);
				
			}

			return list;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}

	/***
	 * 회원의 좌석정보를 가져오기위한 예매번호를 가져오는 메소드
	 * @param my_id
	 * @param tList
	 * @return 예매번호 반환
	 */
	public ArrayList<String> getTicketingSeq(String my_id, ArrayList<MyTicketingDTO> tList) {
		
		String sql="";
				
				try {
					ArrayList<String> list = new ArrayList<String>();
					
					for(int i=0;i<tList.size();i++) {
					sql = "select ticketingSeq from tblTicketing where userSeq=(select userSeq from tblUser where userId=?) and scheduleSeq=?";
					pstat = conn.prepareStatement(sql);
					
					pstat.setString(1, my_id);
					pstat.setString(2, tList.get(i).getScheduleSeq());
					
					rs = pstat.executeQuery();
					
					if(rs.next()) {
						
						list.add(rs.getString("ticketingSeq"));
					}
					
					}
					
					return list;
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		
		
		
		
		return null;
	}

	/***
	 * 예매한 좌석정보를 가져오기 위한 메소드
	 * @param ticketingSeq
	 * @return 좌석정보 반환
	 */
	public ArrayList<UserSeatDTO> getUserSeat(ArrayList<String> ticketingSeq) {
		String sql="";
		try {
			
			ArrayList<UserSeatDTO>  list = new ArrayList<UserSeatDTO>();
			
			for(int i=0; i<ticketingSeq.size();i++) {
			sql ="select seatValue,seatRow,seatColumn from tblUserSeat where ticketingseq=?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, ticketingSeq.get(i));
			rs=pstat.executeQuery();
			
			UserSeatDTO dto = new UserSeatDTO();
			String value="";
			String seat="";
				while(rs.next()) {
					
					
					
					value+=rs.getString("seatValue")+" ";
					seat+= rs.getString("seatRow")+rs.getString("seatColumn")+" ";
					
					
				
				
				}
				dto.setSeatValue(value);
				dto.setSeat(seat);
				
				list.add(dto);
			
			
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return null;
	}
	

}
