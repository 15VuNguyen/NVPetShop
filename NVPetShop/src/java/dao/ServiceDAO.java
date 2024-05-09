/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import mylib.DBUtils;

/**
 *
 * @author trana
 */
public class ServiceDAO {

    public ArrayList<Service> getListService() {

        ArrayList<Service> listOfService = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select ServiceID,ServiceName,ServiceImage,Price,State\n"
                        + "from [dbo].[Services]";
                PreparedStatement st = cn.prepareStatement(sql);
                ResultSet table = st.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_serviceID = table.getInt("ServiceID");
                        String m_servicename = table.getString("ServiceName");
                        String m_serviceimg = table.getString("ServiceImage");
                        int m_price = table.getInt("Price");
                        Boolean m_state = table.getBoolean("State");
                        Service service = new Service(m_serviceID, m_servicename, m_serviceimg, m_price, m_state);
                        listOfService.add(service);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return listOfService;
    }

    public ArrayList<Service> getListService1(int findID) {

        ArrayList<Service> listOfService = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select ServiceID,ServiceName,ServiceImage,Price,State\n"
                        + "from [dbo].[Services]\n"
                        + "where ServiceID like ?";
                PreparedStatement st = cn.prepareStatement(sql);
                ResultSet table = st.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_serviceID = table.getInt("ServiceID");
                        String m_servicename = table.getString("ServiceName");
                        String m_serviceimg = table.getString("ServiceImage");
                        int m_price = table.getInt("Price");
                        Boolean m_state = table.getBoolean("State");
                        Service service = new Service(m_serviceID, m_servicename, m_serviceimg, m_price, m_state);
                        listOfService.add(service);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return listOfService;
    }

    public Service getItem(int itemid) {
        Service result = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select ServiceID,ServiceName,ServiceImage,Price,State\n"
                        + "from [dbo].[Services]\n"
                        + "where ServiceID like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, itemid);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        //int itemid= table.getInt("ItemId");
                        int serviceid = table.getInt("ServiceID");
                        String serviceName = table.getString("ServiceName");
                        String serviceImg = table.getString("ServiceImage");
                        float price = table.getFloat("Price");
                        Boolean state = table.getBoolean("State");
                        result = new Service(serviceid, serviceName, serviceImg, (float) price, state);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
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
    
        public int insertNewService(String newServiceName, String newServiceImage, int newServicePrice){
        int result = 0;
        Connection cn = null;
        try{
            cn = DBUtils.makeConnection();
            if(cn != null){
                cn.setAutoCommit(false);
                //insert order 
                String sql = "INSERT [dbo].[Services]\n"
                        + "           ([ServiceName]\n"
                        + "           ,[ServiceImage]\n"
                        + "           ,[State]\n"
                        + "           ,[Price])\n"
                        + "     VALUES\n"
                        + "           (?,?,1,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, newServiceName);
                pst.setString(2, "img/"+newServiceImage);
                pst.setInt(3, newServicePrice);
                
                result = pst.executeUpdate();
                cn.commit();
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
            public int disableStatusService(int serid){
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "update [dbo].[Services]\n"
                        + "set State = 0\n"
                        + "where [ServiceID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
                st.setInt(1, serid);
                result = st.executeUpdate();
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
    
    public int updateService(String newServiceName, String newServiceImage,
                        int newServicePrice, int newServiceID){
        int result = 0;
        Connection cn = null;
        try{
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = " UPDATE [dbo].[Services]\n"
                        + "   SET [ServiceName] = ?\n"
                        + "      ,[ServiceImage] = ?\n"
                        + "      ,[State] = 1\n"
                        + "      ,[Price] = ?\n"
                        + " WHERE ServiceID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, newServiceName);
                pst.setString(2, "img/"+newServiceImage);
                pst.setInt(3, newServicePrice);
                pst.setInt(4, newServiceID);
                
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
    
}
