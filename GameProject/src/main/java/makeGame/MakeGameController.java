package makeGame;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.BInsertService;
import board.BListService;
import board.BoardService;

@WebServlet("*.make")
public class MakeGameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	String viewPage = null;
    	
    	String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".make"));
    	System.out.println("현재 페이지는 " + com + "입니다.");
    	
    	if(com != null && com.equals("mBoard")) { 
    		BoardService service = new BListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/TeamProject/mBoard.jsp";
    	} else if(com != null && com.equals("mBoardWrite")) { 
    		viewPage = "/WEB-INF/TeamProject/mBoardWrite.jsp";
    	} else if(com != null && com.equals("BInsert")) { 
    		BoardService service = new BInsertService();
    		service.execute(request, response);
    		viewPage = "mBoard.make?category";
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
