package signUp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckService implements SignUpService{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String lemail = request.getParameter("lemail");
		String lpwd = request.getParameter("lpwd");
		
		LoginCheckDto ldto = new LoginCheckDto(lemail, lpwd);
		LoginCheckDao ldao = new LoginCheckDao();
		int check = ldao.checkUser(ldto);
		HttpSession session = request.getSession();
		
		if (check == 1) {
			request.setAttribute("email", lemail);
			String email = (String)request.getAttribute("email");
			request.setAttribute("Login", "MainPage.sign");
			session.setAttribute("email", email);
		} else {

			request.setAttribute("Login", "Login.sign");
		}
	}
}
