package game;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cart.CartDto;

public class SearchDao {
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
	// 검색어를 입력했을때 해당 되는 게임들의 정보를 불러옴 (해당 메소드는 와일드 카드를 붙임)
	public ArrayList<SearchDto> SelectGame(String Search) {
		ArrayList<SearchDto> dtos = new ArrayList<SearchDto>();
		String sql = "select * from game where gname like ?";
		int gnum = 0;
		String gname = "";
		int gprice = 0;
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, Search+"%");
			
		try (ResultSet rs = pstmt.executeQuery();) 
		{
				while(rs.next()) {
					gnum = rs.getInt("gnum");
					gname = rs.getString("gname");
					gprice = rs.getInt("gprice");
					
					SearchDto dto = new SearchDto(gnum, gname, gprice);
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
	// 태그를 검색함
	public ArrayList<SearchDto> SelectTag(String Search) {
		ArrayList<SearchDto> dtos = new ArrayList<SearchDto>();
		String sql = "select * from game where gtag like ?";
		int gnum = 0;
		String gname = "";
		int gprice = 0;
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, "%"+Search+"%");
			
		try (ResultSet rs = pstmt.executeQuery();) 
		{
				while(rs.next()) {
					gnum = rs.getInt("gnum");
					gname = rs.getString("gname");
					gprice = rs.getInt("gprice");
					
					SearchDto dto = new SearchDto(gnum, gname, gprice);
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
	// 다른 테이블의 기본 키들을 이중쿼리를 통해 장바구니에 표시할 게임 정보들을 불러옴
	public ArrayList<SearchDto> SelectCartlist(CartDto dto) {
		ArrayList<SearchDto> dtos = new ArrayList<SearchDto>();
		String sql = "SELECT * FROM game WHERE gnum = ( SELECT cgame FROM cart WHERE cuser=? AND cgame=?);";
		int gnum = 0;
		String gname = "";
		int gprice = 0;
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, dto.getCuser());
			pstmt.setInt(2, dto.getCgame());
			
		try (ResultSet rs = pstmt.executeQuery();) 
		{
				while(rs.next()) {
					gnum = rs.getInt("gnum");
					gname = rs.getString("gname");
					gprice = rs.getInt("gprice");
					
					SearchDto sdto = new SearchDto(gnum, gname, gprice);
					dtos.add(sdto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
}