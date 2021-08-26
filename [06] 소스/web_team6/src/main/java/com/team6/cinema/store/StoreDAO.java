package com.team6.cinema.store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.team6.cinema.DBUtil;


/**
 *  스토어 DAO 페이지
 * @author 차소현
 *
 */
public class StoreDAO {

	
	// DB연결
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	
	
	public StoreDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {

			System.out.println("StoreDAO.StoreDAO()");
			e.printStackTrace();
		}

	}

	
	
	// StoreAddOk 서블릿이 DTO를 주면 DB에 insert해주는 작업
	public int add(StoreDTO dto) {

		try {

			String sql = "insert into tblStore (itemSeq, itemName, itemPrice, itemCount, itemClass, itemImage)"
					+ " values (seqStore.nextVal, ?,?,?,?,?)";

			// 매개변수가 있어서 pstat만들기
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getItemName());
			pstat.setInt(2, dto.getItemPrice());
			pstat.setInt(3, dto.getItemCount());
			pstat.setString(4, dto.getItemClass());
			pstat.setString(5, dto.getItemImage());

			
			// 반환값 없는 쿼리 -> executeUpdate
			return pstat.executeUpdate(); // 성공:1, 실패:0 반환

		} catch (Exception e) {
			System.out.println("StoreDAO.add()");
			e.printStackTrace();
		}

		return 0;
	}
	

	// EditOk 서블릿이 수정할 DTO를 준다면 -> update
	public int edit(StoreDTO dto) {

		try {

			String sql = "update tblStore set itemName = ?, itemPrice = ?, itemCount = ? itemClass= ? itemImage =? where itemseq = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getItemName());
			pstat.setInt(2, dto.getItemPrice());
			pstat.setInt(3, dto.getItemCount());
			pstat.setString(4, dto.getItemClass());
			pstat.setString(4, dto.getItemImage());
			pstat.setString(4, dto.getItemSeq());

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("BoardDAO.edit()");
			e.printStackTrace();
		}

		return 0;
	}

	
	//DelOk 서블릿이 글번호를 주면 -> 글을 삭제함

	public int del(String seq) {

		try {

			String sql = "delete from tblStore where itemseq = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			// 반환값X -> executeUpdate , 성공시 1 반환, 실패시 0 반환
			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("StoreDAO.del()");
			e.printStackTrace();
		}

		return 0;
	}

	
	//list 서블릿이 itemClass(제품분류)값을 주면 -> 해당 값을 출력함 
	public ArrayList<StoreDTO> listByItemClass(String itemClass) {

		try {
			
			String sql = "select * from tblStore where itemClass= ? ";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, itemClass);
			
			//select -> 반환 값 있는 쿼리
			rs = pstat.executeQuery();
			
			
			// ResultSet -> ( 변환 ) => ArrayList<StoreDTO>
			ArrayList<StoreDTO> list = new ArrayList<StoreDTO>();

			
			while (rs.next()) {

				//있으면 객체(DTO) 반환
				StoreDTO dto = new StoreDTO();

				//rs.getXXX() -> dto 추가
				dto.setItemSeq(rs.getString("itemSeq"));
				dto.setItemName(rs.getString("itemName"));
				dto.setItemPrice(rs.getInt("itemPrice"));
				dto.setItemCount(rs.getInt("itemCount"));
				dto.setItemClass(rs.getString("itemClass"));
				dto.setItemImage(rs.getString("itemImage"));

				list.add(dto);
				
			}

			// 이 루프를 빠져나가면
			// ArrayList == ResultSet 이랑 같은 상태가 된다

			
			return list;

			
		} catch (Exception e) {
			System.out.println("StoreDAO.listByItemClass()");
			e.printStackTrace();

		}

		return null;

	}
	
	
	//itemClass값으로 조회하기
	public ArrayList<StoreDTO> listByItemClass(String itemClass, int start, int limit) {

		try {
			
			//String sql = "select * from tblStore where itemClass= ? order by itemseq desc";
			
			String sql = "SELECT rowseq, ts.*"
					+ "    FROM ("
					+ "        SELECT ROWNUM as rowseq, ts.*"
					+ "            FROM ("
					+ "                select ts.*"
					+ "                    from tblStore ts"
					+ "                    where itemclass = ?"
					+ "                    order by itemseq desc"
					+ "            ) ts"
					+ "    ) ts"
					+ "    WHERE rowseq > ? AND rowseq <= ?";

			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, itemClass);
			pstat.setInt(2, start);
			pstat.setInt(3, limit);
			
			//select -> 반환 값 있는 쿼리
			rs = pstat.executeQuery();
			
			
			// ResultSet -> ( 변환 ) => ArrayList<StoreDTO>
			ArrayList<StoreDTO> list = new ArrayList<StoreDTO>();

			
			while (rs.next()) {

				//있으면 객체(DTO) 반환
				StoreDTO dto = new StoreDTO();

				//rs.getXXX() -> dto 추가
				dto.setItemSeq(rs.getString("itemSeq"));
				dto.setItemName(rs.getString("itemName"));
				dto.setItemPrice(rs.getInt("itemPrice"));
				dto.setItemCount(rs.getInt("itemCount"));
				dto.setItemClass(rs.getString("itemClass"));
				dto.setItemImage(rs.getString("itemImage"));

				list.add(dto);
				
			}

			// 이 루프를 빠져나가면
			// ArrayList == ResultSet 이랑 같은 상태가 된다

			
			return list;

			
		} catch (Exception e) {
			System.out.println("StoreDAO.listByItemClass()");
			e.printStackTrace();

		}

		return null;

	}


	//list 서블릿에서 총 갯수 출력해달라고 부름
	public int countByItemClass(String itemClass) {
		try {
			String sql = "select count(*) from tblStore where itemClass= ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, itemClass);
			
			//select -> 반환 값 있는 쿼리
			rs = pstat.executeQuery();
			
			if(rs.next())
				return rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	
	
	
	//list에서 itemSeq를 주면 -> view에 출력
	public ArrayList<StoreDTO> listByItemSeq(String itemSeq) {

		try {
			
			String sql = "select * from tblStore where itemSeq= ? ";

			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, itemSeq);
//			pstat.setString(2, itemSeq);
			
			//select -> 반환 값 있는 쿼리
			rs = pstat.executeQuery();
			
			
			// ResultSet -> ( 변환 ) => ArrayList<StoreDTO>
			ArrayList<StoreDTO> itemList = new ArrayList<StoreDTO>();

			
			while (rs.next()) {

				//있으면 객체(DTO) 반환
				StoreDTO dto = new StoreDTO();

				//rs.getXXX() -> dto 추가
				dto.setItemSeq(rs.getString("itemSeq"));
				dto.setItemName(rs.getString("itemName"));
				dto.setItemPrice(rs.getInt("itemPrice"));
				dto.setItemCount(rs.getInt("itemCount"));
				dto.setItemClass(rs.getString("itemClass"));
				dto.setItemImage(rs.getString("itemImage"));

				itemList.add(dto);
				
			}

			// 이 루프를 빠져나가면
			// ArrayList == ResultSet 이랑 같은 상태가 된다

			
			return itemList;

			
		} catch (Exception e) {
			System.out.println("StoreDAO.listByItemSeq()");
			e.printStackTrace();

		}

		return null;

	}



	public int addStoreHistory(String userSeq, String itemSeq, String count) {
		// TODO Auto-generated method stub
		return 0;
	}
			 
		
	
	
	
	
	
	
	/*
	 * public ArrayList<StoreDTO> RandomList(String itemClass, String itemClass) {
	 * 
	 * try {
	 * 
	 * String sql = "select *" + "from  (select * from tblStore " +
	 * "where itemClass= ? or itemClass= ?" + "order by dbms_random.value)" +
	 * "where rownum <= 4";
	 * 
	 * 
	 * 
	 * pstat = conn.prepareStatement(sql);
	 * 
	 * pstat.setString(1, itemClass); pstat.setString(2, itemClass);
	 * 
	 * //select -> 반환 값 있는 쿼리 rs = pstat.executeQuery();
	 * 
	 * 
	 * // ResultSet -> ( 변환 ) => ArrayList<StoreDTO> ArrayList<StoreDTO> itemList =
	 * new ArrayList<StoreDTO>();
	 * 
	 * 
	 * while (rs.next()) {
	 * 
	 * //있으면 객체(DTO) 반환 StoreDTO dto = new StoreDTO();
	 * 
	 * //rs.getXXX() -> dto 추가 dto.setItemSeq(rs.getString("itemSeq"));
	 * dto.setItemName(rs.getString("itemName"));
	 * dto.setItemPrice(rs.getInt("itemPrice"));
	 * dto.setItemCount(rs.getInt("itemCount"));
	 * dto.setItemClass(rs.getString("itemClass"));
	 * dto.setItemImage(rs.getString("itemImage"));
	 * 
	 * itemList.add(dto);
	 * 
	 * }
	 * 
	 * // 이 루프를 빠져나가면 // ArrayList == ResultSet 이랑 같은 상태가 된다
	 * 
	 * 
	 * return itemList;
	 * 
	 * 
	 * } catch (Exception e) { System.out.println("StoreDAO.listByItemSeq()");
	 * e.printStackTrace();
	 * 
	 * }
	 * 
	 * return null;
	 * 
	 * }
	 * 
	 */
	
	

}// class
