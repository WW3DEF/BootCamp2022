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
    	} else if(com != null && com.equals("boardView")) { 
    		BoardService service = new BViewService2();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/TeamProject/boardView.jsp";
    	} else if(com != null && com.equals("BInsert")) { 
    		BoardService service = new BInsertService();
    		service.execute(request, response);
        	int category = (int) session.getAttribute("category");
    		viewPage = "board.board?category="+category;
    	} else if(com != null && com.equals("boardUpdate")) { 
    		BoardService service = new BViewService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/TeamProject/boardUpdate.jsp";
    	} else if(com != null && com.equals("BUpdate")) { 
    		BoardService service = new BUpdateService();
    		service.execute(request, response);
    		int bnum = Integer.parseInt(request.getParameter("bnum"));
    		System.out.println(bnum);
    		viewPage = "/WEB-INF/TeamProject/boardView.board?bnum="+bnum;
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
