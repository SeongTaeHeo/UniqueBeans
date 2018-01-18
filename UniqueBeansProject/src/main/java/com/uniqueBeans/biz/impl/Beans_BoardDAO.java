package com.uniqueBeans.biz.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.uniqueBeans.biz.Beans_BoardVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("beans_boardDAO")
public class Beans_BoardDAO {
	private Connection conn=null;
	private PreparedStatement stmt=null;
	private ResultSet rs=null;
	
	private final String BOARD_INSERT = "insert into board(post_title,id,post_option,post_contents) values(?,?,?,?)";
	private final String BOARD_UPDATE = "update board set post_title=?, post_option=? post_contents=? where post_number = ?";
	private final String BOARD_DELETE = "delete from board where post_number = ?";
	private final String BOARD_GET = "select * from board where post_number=?";
	private final String BOARD_LIST_T = "select * from board where post_title like ? order by post_number";
	private final String BOARD_LIST_C = "select * from baord where post_contents like ? order by post_number";
	private final String BOARD_UPDATE_CNT = "update board set post_views=? " + "where post_number = ?";
	
	private final String RE_INSERT = "insert into reply(id,post_number,re_content) values(?,?,?)";
	private final String RE_DELETE = "delete from reply where re_content=?";
	private final String RE_GET = "select * from reply where post_number=?";
	
	public void insertBoard(Beans_BoardVO vo){
		System.out.println("--->JDBC로 insertBoard() 기능처리");
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(BOARD_INSERT);
			stmt.setString(1, vo.getPost_title());
			stmt.setString(2, vo.getId());
			stmt.setString(3, vo.getPost_option());
			stmt.setString(4, vo.getPost_contents());
			stmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(stmt, conn);
		}
	}
	public void insertReply(Beans_BoardVO vo){
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(RE_INSERT);
			stmt.setString(1, vo.getId());
			stmt.setInt(2, vo.getPost_number());
			stmt.setString(3, vo.getRe_content());
			stmt.executeUpdate();
			System.out.println(vo.getId());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(stmt, conn);
		}
	}
	public void updateBoard(Beans_BoardVO vo){
		System.out.println("--->JDBC로 updateBoard() 기능처리");
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getPost_title());
			stmt.setString(2, vo.getPost_option());
			stmt.setString(3, vo.getPost_contents());
			System.out.println(vo.getPost_title());

			stmt.setInt(4, vo.getPost_number());
			stmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(stmt, conn);
		}
	}
	public void deleteBoard(Beans_BoardVO vo){
		System.out.println("--->JDBC로 deleteBoard() 기능처리");
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1,vo.getPost_number());
			stmt.executeUpdate();
			System.out.println(vo.getPost_number());

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(stmt, conn);
		}
	}
	public void deleteReply(Beans_BoardVO vo){
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(RE_DELETE);
			stmt.setString(1, vo.getRe_content());
			stmt.executeUpdate();
			System.out.println(vo.getRe_content());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(stmt, conn);
		}
	}
	
	
	public Beans_BoardVO Free_board_content(Beans_BoardVO vo){
		System.out.println("--->JDBC로 getBoard() 기능처리");
		Beans_BoardVO board=null;
		
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(BOARD_GET);
			stmt.setInt(1, vo.getPost_number());
			rs=stmt.executeQuery();
			if(rs.next()){
				board=new Beans_BoardVO();
				board.setPost_number(rs.getInt("POST_NUMBER"));
				board.setPost_title(rs.getString("POST_TITLE"));
				board.setId(rs.getString("ID"));
				board.setPost_contents(rs.getString("POST_CONTENTS"));
				board.setPost_date(rs.getDate("POST_DATE"));
				
				stmt=conn.prepareStatement(BOARD_UPDATE_CNT);
				stmt.setInt(1, rs.getInt("POST_VIEWS")+1);
				stmt.setInt(2, vo.getPost_number());
				stmt.executeUpdate();
				
				board.setPost_views(rs.getInt("POST_VIEWS"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(rs, stmt, conn);
		}
		return board;
	}
	public List<Beans_BoardVO> Free_board(Beans_BoardVO vo){
		System.out.println("--->JDBC로 getBoardList() 기능 처리");
		List<Beans_BoardVO> boardList=new ArrayList<Beans_BoardVO>();
		
		try{
			conn=JDBCUtil.getConnection();
			if(vo.getSearchCondition().equals("POST_TITLE")){
				stmt=conn.prepareStatement(BOARD_LIST_T);
			}else if(vo.getSearchKeyword().equals("POST_CONTENTS")){
				stmt=conn.prepareStatement(BOARD_LIST_C);
			}
			stmt.setString(1, "%" + vo.getSearchKeyword() + "%");
			
			rs=stmt.executeQuery();
			
			System.out.println("글 작성");
			
			while(rs.next()){
				Beans_BoardVO board=new Beans_BoardVO();
				board.setPost_number(rs.getInt("POST_NUMBER"));
				board.setPost_title(rs.getString("POST_TITLE"));
				board.setId(rs.getString("ID"));
				board.setPost_contents(rs.getString("POST_CONTENTS"));
				board.setPost_date(rs.getDate("POST_DATE"));
				board.setPost_views(rs.getInt("POST_VIEWS"));
				boardList.add(board);
			}
			System.out.println("리스트 구현");
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(rs, stmt, conn);
		}
		System.out.println("결과값 반환");
		return boardList;
	}
	public List<Beans_BoardVO> Reply_List(Beans_BoardVO vo){
		List<Beans_BoardVO> ReplyList=new ArrayList<Beans_BoardVO>();
		System.out.println("댓글 리스트 선언");
		try{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(RE_GET);
			stmt.setInt(1, vo.getPost_number());
			rs=stmt.executeQuery();
			while(rs.next()){
				Beans_BoardVO Reply=new Beans_BoardVO();
				Reply.setId(rs.getString("ID"));
				Reply.setRe_content(rs.getString("RE_CONTENT"));
				Reply.setRe_date(rs.getDate("RE_DATE"));
				ReplyList.add(Reply);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JDBCUtil.close(rs, stmt, conn);
		}
		
		System.out.println("댓글리스트 출력");
		return ReplyList;
	}
}




























