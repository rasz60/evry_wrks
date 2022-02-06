package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckboxServlet
 */
@WebServlet("/CheckboxServlet")
public class CheckboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String ckBox[] = request.getParameterValues("item");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>당신이 선택한 상품입니다.<br />");
		if ( ckBox == null ) {
			out.println("<h4>선택한 상품이 없습니다.</h4>");
		} else {
			for(int i = 0; i < ckBox.length; i++ ) {
				out.println("<h5>" + ckBox[i] + "</h5>");
			}
		}
		
		out.println("<a href='javascript:history.go(-1)'>다시 선택</a>");
		out.println("</body></html>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
