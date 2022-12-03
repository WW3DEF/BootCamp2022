package board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BListService implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      request.setCharacterEncoding("utf-8");
		int p = 1;
		int numOfRecords = 10;
		int numOfPages = 5;
		
		int c = Integer.parseInt(request.getParameter("category"));
		
		String page = request.getParameter("p");
		if(page != null && !page.equals("")) {
			p = Integer.parseInt(page);
		}

		BoardDao dao = new BoardDao();
		ArrayList<BoardDto> dtos = dao.list(c, p, numOfRecords);
		
		int count = dao.recordCount(c);
		
		int startNum = p - (p - 1) % numOfPages;
		
		int lastNum = (int)(Math.ceil((float)count / (float)numOfRecords));
		
		//5. 이 페이지의 저장소인 pageContext에 DB에서 검색해온 dtos 값을 저장하시오.
		request.setAttribute("dtos", dtos);
		request.setAttribute("p", p);
		request.setAttribute("startNum", startNum);
		request.setAttribute("lastNum", lastNum);
		request.setAttribute("numOfPages", numOfPages);
		
	}

}
