package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InfoServlet
 */
@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		PrintWriter out = response.getWriter();
		// get 방식으로 결과값이 한글이 있을 때, server.xml에 connector 에 URIEncoding="UTF=8" 추가
		out.println("<html><body>");
		out.println("당신이 입력한 정보입니다.<br />");
		out.println("이름 : ");
		out.println(name + "<br />");
		out.println("주소 : ");
		out.println(addr + "<br />");
		out.println("<a href='javascript:history.go(-1)'>다시 입력</a>");
		out.println("</body></html>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//post 방식으로 결과값이 한글이 있을 때, setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	
	
}
