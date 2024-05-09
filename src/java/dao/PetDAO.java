/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Customer;
import dto.Pet;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import mylib.DBUtils;

/**
 *
 * @author trana
 */
public class PetDAO {

    public int insertPet(String petname, int categoryid, int cusid) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "insert into [dbo].[Pets]\n"
                        + "values (?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, petname);
                pst.setInt(2, categoryid);
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

    public int insertOrder2(int petid , String petname , int categoryid , int cusid) {
        int result = 0;
        int orderid = 0; // Variable to store the auto-generated orderid
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "";
                // Request the return of generated keys
                PreparedStatement pst = cn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
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
    
    public int petid (){
        int petid = 0 ;
         Connection cn = null;
          try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "select top 1  PetID from [dbo].[Pets] order by PetID desc";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet table = pst.executeQuery();
                if (table != null && table.next()){
                   petid = table.getInt("PetID");
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
        return petid; // Return the auto-generated orderid
    }
    
    public ArrayList<Pet> getListOfPet(int petid) {
        ArrayList<Pet> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select PetID , PetName , CategoryID , CusID \n"
                        + "from [dbo].[Pets]\n"
                        + "where CusID = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, petid);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_petid = table.getInt("PetID");
                        String m_petname = table.getString("PetName");
                        int m_categoryid = table.getInt("CategoryID");
                        int m_cusid = table.getInt("CusID");
                        Pet pet = new Pet(petid, m_petname, m_categoryid, m_cusid);
                        list.add(pet);
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
