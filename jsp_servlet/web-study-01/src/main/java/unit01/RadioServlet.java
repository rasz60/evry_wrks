package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RadioServlet
 */
@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String gender = request.getParameter("gender");
		String chkMail = request.getParameter("chkMail");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		out.println("당신이 입력한 정보입니다.<br/>");
		out.println("성별 : " + gender + "<br/>");
		out.println("메일 수신 여부 : " + chkMail + "<br/>");
		out.println("소개글 : <br /><pre>" + content + "</pre><br/>");
		out.println("<a href='javascript:history.go(-1)'>다시 입력</a>");
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
