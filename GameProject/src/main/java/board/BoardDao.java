package board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	private Connection getConnection() throws Exception {
	      //1-1. Context 객체 얻기
	      Context initCtx = new InitialContext(); 
	      //1-2. "java:comp/env"에 해당하는 객체를 찾아서 envCtx에 삽입
	      Context envCtx = (Context)initCtx.lookup("java:comp/env");
	      //1-3. "jdbc/joypark"에 해당되는 객체를 찾아서 ds에 삽입
	      DataSource ds = (DataSource)envCtx.lookup("jdbc/alstjr");
	      //1-4. 커넥션 풀로 부터 커넥션 객체를 얻어냄
	      Connection con = ds.getConnection();
	      return con;
	}
	
	public void insert(BoardDto dto) {
		String sql = "INSERT INTO board VALUES(null, ?, ?, ?, SYSDATE(), 0, ?)";
		
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{   
			pstmt.setString(1,  dto.getBtitle());
			pstmt.setString(2,  dto.getBtag());
			pstmt.setString(3,  dto.getBwriter());
			pstmt.setInt(4, dto.getCategory());
			
			System.out.println(dto.getBtitle());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//게시판 보기
		public ArrayList<BoardDto> list(int c, int page, int numOfRecords) {
			//배열 만들기
			ArrayList<BoardDto> dtos = new ArrayList<BoardDto>();
			String sql = "select * from board where category = "+ c +" order by bnum desc limit ?, ?";
			try (
				Connection con = getConnection();					//커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);
			) {
				pstmt.setInt(1, (page-1)*numOfRecords);
				pstmt.setInt(2, numOfRecords);
				try(ResultSet rs = pstmt.executeQuery();)
				{
					while(rs.next()) {
						//1. 레코드셋에서 데이터를 가져온다.
						int bnum = rs.getInt("bnum");
						String btitle = rs.getString("btitle");
						String btag = rs.getString("btag");
						String bwriter = rs.getString("bwriter");
						Date bdate = rs.getDate("bdate");
						int bview = rs.getInt("bview");
						int category = rs.getInt("category");
						//2. 그 데이터들로 Dto를 만든다.
						BoardDto dto = new BoardDto(bnum, btitle, btag, bwriter, bdate, bview, category);
						//3. 그 Dto를 배열(ArrayList)에 추가한다.
						dtos.add(dto);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} 
			} catch (Exception e) {
				e.printStackTrace();
			}
		return dtos;
		}
		
		public int recordCount(int i) {
			int count = 0;
			String sql = "select count(bnum) from board where category = "+ i;
			
			try (	Connection con = getConnection();
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
				){
					rs.next();
					count = rs.getInt(1);
			} catch (Exception e) {	
				e.printStackTrace();
			}
			return count;
		}
		
		public BoardDto selectOne(int bnum) {
			String sql = "select * from board where bnum = ?";
			BoardDto dto = new BoardDto();
			
			try (	Connection con = getConnection();
					PreparedStatement pstmt = con.prepareStatement(sql);
					)
			{	pstmt.setInt(1, bnum);
			
				try(ResultSet rs = pstmt.executeQuery();)
				{
					rs.next();
					
					dto.setBnum(bnum);
					dto.setBtitle(rs.getString("btitle"));
					dto.setBtag(rs.getString("btag"));
					dto.setBwriter(rs.getString("bwriter"));
					dto.setBdate(rs.getDate("bdate"));
					dto.setBview(rs.getInt("bview"));
					dto.setCategory(rs.getInt("category"));
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dto;
		}
			
}
