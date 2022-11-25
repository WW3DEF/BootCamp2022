package signUp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SignUpDao {
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
	// 입력 칸에 입력한 정보들을 받아서 회원정보 테이블에 넣음
	public void insert(SignUpDto dto) {
		String sql = "insert into signup(email, uname, pwd, credit) values(?, ? , ?, 0)";
		try(Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
		pstmt.setString(1, dto.getEmail());
		pstmt.setString(2, dto.getUname());
		pstmt.setString(3, dto.getPwd());
		
		pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}