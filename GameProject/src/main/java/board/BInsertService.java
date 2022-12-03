package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BInsertService implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      request.setCharacterEncoding("utf-8");

	      //7. insertForm 에서 입력한 subject, content, writer 를 받아와 알맞는 변수에 입력하세요.
	      String title = request.getParameter("btitle");
	      String tag = request.getParameter("btag");
	      String writer = request.getParameter("writer");
	      HttpSession session = request.getSession();
	      int category = (int)session.getAttribute("category");
	      String email = (String)session.getAttribute("email");
	      
	      BoardDto dto = new BoardDto(0, title, tag, email, null, 0, category); 
	      BoardDao dao = new BoardDao();
	      dao.insert(dto);

	}

}
