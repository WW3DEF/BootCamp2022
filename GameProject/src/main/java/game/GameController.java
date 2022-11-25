package game;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.game")
public class GameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	String viewPage = null;
    	
    	String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".game"));
    	
    	if(com != null && com.equals("BattleFieldInformation")) { 
    		viewPage = "/TeamProject/Information/BattleFieldInformation.jsp";
    	} else if(com != null && com.equals("csgoInformation")) { 
    		viewPage = "/TeamProject/Information/csgoInformation.jsp";
    	} else if(com != null && com.equals("DarkSoulsInformation")) { 
    		viewPage = "/TeamProject/Information/DarkSoulsInformation.jsp";
    	} else if(com != null && com.equals("DeceitInformation")) { 
    		viewPage = "/TeamProject/Information/DeceitInformation.jsp";
    	} else if(com != null && com.equals("DivisionInformation")) { 
    		viewPage = "/TeamProject/Information/DivisionInformation.jsp";
    	} else if(com != null && com.equals("EldenRingInformation")) { 
    		viewPage = "/TeamProject/Information/EldenRingInformation.jsp";
    	} else if(com != null && com.equals("EscapeFromTarkovInformation")) { 
    		viewPage = "/TeamProject/Information/EscapeFromTarkovInformation.jsp";
    	} else if(com != null && com.equals("h1z1Information")) { 
    		viewPage = "/TeamProject/Information/h1z1Information.jsp";
    	} else if(com != null && com.equals("WarframeInformation")) { 
    		viewPage = "/TeamProject/Information/WarframeInformation.jsp";
    	} else if(com != null && com.equals("WarthunderInformation")) { 
    		viewPage = "/TeamProject/Information/WarthunderInformation.jsp";
    	} else if(com != null && com.equals("SearchResult")) { 
    		viewPage = "/TeamProject/SearchResult.jsp";
    	}  else if(com != null && com.equals("TagSearchResult")) { 
    		viewPage = "/TeamProject/TagSearchResult.jsp";
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
