package comments;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CInsertService implements CommentsService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//언어 설정
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		//클라이언트에서 전달된 데이터
		System.out.println(session.getAttribute("bnum"));
		System.out.println(request.getParameter("cotag"));
		System.out.println(session.getAttribute("email"));
		int cocode = (int)session.getAttribute("bnum");
		String cobcode = (String)session.getAttribute("email");
		String cotag = (String)request.getParameter("cotag");
		
		//dao 및 dto 전달 후 인서트하기
		CommentsDao dao = new CommentsDao();
		CommentsDto dto = new CommentsDto(0, cobcode, cocode, cotag, null);
		dao.insert(dto);

	}

}
