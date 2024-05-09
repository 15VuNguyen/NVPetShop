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
public class Customer {
    private int CustomerID;
    private String FirstName;
    private String LastName;
    private String Address;
    private String Country;
    private String PhoneNumber;
    private Date Birthday;
    private int AccID;
    private Account account;

    public Customer() {
    }

    public Customer(int CustomerID, String FirstName, String LastName,
                    String Address, String Country, String PhoneNumber,
                    Date Birthday, int AccID) {
        this.CustomerID = CustomerID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.Birthday = Birthday;
        this.AccID = AccID;
    }
    
    public Customer(int CustomerID, String FirstName, String LastName,
                    String Address, String Country, String PhoneNumber,
                    int AccID) {
        this.CustomerID = CustomerID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.AccID = AccID;
    }

    public Customer(int CustomerID, String FirstName, String LastName,
                    String Address, String Country, String PhoneNumber,
                    Date Birthday, int AccID, Account account) {
        this.CustomerID = CustomerID;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.Birthday = Birthday;
        this.AccID = AccID;
        this.account = account;
    }
    
    public Customer(String FirstName, String LastName,
                    String Address, String Country, String PhoneNumber,
                    Date Birthday, int AccID) {
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Address = Address;
        this.Country = Country;
        this.PhoneNumber = PhoneNumber;
        this.Birthday = Birthday;
        this.AccID = AccID;
    }
    
    

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
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
    
    
    
    
}
