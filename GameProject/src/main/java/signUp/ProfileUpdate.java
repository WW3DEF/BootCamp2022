package signUp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProfileUpdate implements SignUpService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
  		String uname = request.getParameter("uname");
		System.out.println(uname);
		String infor = request.getParameter("infor");
		System.out.println(infor);
		String email = (String) session.getAttribute("email");
		System.out.println(email);

		ProfileDao dao = new ProfileDao();
		dao.profileUpdate(uname, infor, email);
		
	}
}
