package com.wvwv.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wvwv.DTO.ProductDTO;
import com.wvwv.util.DBManager;

public class ProductDAO {
	private ProductDAO() {}
	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	public List<ProductDTO> selectAllProducts() {
		String sql = "SELECT * FROM product ORDER BY code desc";
		List<ProductDTO> pList = new ArrayList<ProductDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while ( rs.next() ) {
				ProductDTO product = new ProductDTO();
				product.setCode(rs.getInt("code"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setPictureUrl(rs.getString("pictureUrl"));
				product.setDescription(rs.getString("description"));
				pList.add(product);
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			DBManager.queryClose(conn, pstmt, rs);
		}
		return pList;
	}
	
	public void insertProduct(ProductDTO pDto) {
		String sql = "INSERT INTO product VALUES(get_seq('product'), ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pDto.getName());
			pstmt.setInt(2, pDto.getPrice());
			pstmt.setString(3, pDto.getPictureUrl());
			pstmt.setString(4, pDto.getDescription());
			pstmt.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			DBManager.updateClose(conn, pstmt);
		}
	}
}
