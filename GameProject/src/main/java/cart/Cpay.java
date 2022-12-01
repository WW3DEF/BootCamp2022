package cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Cpay implements CartService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//결제 처리. 해당 유저의 장바구니를 비워줌
		request.setCharacterEncoding("utf-8");

		CartDao dao = new CartDao();
		HttpSession session = request.getSession();
		String smail = (String) session.getAttribute("email");
		System.out.println(smail);
		dao.payClearCart(smail);
		

	}
}
