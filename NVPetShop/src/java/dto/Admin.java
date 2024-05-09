/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Date;

/**
 *
 * @author acer
 */
public class Admin {
    private int AdminID;
    private String FirstName;
    private String LastName;
    private String Address;
    private String Country;
    private String PhoneNumber;
    private Date Birthday;
    private int AccID;
    private Account account;

    public Admin() {
    }

    public Admin(int AdminID, String FirstName, String LastName, String Address,
            String Country, String PhoneNumber, Date Birthday, int AccID) {
        this.AdminID = AdminID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.Birthday = Birthday;
        this.AccID = AccID;
    }

    public Admin(int AdminID, String FirstName, String LastName, String Address, String Country, String PhoneNumber, Date Birthday, int AccID, Account account) {
        this.AdminID = AdminID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.Birthday = Birthday;
        this.AccID = AccID;
        this.account = account;
    }

    public int getAdminID() {
        return AdminID;
    }

    public void setAdminID(int AdminID) {
        this.AdminID = AdminID;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public Date getBirthday() {
        return Birthday;
    }

    public void setBirthday(Date Birthday) {
        this.Birthday = Birthday;
    }

    public int getAccID() {
        return AccID;
    }

    public void setAccID(int AccID) {
        this.AccID = AccID;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
    
    
    
    
}
