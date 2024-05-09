/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Account;
import dto.Customer;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import mylib.DBUtils;

/**
 *
 * @author trana
 */
public class CustomerDAO {

    public int insertCustomer(String FirstName, String LastName, String address,
            String country, String phoneNumber, java.sql.Date birthDay, int AccountID) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String formattedDate = dateFormat.format(birthDay);
                java.sql.Date sqlDate = java.sql.Date.valueOf(formattedDate);
                String sql = "insert into [dbo].[Customers] values(?,?,?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, FirstName);
                pst.setString(2, LastName);
                pst.setString(3, address);
                pst.setString(4, country);
                pst.setString(5, phoneNumber);
                pst.setDate(6, sqlDate);
                pst.setInt(7, AccountID);
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

    public Customer getCustomer(int accountid) {
        Customer customer = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select CustomerID,FirstName,LastName,Address,Country,PhoneNumber,Birthday,AccID\n"
                        + "from [dbo].[Customer]\n"
                        + "where AccID like ? ";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accountid);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_customerid = table.getInt("CustomerID");
                        String m_firstname = table.getString("FirstName");
                        String m_lastname = table.getString("LastName");
                        String m_address = table.getString("Address");
                        String m_country = table.getString("Country");
                        String m_phonenumber = table.getString("PhoneNumber");
                        Date m_birthday = table.getDate("Birthday");
                        int m_accid = table.getInt("AccID");
                        customer = new Customer(m_customerid, m_firstname, m_lastname, m_address, m_country, m_phonenumber, m_birthday, m_accid);
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
        return customer;
    }

    //
    public int getCustomerId(String FirstName, String LastName, String address,
            String country, String phoneNumber, java.sql.Date birthDay, int AccountID) {
        int result = 0;
        int cusid = 0; // Variable to store the auto-generated cusid
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String formattedDate = dateFormat.format(birthDay);
                java.sql.Date sqlDate = java.sql.Date.valueOf(formattedDate);
                String sql = "insert into [dbo].[Customers] values(?,?,?,?,?,?,?)";
                // Request the return of generated keys
                PreparedStatement pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                pst.setString(1, FirstName);
                pst.setString(2, LastName);
                pst.setString(3, address);
                pst.setString(4, country);
                pst.setString(5, phoneNumber);
                pst.setDate(6, sqlDate);
                pst.setInt(7, AccountID);
                result = pst.executeUpdate();
                // Retrieve the generated keys
                ResultSet rs = pst.getGeneratedKeys();
                if (rs.next()) {
                    cusid = rs.getInt(1); // Assuming cusid is the first column in the generated keys
                }
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
        return cusid; // Return the auto-generated cusid
    }

    public ArrayList<Customer> findName(String findName) {
        ArrayList<Customer> listOfCustomer = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select CustomerID,FirstName,LastName,Address,Country,PhoneNumber,Birthday,AccID\n"
                        + "from [dbo].[Customer]\n"
                        + "where LastName like ? ";
                PreparedStatement st = cn.prepareStatement(sql);
                st.setString(1, "%" + findName + "%");
                ResultSet table = st.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_customerid = table.getInt("CustomerID");
                        String m_firstname = table.getString("FirstName");
                        String m_lastname = table.getString("LastName");
                        String m_address = table.getString("Address");
                        String m_country = table.getString("Country");
                        String m_phoneNumber = table.getString("PhoneNumber");
                        Date m_birthday = table.getDate("Birthday");
                        int m_accid = table.getInt("AccID");
                        Customer customer = new Customer(m_firstname, m_lastname, m_address, m_country, m_phoneNumber, m_birthday, m_accid);
                        listOfCustomer.add(customer);
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
        return listOfCustomer;
    }

    public ArrayList<Customer> getCustomer1(int accountid) {
        ArrayList<Customer> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select CustomerID, FirstName , LastName , Address , Country , PhoneNumber , Birthday , AccID\n"
                        + "from [dbo].[Customers]\n"
                        + "where AccID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, accountid);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_customerid = table.getInt("CustomerID");
                        String m_firstname = table.getString("FirstName");
                        String m_lastname = table.getString("LastName");
                        String m_address = table.getString("Address");
                        String m_country = table.getString("Country");
                        String m_phonenumber = table.getString("PhoneNumber");
                        Date m_birthday = table.getDate("Birthday");
                        int m_accid = table.getInt("AccID");
                        Customer cus = new Customer(m_customerid, m_firstname, m_lastname, m_address, m_country, m_phonenumber, m_birthday, m_accid);
                        list.add(cus);
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
