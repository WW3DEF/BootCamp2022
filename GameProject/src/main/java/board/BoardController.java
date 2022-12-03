package board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	String viewPage = null;
    	
    	HttpSession session = request.getSession();
    	
    	String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".board"));
    	System.out.println("현재 페이지는 " + com + "입니다.");
    	
    	if(com != null && com.equals("board")) { 
    		BoardService service = new BListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/TeamProject/board.jsp";
    	} else if(com != null && com.equals("boardWrite")) { 
    		viewPage = "/WEB-INF/TeamProject/boardWrite.jsp";
    	} else if(com != null && com.equals("BInsert")) { 
    		BoardService service = new BInsertService();
    		service.execute(request, response);
        	int category = (int) session.getAttribute("category");
    		viewPage = "board.board?category="+category;
    		System.out.println(viewPage);
    	}
    	
    	RequestDispatcher rd = request.getRequestDispatcher(viewPage);
    	rd.forward(request, response);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request,response);
	}

}
