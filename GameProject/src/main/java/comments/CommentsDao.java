package comments;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import board.BoardDto;

public class CommentsDao {
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
	
	//댓글 작성
		public void insert(CommentsDto dto) {
			//SQL문(인서트로 삽입하기)
			String sql = "insert into comments(conum, cobcode, cocode, cotag, cdate) values(null, ?, ?, ?, NOW())";
			
			try(
				Connection con = getConnection();						//커넥션 얻기
				PreparedStatement pstmt = con.prepareStatement(sql);	//SQL 실행하기
			) {
			//게시판 번호, 댓글 작성자, 댓글 내용 순서로 들어가기
			pstmt.setString(1, dto.getCobcode());
			pstmt.setInt(2, dto.getCocode());
			pstmt.setString(3, dto.getCotag());
			
			//변경하는 쿼리를 쓸때 executeUpdate를 이용
			int i = pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		//댓글 보기(i로 게시판 번호 가져오기)
		public ArrayList<CommentsDto> list(int i) {
			//배열 만들기
			ArrayList<CommentsDto> dtos = new ArrayList<CommentsDto>();
			//sql문(select로 찾아오기(desc로 최근 만든것 부터 출력))
			String sql = "select * from comments where cocode = "+ i +" order by conum desc";
			try (
				Connection con = getConnection();					//커넥션 얻기
				java.sql.Statement stmt = con.createStatement();	//SQL 실행
			) {
				//sql문 결과
				ResultSet rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						//1. 레코드셋에서 데이터를 가져온다.
						int conum = rs.getInt("conum");
						String cobcode = rs.getString("cobcode");
						int cocode = rs.getInt("cocode");
						String cotag = rs.getString("cotag");
						String cdate = rs.getString("cdate");
						System.out.println(cdate);
						
						//2. 그 데이터들로 Dto를 만든다.
						CommentsDto dto = new CommentsDto(conum, cobcode, cocode, cotag, cdate);
						//3. 그  Dto를 배열(ArrayList)에 추가한다.
						dtos.add(dto);
					}
				} catch (Exception e) {
				e.printStackTrace();
			}
			//배열을 리턴해준다.
			return dtos;
		}
}
