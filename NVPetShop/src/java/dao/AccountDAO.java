/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mylib.DBUtils;

/**
 *
 * @author acer
 */
public class AccountDAO {

    public Account getAccount(String email, String password) {
        Account result = null;
        Connection cn = null;
        try {
            //make connection giua backend va sqlserver
            cn = DBUtils.makeConnection();
            if (cn != null) {
                //viet sql va execute
                String sql = "select [AccountID], [UserName], [Email], [Password], [Status], [Role]\n"
                        + "from [Accounts]\n"
                        + "where Status=1 and [Email] = ? and [Password] = ? COLLATE SQL_Latin1_General_CP1_CI_AS";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, email);
                pst.setString(2, password);
                ResultSet table = pst.executeQuery();

                if (table != null && table.next()) {
                    int m_accid = table.getInt("AccountID");
                    String m_username = table.getString("UserName");
                    String m_email = table.getString("Email");
                    String m_password = table.getString("Password");
                    String m_role = table.getString("Role");
                    result = new Account(m_accid, m_username, m_email, m_password, m_role);
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

    public ArrayList<Account> getReccentAccount() {
        ArrayList<Account> list = new ArrayList<>();
        Connection cn = null;

        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select [UserName], [Email], [Status], [Role]\n"
                        + "from [dbo].[Accounts]\n"
                        + "where Status = 1\n"
                        + "order by [AccountID] desc";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        String m_username = table.getString("UserName");
                        String m_email = table.getString("Email");
                        String m_role = table.getString("Role");
                        Account acc = new Account(m_username, m_email, m_role);
                        list.add(acc);
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

    public ArrayList<Account> getAccounts(String findname) {
        ArrayList<Account> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select [AccountID], [UserName], [Email], [Password], [Status], [Role]\n"
                        + "from [dbo].[Accounts]\n"
                        + "where [UserName] like ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + findname + "%");
                ResultSet table = pst.executeQuery();
                if (table != null) {
                    while (table.next()) {
                        int m_accid = table.getInt("AccountID");
                        String m_username = table.getString("UserName");
                        String m_email = table.getString("Email");
                        String m_password = table.getString("Password");
                        boolean m_status = table.getBoolean("Status");
                        String m_role = table.getString("Role");
                        Account acc = new Account(m_accid, m_username, m_email, m_password, m_status, m_role);
                        list.add(acc);
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

    public int updateStatus(int accid) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "update [dbo].[Accounts]\n"
                        + "set Status = ( 1 - (select Status\n"
                        + "				from [dbo].[Accounts]\n"
                        + "				where [AccountID] = ?\n"
                        + "				))\n"
                        + "where [AccountID] = ?";
                PreparedStatement st = cn.prepareStatement(sql);
                st.setInt(1, accid);
                st.setInt(2, accid);
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

    public int insertAccount(String Username, String Email, String Password) {
        int result = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "insert into [dbo].[Accounts] values(?,?,?,?,?)";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, Username);
                pst.setString(2, Email);
                pst.setString(3, Password);
                pst.setBoolean(4, true);
                pst.setString(5, "USER");
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

    public int petid() {
        int petid = 0;
        Connection cn = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "select top 1  PetID from [dbo].[Pets] order by PetID desc";
                // Request the return of generated keys
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet table = pst.executeQuery();
                if (table != null && table.next()) {
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

}
