/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.OrderDetail;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import mylib.DBUtils;


/**
 *
 * @author acer
 */
public class OrderDetailDAO {
    public ArrayList<OrderDetail> getReccentOrderDetail(){
        ArrayList<OrderDetail> list = new ArrayList<>();
        Connection cn = null;
        
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "select [OrdID], [ServiceID], [PetID], [Status], [Quantity], [OrderDate], [TotalAmount]\n"
                        + "from [dbo].[OrdersDetail]\n"
                        + "order by [OrderDate] desc";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet table = pst.executeQuery();
                if(table != null){
                    while(table.next()){
                        int m_ordid = table.getInt("OrdID");
                        int m_serviceid = table.getInt("ServiceID");
                        int m_petid = table.getInt("PetID");
                        int m_status = table.getInt("Status");
                        int m_quantity = table.getInt("Quantity");
                        Date m_orderDate = table.getDate("OrderDate");
                        float m_total = table.getFloat("TotalAmount");
                        OrderDetail od = new OrderDetail(m_ordid, m_serviceid, m_petid, m_status, m_quantity, m_orderDate, m_total);
                        list.add(od);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(cn != null)  cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
    
    
    public ArrayList<OrderDetail> getAllOrderDetail(){
        ArrayList<OrderDetail> list = new ArrayList<>();
        Connection cn = null;
        
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
                String sql = "select [OrdID], [ServiceID], [PetID], [Status], [Quantity], [Discount], [OrderDate], [TotalAmount]\n"
                        + "from [dbo].[OrdersDetail]";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet table = pst.executeQuery();
                if(table != null){
                    while(table.next()){
                        int m_ordid = table.getInt("OrdID");
                        int m_serviceid = table.getInt("ServiceID");
                        int m_petid = table.getInt("PetID");
                        int m_status = table.getInt("Status");
                        int m_quantity = table.getInt("Quantity");
                        float m_discount = table.getFloat("Discount");
                        Date m_orderDate = table.getDate("OrderDate");
                        float m_total = table.getFloat("TotalAmount");
                        OrderDetail od = new OrderDetail(m_ordid, m_serviceid, m_petid, m_status, m_quantity, m_discount, m_orderDate, m_total);
                        list.add(od);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(cn != null)  cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }
    
    public int ChangeStatusService(int ordid, int serviceid, int status){
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null && status >= 1 && status < 3){
//                int newStatus = status++;
                String sql = "update [dbo].[OrdersDetail]\n"
                        + "set Status = Status + 1\n"
                        + "where [OrdID] = ? and [ServiceID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, ordid);
                st.setInt(2, serviceid);
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
    
    public int CancelBooking(int ordid, int serviceid, int status){
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null && status == 1){
//                int newStatus = status++;
                String sql = "update [dbo].[OrdersDetail]\n"
                        + "set Status = 4\n"
                        + "where [OrdID] = ? and [ServiceID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, ordid);
                st.setInt(2, serviceid);
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
    
    public int ChangeInfomationCustomerPet(int ordid, int serviceid, int status,
                            int newServiceChoice, int newQuantityChoice){
        int result = 0;
        Connection cn = null;
        int price = getPriceOfServiceByID(newServiceChoice);
        //cập nhập lại nên là không được sử dụng discount
        float total = price * newQuantityChoice;
        try {
            cn = DBUtils.makeConnection();
            //để status bằng 1 nghĩa là khi chuẩn bị hàng thì mới cho cập nhật
            //có những business khác có thể thay đổi khi vận chuyển thì chỉ cần thay đổi status
            if(cn != null && status == 1){
                //ở đây khi đặt hàng lại thì kh còn quyền sử dụng discount
                String sql = "update [dbo].[OrdersDetail]\n"
                        + "set Discount = 0, ServiceID = ?, Quantity = ?, TotalAmount = ?\n"
                        + "where [OrdID] = ? and [ServiceID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, newServiceChoice);
                st.setInt(2, newQuantityChoice);
                st.setFloat(3, total);
                st.setInt(4, ordid);
                st.setInt(5, serviceid);
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
    
    public int getPriceOfServiceByID(int serviceid){
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
//                int newStatus = status++;
                String sql = "select Price \n"
                        + "from [dbo].[Services]\n"
                        + "where ServiceID = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, serviceid);
                ResultSet table = st.executeQuery();
                if(table.next()){
                    result = table.getInt("Price");
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
    public int insertOrderDetail(int orderid, int serviceid, int petid,
            int status, int quantity, int discount,
            float total) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                java.sql.Date orderDate = new java.sql.Date(new java.util.Date().getTime());
                String sql = "insert into [dbo].[OrdersDetail]\n"
                        + "values(?,?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, orderid);
                pst.setInt(2, serviceid);
                pst.setInt(3, status);
                pst.setInt(4, quantity);
                pst.setInt(5, discount);
                pst.setDate(6, orderDate);
                pst.setFloat(7, total);
                result = pst.executeUpdate();
                cn.commit();
            }
        } catch (Exception e) {
            try {
                if (cn != null) {
                    cn.close();
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

    public int insertOrderDetail(int accid, int cusid, int totalmoney, HashMap<OrderDetail, Integer> giohang) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                // Insert order
                String sql = "insert into [dbo].[OrderDetails]\n"
                        + "values(?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setDate(1, new Date(System.currentTimeMillis()));
                pst.setDate(2, new Date(System.currentTimeMillis()));
                pst.setInt(3, cusid);
                result = pst.executeUpdate();
                if (result > 0) {
                    // Get the last inserted OrderID
                    sql = "SELECT TOP  1 OrderID FROM dbo.Orders ORDER BY OrderID DESC";
                    pst = cn.prepareStatement(sql);
                    ResultSet table = pst.executeQuery();
                    if (table != null && table.next()) {
                        int orderid = table.getInt("OrderID");
                        if (orderid > 0) {
                            // Insert items into OrderDetails
                            for (OrderDetail a : giohang.keySet()) {
                                // Assuming your OrderDetails table has columns: DetailID, ItemID, OrderID, Quantity, Price
                                // and DetailID is an identity column
                                sql = "insert into [dbo].[OrderDetails]\n"
                                        + "values(?,?,?,?,?,?,?,?)";
                                pst = cn.prepareStatement(sql);
                                pst.setInt(1, a.getOrdid());
                                pst.setInt(2, a.getServiceid());
                                pst.setInt(3, a.getPetid());
                                pst.setInt(4, a.getStatus());
                                pst.setInt(5, a.getQuantity());
                                pst.setFloat(6, a.getDiscount());
                                pst.setDate(7, a.getOrderDate());
                                pst.setFloat(8, a.getTotal());
                                result = pst.executeUpdate();
                            }
                        }
                    }
                    cn.commit();
                }
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

    public ArrayList<OrderDetail> getListOfBooking(int id) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select OrdID , ServiceID , PetID , Status , Quantity , Discount , OrderDate , TotalAmount\n"
                        + "from [dbo].[OrdersDetail]\n"
                        + "where OrdID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_orid = table.getInt("OrdID");
                        int m_serid = table.getInt("ServiceID");
                        int m_petid = table.getInt("PetID");
                        int m_status = table.getInt("Status");
                        int m_quantity = table.getInt("Quantity");
                        Float m_discount = table.getFloat("Discount");
                        Date m_orderdate = table.getDate("OrderDate");
                        float m_total = table.getFloat("TotalAmount");
                        OrderDetail od = new OrderDetail(m_orid, m_serid, m_petid, m_status, m_quantity, m_discount, m_orderdate, m_total);
                        list.add(od);
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
        return list;
    }
//        x
}
