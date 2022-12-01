package game;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.CartService;
import cart.Cpay;

@WebServlet("*.game")
public class GameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	String viewPage = null;
    	
    	String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".game"));
    	System.out.println("현재 페이지는 " + com + "입니다.");
    	
    	if(com != null && com.equals("BattleFieldInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/BattleFieldInformation.jsp";
    	} else if(com != null && com.equals("csgoInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/csgoInformation.jsp";
    	} else if(com != null && com.equals("DarkSoulsInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/DarkSoulsInformation.jsp";
    	} else if(com != null && com.equals("DeceitInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/DeceitInformation.jsp";
    	} else if(com != null && com.equals("DivisionInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/DivisionInformation.jsp";
    	} else if(com != null && com.equals("EldenRingInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/EldenRingInformation.jsp";
    	} else if(com != null && com.equals("EscapeFromTarkovInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/EscapeFromTarkovInformation.jsp";
    	} else if(com != null && com.equals("h1z1Information")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/h1z1Information.jsp";
    	} else if(com != null && com.equals("WarframeInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/WarframeInformation.jsp";
    	} else if(com != null && com.equals("WarthunderInformation")) { 
    		viewPage = "/WEB-INF/TeamProject/Information/WarthunderInformation.jsp";
    	} else if(com != null && com.equals("SearchResult")) { 
    		viewPage = "/WEB-INF/TeamProject/SearchResult.jsp";
    	}  else if(com != null && com.equals("TagSearchResult")) { 
    		viewPage = "/WEB-INF/TeamProject/TagSearchResult.jsp";
    	}  else if(com != null && com.equals("GameInsert")) { 
    		GameService service = new GInsertService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/TeamProject/MainPage.sign";
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
