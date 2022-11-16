package signUp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileUpdate implements SignUpService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uname = request.getParameter("Ncontent");
		String infor = request.getParameter("Infocontent");
		String email = (String) request.getAttribute("email");

		ProfileDao dao = new ProfileDao();
		dao.profileUpdate(uname, infor, email);
		
		response.sendRedirect("profile.jsp");

	}

}
