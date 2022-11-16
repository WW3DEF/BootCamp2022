package signUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LoginCheckDao {
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
	// 가입한 유저가 맞는지 체크함
	public int checkUser(LoginCheckDto ldto) {
		String sql = "select pwd from signup where email=? and pwd=?";
		int check=0;
		try(
			Connection con = getConnection();	// 커넥션 얻기
			PreparedStatement pstmt = con.prepareStatement(sql);	// SQL 실행 준비
		)
		{
			pstmt.setNString(1, ldto.getEmail());
			pstmt.setNString(2, ldto.getPwd());
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
}
