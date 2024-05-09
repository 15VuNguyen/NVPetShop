/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.util.Date;

/**
 *
 * @author trana
 */
public class Order {

    private int OrderID;
    private int CusID;
    private Date RequiredDate;
    private Date ReceivedDate;

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getCusID() {
        return CusID;
    }

    public void setCusID(int CusID) {
        this.CusID = CusID;
    }

    public Date getRequiredDate() {
        return RequiredDate;
    }

    public void setRequiredDate(Date RequiredDate) {
        this.RequiredDate = RequiredDate;
    }

    public Date getReceivedDate() {
        return ReceivedDate;
    }

    public void setReceivedDate(Date ReceivedDate) {
        this.ReceivedDate = ReceivedDate;
    }

    public Order(int OrderID, int CusID, Date RequiredDate, Date ReceivedDate) {
        this.OrderID = OrderID;
        this.CusID = CusID;
        this.RequiredDate = RequiredDate;
        this.ReceivedDate = ReceivedDate;
    }
    public Order(int OrderID,Date RequiredDate, Date ReceivedDate, int CusID) {
        this.OrderID = OrderID;
        this.CusID = CusID;
        this.RequiredDate = RequiredDate;
        this.ReceivedDate = ReceivedDate;
    }

    public Order() {
    }
    public Order(int orderid) {
    }
}
