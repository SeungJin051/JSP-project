package com.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;



public class Dao {

   private Connection getConnection() throws Exception{
         
      InitialContext initCtx = new InitialContext();
      
      DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/sin");
      
      Connection con = ds.getConnection();
      return con;   
   }
   
   public void Boardchange(Dto dto, String flag) {
      PreparedStatement pstmt = null;
      
      try (Connection con = getConnection();) {
         if (flag.equals("i")) {
            String sql = "insert into free_writing values(?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, dto.getnum());
            pstmt.setString(2, dto.gettopik());
            pstmt.setString(3, dto.gettitle());
            pstmt.setString(4, dto.getimg());
            pstmt.setString(5, dto.getcontent());
         }
         pstmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         try {
            if(pstmt != null) pstmt.close();
         } catch (Exception e2) {
            e2.printStackTrace();
         }
      }
   }
   public ArrayList<Dto> list() {
      
      String sql = "SELECT * FROM free_writing";
      ArrayList<Dto> dtos = new ArrayList<Dto>();
      
      try (Connection con = getConnection();
            Statement stmt = con.createStatement();
            ) {
         ResultSet rs = stmt.executeQuery(sql);
         
         while (rs.next()) {
            String num = rs.getString("num");
            String topik = rs.getString("topik");
            String title = rs.getString("title");
            String img = rs.getString("img");
            String content = rs.getString("content");
            
            Dto dto = new Dto(num, topik, title, img, content);
            dtos.add(dto);
         }
      } catch (Exception e) {
         e.printStackTrace();
      }
      return dtos;
   }
   public Dto getOne(String num) {
      String sql = "SELECT * FROM free_writing where num=?";
      Dto dto = new Dto();
      
      try (Connection con = getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql);
            ) {
            pstmt.setString(1, num);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {   
               String topik = rs.getString("topik");
               String title = rs.getString("title");
               String img = rs.getString("img");
               String content = rs.getString("content");
               
               dto = new Dto(num, topik, title, img, content);
            }
            
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
      }
      return dto;
   }
}