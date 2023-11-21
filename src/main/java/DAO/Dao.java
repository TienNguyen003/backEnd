package DAO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DB.DBConnection;

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
		public void Signup(String user, String pass, String gmail, String phone) {
			String query = "INSERT into users (user_name, password, gmail, phone , isSell, isAdmin)\r\n"
					+ "values (?, ?, ?, 0, 0);";
			
			try {
				conn = new DBConnection().CreateConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1, user);
				ps.setString(2, pass);
				ps.setString(3, gmail);
				ps.setString(4, phone);
				ps.executeUpdate();
						
			} catch (Exception e) {
				// TODO: handle exception
			}
		
		}
		
	

		// main
		public static void main(String[] args) {
			Dao dao = new Dao();
			System.out.println(dao.toString());
		}
}
