package com.wvwv.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wvwv.command.Command;
import com.wvwv.command.ProductDeleteCommand;
import com.wvwv.command.ProductDeleteDoneCommand;
import com.wvwv.command.ProductListCommand;
import com.wvwv.command.ProductUpdateCommand;
import com.wvwv.command.ProductUpdateDoneCommand;
import com.wvwv.command.ProductWriteCommand;

/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("*.do")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Command cmd;
		
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		System.out.println(uri);
		String command = uri.substring(contextPath.length());
		
		if ( command.equals("/productList.do") ) {
			cmd = new ProductListCommand();
			cmd.execute(request, response);
		} else if ( command.equals("/productWrite.do") ) {
			cmd = new ProductWriteCommand();
			cmd.execute(request, response);
		} else if ( command.equals("/productUpdate.do") ) {
			cmd = new ProductUpdateCommand();
			cmd.execute(request, response);
		} else if ( command.equals("/productUpdateDone.do") ) {
			cmd = new ProductUpdateDoneCommand();
			cmd.execute(request, response);
		} else if ( command.equals("/productDelete.do") ) {
			cmd = new ProductDeleteCommand();
			cmd.execute(request, response);
		} else if ( command.equals("/productDeleteDone.do") ) {
			cmd = new ProductDeleteDoneCommand();
			cmd.execute(request, response);
		}

	}
}
