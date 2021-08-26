package com.team6.cinema.movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;

import com.team6.cinema.DBUtil;

/***
 * 영화 DAO 클래스
 * @author 6조
 *
 */
public class MovieDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MovieDAO() {

		try {

			conn = DBUtil.open();

		} catch (Exception e) {
			e.getStackTrace();
		}

	}

	public ArrayList<MovieDTO> getMostMovie() {

		try {

			String sql = "select * from vwMovie where rnum between 1 and 4";

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			ArrayList<MovieDTO> mList = new ArrayList<MovieDTO>();

			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				mList.add(dto);

			}

			return mList;

		} catch (Exception e) {
			e.printStackTrace();

		}

		return null;
	}

	public ArrayList<MovieDTO> getMovieList() {

		try {

			String sql = "select * from vwMovie";

			stat = conn.createStatement();

			rs = stat.executeQuery(sql);

			ArrayList<MovieDTO> mList = new ArrayList<MovieDTO>();

			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				mList.add(dto);

			}

			return mList;

		} catch (Exception e) {
			e.printStackTrace();

		}

		return null;
	}

	public ArrayList<MovieDTO> getThisMonthMovie(String year, String month) {

		try {

			String sql = "select * from tblMovie where movieOpen like '%%' || ? || '/' || ? || '%%'";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, year);
			pstat.setString(2, month);

			rs = pstat.executeQuery();

			ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();

			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				list.add(dto);
			}
			
			return list;

		} catch (Exception e) {

		}

		return null;
	}

	public ArrayList<MovieDTO> getExpectMovie(String today) {

		try {

			String sql = "select * from tblMovie where movieOpen > ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, today);

			rs = pstat.executeQuery();

			ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();

			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));
					
				list.add(dto);
			}

			return list;
			
		} catch (Exception e) {

		}

		return null;

	}

	public ArrayList<MovieDTO> getPlayingMovie(String strPost, String today) {
		
		
		try {

			String sql = "select * from tblMovie where movieOpen between ? and ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, strPost);
			pstat.setString(2, today);

			rs = pstat.executeQuery();

			ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();

			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				list.add(dto);
			}
			return list;

		} catch (Exception e) {

		}

		return null;
	}

	public MovieDTO getDetailMovie(String mseq) {
		
		
		try {

			String sql = "select * from tblMovie where movieSeq = ?";
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, mseq);

			rs = pstat.executeQuery();

			

			if (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				return dto;
			}
			

		} catch (Exception e) {

		}

		return null;
	}
	
	//---------------------------------------------------------------------------------------
	
	
	public int del(String seq) {

		try {

			String sql = "delete from tblMovie where movieSeq =?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, seq);

			return pstat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MovieDAO.del()");
			e.printStackTrace();
		}

		return 0;
	}

	public int edit(MovieDTO dto) {

		try {

			String sql = "update tblMovie " + "movieKorName=?, " + "movieEngName=?, " + "movieGenre=?, "
					+ "movieOpen=?, " + "movieDirector=?," + "movieActor," + "movieTime," + "movieCountry,"
					+ "movieFormat," + "movieCompany," + "movieAge," + "moviePoster," + "movieStory"
					+ "where movieSeq =?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getMovieKorName());
			pstat.setString(2, dto.getMovieEngName());
			pstat.setString(3, dto.getMovieGenre());
			pstat.setString(4, dto.getMovieOpen());
			pstat.setString(5, dto.getMovieDirector());
			pstat.setString(6, dto.getMovieActor());
			pstat.setString(7, dto.getMovieTime());
			pstat.setString(8, dto.getMovieCountry());
			pstat.setString(9, dto.getMovieFormat());
			pstat.setString(10, dto.getMovieCompany());
			pstat.setString(11, dto.getMovieAge());
			pstat.setString(12, dto.getMoviePoster());
			pstat.setString(13, dto.getMovieStory());
			pstat.setString(14, dto.getMovieSeq());

			return pstat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MovieDAO.edit()");
			e.printStackTrace();

		}

		return 0;
	}
	
	

	public int delMoviecomment(String moviecommentseq) {

		try {

			String sql = "delete from tblMovieComment where movieCommentSeq =?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, moviecommentseq);

			return pstat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MovieDAO.delmoviecomment()");
			e.printStackTrace();

		}

		return 0;
	}



	public int MoviecommentDelete(String movieseq) {

		try {

			String sql = "delete from tblMovieComment where movieseq=?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, movieseq);

			return pstat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MovieDAO.MovieCommentDelte()");
			e.printStackTrace();

		}

		return 0;
	}
	
	public int add(MovieDTO dto) {

		//MovieDTO [userId=null, movieseq=null, moviekorname=ㅁㄴㅇㄹ, movieengname=ㅁㄴㅇㄹ, moviegenre=액션, movieopen=null, moviedirector=ㅁㄴㅇㄹ, movieactor=ㅁㄴㅇㄹ, movietime=null, moviecountry=null, movieformat=3D, moviecompany=ㅌㅍㅋㅌ, movieage=2, movieposter=null, moviestory=ㅁㄴㅇㄹ, moviescore=null, getMovieseq()=null, getMovietime()=null, getMoviekorname()=ㅁㄴㅇㄹ, getUserId()=null, getMoviescore()=null, getMovieengname()=ㅁㄴㅇㄹ, getMoviegenre()=액션, getMovieage()=2, getMovieopen()=null, getMoviedirector()=ㅁㄴㅇㄹ, getMovieactor()=ㅁㄴㅇㄹ, getMoviecountry()=null, getMovieformat()=3D, getMoviecompany()=ㅌㅍㅋㅌ, getMoviestory()=ㅁㄴㅇㄹ, getMovieposter()=null, getClass()=class com.team6.cinema.movie.MovieDTO, hashCode()=1252182580, toString()=com.team6.cinema.movie.MovieDTO@4aa2ca34]

		System.out.println(dto);
		
		try {

			String sql = String.format(
					"insert into tblMovie(" + "movieSeq," + "movieKorName," + "movieEngName," + "movieGenre,"
							+ "movieOpen," + "movieDirector," + "movieActor," + "movieTime," + "movieCountry,"
							+ "movieFormat," + "movieCompany," + "movieAge," + "moviePoster," + "movieStory)"
							+ "values(seqMovie.nextVal,?,?,?,to_date('%s-%s-%s','yyyy-mm-dd'),?,?,?,?,?,?,?,?,?)",
					dto.getMovieOpen().split("-")[0], dto.getMovieOpen().split("-")[1],
					dto.getMovieOpen().split("-")[2]);

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getMovieKorName());
			pstat.setString(2, dto.getMovieEngName());
			pstat.setString(3, dto.getMovieGenre());
			pstat.setString(4, dto.getMovieDirector());
			pstat.setString(5, dto.getMovieActor());
			pstat.setString(6, dto.getMovieTime());
			pstat.setString(7, dto.getMovieCountry());
			pstat.setString(8, dto.getMovieFormat());
			pstat.setString(9, dto.getMovieCompany());
			pstat.setString(10, dto.getMovieAge());
			pstat.setString(11, dto.getMoviePoster());
			pstat.setString(12, dto.getMovieStory());
			

			return pstat.executeUpdate();

		} catch (Exception e) {

			System.out.println("MovieDAO.add()");
			e.printStackTrace();

		}

		return 0;
	}


	
	
	
	
	

	

	//MovieDTO 반환
	public ArrayList<MovieDTO> list() {
		
		try {
			
			String sql = "select moviekorname,movieposter,moviegenre,movieopen from tblMovie";

			pstat = conn.prepareStatement(sql);

			rs = pstat.executeQuery();

			ArrayList<MovieDTO> list = new ArrayList<MovieDTO>(); //옮겨담을 큰 상자

			while (rs.next()) {
				

				MovieDTO dto = new MovieDTO();

				
				dto.setMovieKorName(rs.getString("moviekorname"));	//영화이름
				
				dto.setMovieGenre(rs.getString("moviegenre")); //영화장르
				dto.setMovieOpen(rs.getString("movieopen"));	//개봉일
				
				dto.setMoviePoster(rs.getString("movieposter")); //영화포스터
				

				list.add(dto);
			}
			return list;
				
		} catch(Exception e) {
			
			System.out.println("MovieDAO.list()");
			e.printStackTrace();
			
		}
		
		return null;
	}

	//MovieMain에서 movielist요청
	public ArrayList<MovieDTO> getMovielist() {
	
		try {
			String sql ="select * from vwMovie";
			
			stat = conn.createStatement();
			
			rs= stat.executeQuery(sql);
			
			ArrayList<MovieDTO> mList = new ArrayList<MovieDTO>();
			
			
			while (rs.next()) {

				MovieDTO dto = new MovieDTO();

				dto.setMovieSeq(rs.getString("movieSeq"));
				dto.setMovieKorName(rs.getString("movieKorName"));
				dto.setMovieEngName(rs.getString("movieEngName"));
				dto.setMovieGenre(rs.getString("movieGenre"));
				dto.setMovieOpen(rs.getString("movieOpen"));
				dto.setMovieDirector(rs.getString("movieDirector"));
				dto.setMovieActor(rs.getString("movieActor"));
				dto.setMovieTime(rs.getString("movieTime"));
				dto.setMovieCountry(rs.getString("movieCountry"));
				dto.setMovieCompany(rs.getString("movieCompany"));
				dto.setMovieFormat(rs.getString("movieFormat"));
				dto.setMovieAge(rs.getString("movieAge"));
				dto.setMoviePoster(rs.getString("moviePoster"));
				dto.setMovieStory(rs.getString("movieStory"));

				mList.add(dto);

			}
			return mList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}


	

}
