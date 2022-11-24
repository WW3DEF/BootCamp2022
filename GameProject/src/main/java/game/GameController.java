package game;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	String viewPage = null;
    	
    	String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
    	
    	
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
