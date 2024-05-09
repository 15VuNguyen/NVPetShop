/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Account;
import dto.Order;
import dto.OrderDetail;
import dto.Service;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import mylib.DBUtils;

/**
 *
 * @author trana
 */
public class OrderDAO {

    public int insertOrder(int cusid) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                // Set requiredDate as the current date
                java.sql.Date requiredDate = new java.sql.Date(new java.util.Date().getTime());

                // Set receivedDate as 3 days after requiredDate
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(requiredDate);
                calendar.add(Calendar.DAY_OF_YEAR, 3); // Add 3 days
                java.sql.Date receivedDate = new java.sql.Date(calendar.getTimeInMillis());

                String sql = "insert into [dbo].[Orders]\n"
                        + "values(?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setDate(1, requiredDate);
                pst.setDate(2, receivedDate);
                pst.setInt(3, cusid);
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

    //vua insert into bang table order thi lay ngay gia tri orderID;
    public int insertOrder2(int cusid) {
        int result = 0;
        int orderid = 0; // Variable to store the auto-generated orderid
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                // Set requiredDate as the current date
                java.sql.Date requiredDate = new java.sql.Date(new java.util.Date().getTime());
                // Set receivedDate as 3 days after requiredDate
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(requiredDate);
                calendar.add(Calendar.DAY_OF_YEAR, 3); // Add 3 days
                java.sql.Date receivedDate = new java.sql.Date(calendar.getTimeInMillis());

                String sql = "INSERT INTO [dbo].[Orders] (RequiredDate, ReceivedDate, CusID) VALUES (?, ?, ?)";
                // Request the return of generated keys
                PreparedStatement pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                pst.setDate(1, requiredDate);
                pst.setDate(2, receivedDate);
                pst.setInt(3, cusid);
                result = pst.executeUpdate();

                // Retrieve the generated keys
                ResultSet rs = pst.getGeneratedKeys();
                if (rs.next()) {
                    orderid = rs.getInt(1); // Assuming orderid is the first column in the generated keys
                }
                cn.commit();
            }
        } catch (Exception e) {
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
        return orderid; // Return the auto-generated orderid
    }

    public int insertOrder(int cusid, float totalmoney, HashMap<Service, Integer> giohang, int petid, int discount) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                // Insert order
                // Set requiredDate as the current date
                java.sql.Date requiredDate = new java.sql.Date(new java.util.Date().getTime());
                // Set receivedDate as 3 days after requiredDate
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(requiredDate);
                calendar.add(Calendar.DAY_OF_YEAR, 3); // Add 3 days
                java.sql.Date receivedDate = new java.sql.Date(calendar.getTimeInMillis());
                String sql = "INSERT [dbo].[Orders]\n"
                        + "           ([RequiredDate]\n"
                        + "           ,[ReceivedDate]\n"
                        + "           ,[CusID])\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setDate(1, requiredDate);
                pst.setDate(2, receivedDate);
                pst.setInt(3, cusid);
                result = pst.executeUpdate();
                cn.commit();
                if (result > 0) {
                    // Get the last inserted OrderID
                    sql = "SELECT TOP  1 OrderID FROM dbo.Orders ORDER BY OrderID DESC";
                    pst = cn.prepareStatement(sql);
                    ResultSet table = pst.executeQuery();
                    if (table != null && table.next()) {
                        int orderid = table.getInt("OrderID");
                        if (orderid > 0) {
                            // Insert service into OrderDetails
                            for (Service a : giohang.keySet()) {
                                // Assuming your OrderDetails table has columns: OrderID , ServiceID , PetID , Status , Quantity , Discount , Orderdate
                                //+ TotalAmount
                                // and DetailID is an identity column
                                sql = "insert into [dbo].[OrdersDetail]\n"
                                        + "values(?,?,?,?,?,?,?,?)";
                                pst = cn.prepareStatement(sql);
                                pst.setInt(1, orderid);
                                pst.setInt(2, a.getServiceID());
                                pst.setInt(3, 1);
                                pst.setInt(4, petid);
                                pst.setInt(5, giohang.get(a));
                                pst.setFloat(6, discount);
                                pst.setDate(7, requiredDate);
                                pst.setFloat(8, totalmoney);
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

    public ArrayList<Order> getAccounts(int cusid) {
        ArrayList<Order> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select  OrderID , RequiredDate , ReceivedDate , CusID\n"
                        + "from [dbo].[Orders]\n"
                        + "where CusID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, cusid);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_orderid = table.getInt("OrderID");
                        Date m_requireddate = table.getDate("RequiredDate");
                        Date m_receiveddate = table.getDate("ReceivedDate");
                        int m_cusid = table.getInt("CusID");
                        Order od = new Order(m_orderid, m_requireddate, m_receiveddate, m_cusid);
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
}
