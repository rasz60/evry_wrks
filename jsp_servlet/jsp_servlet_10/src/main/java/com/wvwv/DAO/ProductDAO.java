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
	
	public ProductDTO selectProductByCode(String code) {
	      String sql = "SELECT * FROM product WHERE code=?";
	      ProductDTO pDto = null;
	      try {
	         Connection conn = null;
	         PreparedStatement pstmt = null;
	         ResultSet rs = null;

	         try {
	            conn = DBManager.getConnection();
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, code);
	            rs = pstmt.executeQuery();
	            
	            if ( rs.next() ) {
	            	pDto = new ProductDTO();
	            	pDto.setCode(rs.getInt("code"));
	            	pDto.setName(rs.getString("name"));
	            	pDto.setPrice(rs.getInt("price"));
	            	pDto.setPictureUrl(rs.getString("pictureUrl"));
	            	pDto.setDescription(rs.getString("description"));
	            }
	         } catch (Exception e) {
	            e.printStackTrace();
	         } finally {
	            DBManager.queryClose(conn, pstmt, rs);
	         }
	      } catch (Exception e2) {
	         e2.printStackTrace();
	      }
	      return pDto;
	}
	
	public void updateProduct(ProductDTO pDto) {
		String sql = "UPDATE product SET name=?, price=?, pictureUrl=?, description=? WHERE code=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pDto.getName());
			pstmt.setInt(2, pDto.getPrice());
			pstmt.setString(3, pDto.getPictureUrl());
			pstmt.setString(4, pDto.getDescription());
			pstmt.setInt(5, pDto.getCode());
			pstmt.executeUpdate();
		} catch(Exception e1) {
			e1.printStackTrace();
		} finally {
			DBManager.updateClose(conn, pstmt);
		}
	}
	
	public void deleteProduct(String code) {
		String sql = "DELETE product WHERE code=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(code));
			pstmt.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			DBManager.updateClose(conn, pstmt);
		}
	}
}
