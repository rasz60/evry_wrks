package com.wvwv.command;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.wvwv.DAO.ProductDAO;
import com.wvwv.DTO.ProductDTO;

public class ProductUpdateDoneCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("upload");
		String encType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());
		
		int code = Integer.parseInt(multi.getParameter("code"));
		String name = multi.getParameter("name");
		int price = Integer.parseInt(multi.getParameter("price"));
		String descirption = multi.getParameter("description");
		String pictureUrl = multi.getParameter("pictureUrl");
		if (pictureUrl == null) {
			pictureUrl = multi.getParameter("nomakeImg");
		}
		
		ProductDTO pDto = new ProductDTO();
		pDto.setCode(code);
		pDto.setName(name);
		pDto.setPrice(price);
		pDto.setDescription(descirption);
		pDto.setPictureUrl(pictureUrl);
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.updateProduct(pDto);
		
		response.sendRedirect("productList.do");	
	}
}
