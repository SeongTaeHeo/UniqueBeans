package com.uniqueBeans.biz.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class Test {
	public static void main(String[] args) throws SQLException {
		final String TEST = "select * from country";
		Connection conn = (Connection) JDBCUtil.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet result = stmt.executeQuery(TEST);
		
		if(conn == null) {
			System.out.println("연결 안됨 ㅠㅠ");
		} else {
			System.out.println("연결ㅎㅎ");
			
			while(result.next()) {
				System.out.println(result.getString(1));
				System.out.println(result.getString(2));
			}
		}
	}
}
