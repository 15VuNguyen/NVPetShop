/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Feedback;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import mylib.DBUtils;

/**
 *
 * @author acer
 */
public class FeedbackDAO {
    public ArrayList<Feedback> getFeedbacks(){
        ArrayList<Feedback> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "select [FeedbackID], [FeedbackDate], [Description], [Reply], [AccID]\n"
                            + "from Feedbacks";
                Statement st = cn.createStatement();
                ResultSet table = st.executeQuery(sql);
                if(table != null){
                    while(table.next()){
                        int m_FeedbackID = table.getInt("FeedbackID");
                        Date m_FeedbackDate = table.getDate("FeedbackDate");
                        String m_Description = table.getString("Description");
                        String m_Reply = table.getString("Reply");
                        int m_AccID = table.getInt("AccID");
                        Feedback feedback = new Feedback(m_FeedbackID, m_FeedbackDate, m_Description, m_Reply, m_AccID);
                        list.add(feedback);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(cn != null) cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
    
    
    public int replyFeedbackByID(int fbid, String newReply){
        int result = 0;
        Connection cn = null;
        try{
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "UPDATE [dbo].[Feedbacks]\n"
                        + "            SET [Reply] = ?\n"
                        + "	WHERE FeedbackID = ? AND Reply IS NULL";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, newReply);
                pst.setInt(2, fbid);
                
                result = pst.executeUpdate();
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try {
                if(cn!=null) cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
    
    public String getUserNameFeedbackByAccID(int accid){
        String result = "";
        Connection cn = null;
        try{
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "select UserName \n"
                        + "from Accounts\n"
                        + "Where AccountID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accid);
                
                ResultSet table = pst.executeQuery();
                if(table.next()){
                    result = table.getString("UserName");
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try {
                if(cn!=null) cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
    
    public Feedback getFeedbackByID(int accid){
        Feedback result = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
//                int newStatus = status++;
                String sql = "select [FeedbackID], [FeedbackDate], [Description], [Reply], [AccID]\n"
                        + "from Feedbacks\n"
                        + "where [FeedbackID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, accid);
                ResultSet table = st.executeQuery();
                if(table.next()){
                    int FeedbackID = table.getInt("FeedbackID");
                    Date FeedbackDate = table.getDate("FeedbackDate");
                    String Description = table.getString("Description");
                    String Reply = table.getString("Reply");
                    int AccID = table.getInt("AccID");
                    result = new Feedback(FeedbackID, FeedbackDate, Description, Reply, AccID);
                }
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                
            } catch (Exception e) {
                e.printStackTrace();;
            }
        }
        return result;
    }
    
    
    //vỹ
    public int insertFeedback(int accID, Date date, String description) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "insert into [dbo].[feedback]\n"
                    + "(?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accID);
                pst.setDate(2, date);
                pst.setString(3, description);
                result = pst.executeUpdate();
                cn.commit();
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                if (cn != null) {
                    cn.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }
    
}
