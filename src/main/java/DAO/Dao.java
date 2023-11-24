package DAO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DB.DBConnection;
import Model.Account;

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

		// main
		public static void main(String[] args) {
			Dao dao = new Dao();
			System.out.println(dao.toString());
		}
}
