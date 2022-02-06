package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParamServlet
 */
@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>당신이 입력한 정보입니다.<br />");
		out.println("ID : " + id + "<br />");
		out.println("age : " + age + "<br />");		
		out.println("<a href='javascript:history.back()'>다시</a></body></html>");
		out.close();
	}

}
