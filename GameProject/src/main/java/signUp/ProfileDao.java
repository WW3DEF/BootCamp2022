package signUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProfileDao {
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
	// email을 담은 세션의 값을 받아서 해당 유저의 나머지 정보인 이름과 소개글을 검색해서 프로필에 표시해줌
	public ArrayList<ProfileDto> profileNameSearch(String cmail) {
		ArrayList<ProfileDto> dtos = new ArrayList<ProfileDto>();
		String sql = "select uname, infor from signup where email=?";
		String uname = "";
		String infor = "";
		try(
				Connection con = getConnection();	// 커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, cmail);
			
		try (ResultSet rs = pstmt.executeQuery();) 
		{
				while(rs.next()) {
					uname = rs.getString("uname");
					infor = rs.getString("infor");
					
					ProfileDto dto = new ProfileDto(uname, infor);
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
	// 프로필을 수정했을때 텍스트안의 값을 받아서 업데이트 시킴
	public void profileUpdate(String uname, String infor, String email) {
			String sql = "update signup set uname=?, infor=? where email=?";
			System.out.println(sql);
			try(Connection con = getConnection();
					PreparedStatement pstmt = con.prepareStatement(sql);
				)
			{
			pstmt.setString(1, uname);
			pstmt.setString(2, infor);
			pstmt.setString(3, email);
			
			pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			
		}
	}
}