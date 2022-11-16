package cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import game.SearchDto;

public class CartDao {
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
	
	// 검색어를 매개변수로 받은걸로 게임 정보 불러오기
	public ArrayList<SearchDto> SelectGame(String Search) {
		ArrayList<SearchDto> dtos = new ArrayList<SearchDto>();
		String sql = "select * from game where gname like ?";
		System.out.println(sql);
		int gnum = 0;
		String gname = "";
		int gprice = 0;
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, Search);
			
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
	// 장바구니에 입력
	public void insert(CartDto dto) {
		String sql = "insert into cart(cuser, cgame, cprice) values(?, ? ,?)";
		try(Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
		System.out.println(dto.getCprice());
		pstmt.setString(1, dto.getCuser());
		pstmt.setInt(2, dto.getCgame());
		pstmt.setInt(3, dto.getCprice());
		
		pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	// game의 기본 키인 gnum을 조건 달아 검색해서 if문으로 중복(UNIQUE)인지 아닌지 판별
	public int checkUnique(int cgame) {
		String sql = "select * from cart where cgame=?";
		int check=0;
		try(
			Connection con = getConnection();	// 커넥션 얻기
			PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setInt(1, cgame);
			try(ResultSet rs = pstmt.executeQuery();)	
			{
				if(rs.next()) {
					check=1;
				} else {
					check=0;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
		e.printStackTrace();
		}
		return check;
	}
	// 회원정보 테이블의 기본키인 email로 조건을 걸어 누가 어떤 게임을 담았는지 출력
	public ArrayList<CartDto> SelectCart(String cuser) {
		ArrayList<CartDto> dtos = new ArrayList<CartDto>();
		String sql = "select * from cart where cuser=?";
		int cgame = 0;
		int cprice = 0;
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, cuser);
			
		try (ResultSet rs = pstmt.executeQuery();) 
		{
				while(rs.next()) {
					cuser = rs.getString("cuser");
					cgame = rs.getInt("cgame");
					cprice = rs.getInt("cprice");
					
					CartDto dto = new CartDto(cuser, cgame, cprice);
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
	// 회원가입의 기본키인 email를 조건달아 조건에 해당하는 유저의 장바구니 안에 담긴 게임들의 총합 가격를 검색
	public int cartSumSelect(String cuser) {
		String sql = "select sum(cprice) from cart where cuser=?";
		int sum=0;
		try(
			Connection con = getConnection();	// 커넥션 얻기
			PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, cuser);
			try(ResultSet rs = pstmt.executeQuery();)	
			{
				while(rs.next()) {
					sum = rs.getInt("sum(cprice)");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
		e.printStackTrace();
		}
		return sum;
	}
	// email로 로그인한 유저의 장바구니 안을 결제 했을때 비워버림
	public void payClearCart(String cuser) {
		String sql = "delete from cart where cuser=?";
		try(
			Connection con = getConnection();	// 커넥션 얻기
			PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setString(1, cuser);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
}