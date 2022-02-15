package com.wvwv.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wvwv.DAO.ProductDAO;
import com.wvwv.DTO.ProductDTO;

public class ProductDeleteCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String code = request.getParameter("code");
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductDTO pDto = pDao.selectProductByCode(code);
		
		request.setAttribute("product", pDto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productDelete.jsp");
		dispatcher.forward(request, response);
	}

}
