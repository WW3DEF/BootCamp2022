package signUp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SInsertService implements SignUpService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원정보를 insert시키기
		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String info = request.getParameter("pwd");
		
		SignUpDao dao = new SignUpDao();
		SignUpDto dto = new SignUpDto(email, uname, pwd, info, 0);
		dao.insert(dto);
		
		response.sendRedirect("login.jsp?email="+ email);

	}

}
