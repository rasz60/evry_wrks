package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String job = request.getParameter("job");
		String interest[] = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("입력한 정보가 맞는지 확인해주세요.<br/>");
		out.println("직업 : " + job + "<br />");
		out.println("관심사 : ");
		if ( interest == null ) {
			out.println("<h4>선택한 관심사가 없습니다.</h4>");
		} else {
			out.print("<b>");
			for(int i = 0; i < interest.length; i++ ) {
				out.print(interest[i] + " | ");
			}
			out.println("</b><br/><br/>");
		}
		
		out.println("<a href='javascript:history.go(-1)'>다시 입력</a>");
		out.println("<a href='#'>입력 완료</a>");
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
