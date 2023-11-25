package DAO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBConnection;
import Model.Account;
import Model.Product;

public class Dao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	// mã hóa
	private static String hashPasswordMD5(String plainPassword) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(plainPassword.getBytes());

            byte[] byteData = md.digest();

            // Chuyển đổi byte thành chuỗi hex
            StringBuilder sb = new StringBuilder();
            for (byte b : byteData) {
                sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1));
            }

            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
	
	// test
	// them tk
		public void Signup(String user, String pass, String gmail) {
			String query = "INSERT into users (user_name, password, gmail, is_sell, is_admin)\r\n"
					+ "values (?, ?, ?, 0, 0)";
			
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1, user);
				ps.setString(2, pass);
				ps.setString(3, gmail);
				ps.executeUpdate();
						
			} catch (Exception e) {
				// TODO: handle exception
			}
		
		}
		
	// check tk
		public Account CheckAccountExist(String user) {
			String query = "select * from users \r\n"
					+ "where user_name = ?";
			
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1, user);
				rs = ps.executeQuery();
				
				while (rs.next()) {
					return new Account(rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getString(4),
							rs.getString(5),
							rs.getInt(6), 
							rs.getInt(7));
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return null;
		}
		
		// login
		public Account login(String user, String pass) {
			String query = "SELECT * FROM users\r\n"
					+ "where user_name = ?\r\n"
					+ "and password = ?";
			
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1, user);
				ps.setString(2, pass);
				rs = ps.executeQuery();
				
				while (rs.next()) {
					return new Account(rs.getInt(1), 
							rs.getString(2), 
							rs.getString(3), 
							rs.getString(4), 
							rs.getString(5),
							rs.getInt(6), 
							rs.getInt(7));
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return null;
		}
		
		// lấy sản phẩm
		public List<Product> getProducts(){
			List<Product> p = new ArrayList<>();
			String sql = "SELECT * FROM products";
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Product pro = new Product();
					pro.setId(rs.getInt("product_id"));
					pro.setName(rs.getString("name"));
					pro.setStatus(rs.getInt("status"));
					pro.setPrice(rs.getFloat("price"));
					pro.setQuantity(rs.getInt("quantity"));
					pro.setDes(rs.getString("description"));
					pro.setImg(rs.getString("imagel"));
					pro.setColor(rs.getString("color"));
					pro.setSell(rs.getInt("sell_count"));
					pro.setCateId(rs.getInt("cate_id"));
					pro.setUserId(rs.getInt("user_id"));
					pro.setCreateDate(rs.getDate("create_date"));
					pro.setSize(rs.getString("size"));
					p.add(pro);					
				}
				ps.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return p;
		}
		// lấy 1 sản phẩm
		public Product getProduct(String id) {
			Product p = new Product();
			String sql = "SELECT * FROM products WHERE product_id = '"+id+"'";
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					p.setId(rs.getInt("product_id"));
					p.setName(rs.getString("name"));
					p.setStatus(rs.getInt("status"));
					p.setPrice(rs.getFloat("price"));
					p.setQuantity(rs.getInt("quantity"));
					p.setDes(rs.getString("description"));
					p.setImg(rs.getString("imagel"));
					p.setColor(rs.getString("color"));
					p.setSell(rs.getInt("sell_count"));
					p.setCateId(rs.getInt("cate_id"));
					p.setUserId(rs.getInt("user_id"));
					p.setCreateDate(rs.getDate("create_date"));
					p.setSize(rs.getString("size"));				
				}
				ps.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return p;
		}

		// main
		public static void main(String[] args) {
			Dao dao = new Dao();
		}
}
