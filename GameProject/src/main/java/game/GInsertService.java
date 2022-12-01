package game;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.CartDao;
import cart.CartDto;

public class GInsertService implements GameService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String gname = request.getParameter("gname");
		String email = (String)session.getAttribute("email");
		
		CartDao dao = new CartDao();
		ArrayList<SearchDto> dtos = dao.SelectGame(gname);
		
		for(SearchDto dto : dtos) {
				int check = dao.checkUnique(dto.getGnum());
				if(check == 0) {
				CartDto cdto = new CartDto(email, dto.getGnum(), dto.getGprice());
				dao.insert(cdto);
			} else {
				System.out.println("이미 장바구니");
			}
		}

	}

}
