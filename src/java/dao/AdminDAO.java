/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Admin;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mylib.DBUtils;

/**
 *
 * @author acer
 */
public class AdminDAO {
    public Admin getAdminByID(int accid){
        Admin result = null;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if(cn != null){
//                int newStatus = status++;
                String sql = "select [AdminID], [FirstName], [LastName], [Address], [Country], [PhoneNumber], [Birthday], [AccID]\n"
                        + "from Admin\n"
                        + "where AccID = ?";
                PreparedStatement st = cn.prepareStatement(sql);
//                st.setInt(1, newStatus);
                st.setInt(1, accid);
                ResultSet table = st.executeQuery();
                if(table.next()){
                    int AdminID = table.getInt("AdminID");
                    String FirstName = table.getString("FirstName");
                    String LastName = table.getString("LastName");
                    String Address = table.getString("Address");
                    String Country = table.getString("Country");
                    String PhoneNumber = table.getString("PhoneNumber");
                    Date Birthday = table.getDate("Birthday");
                    int AccID = table.getInt("AccID");
                    result = new Admin(AdminID, FirstName, LastName, Address, Country, PhoneNumber, Birthday, AccID);
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
}
