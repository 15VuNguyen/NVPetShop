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
public class OrderDetail {
    private int ordid;
    private int serviceid;
    private int petid;
    private int status;
    private int quantity;
    private float discount;
    private Date orderDate;
    private float total;

    public OrderDetail() {
    }

    public OrderDetail(int ordid, int serviceid, int petid,
            int status, int quantity, Date orderDate, float total) {
        this.ordid = ordid;
        this.serviceid = serviceid;
        this.petid = petid;
        this.status = status;
        this.quantity = quantity;
        this.orderDate = orderDate;
        this.total = total;
    }

    public OrderDetail(int ordid, int serviceid, int petid, int status,
            int quantity, float discount, Date orderDate, float total) {
        this.ordid = ordid;
        this.serviceid = serviceid;
        this.petid = petid;
        this.status = status;
        this.quantity = quantity;
        this.discount = discount;
        this.orderDate = orderDate;
        this.total = total;
    }

    public int getOrdid() {
        return ordid;
    }

    public void setOrdid(int ordid) {
        this.ordid = ordid;
    }

    public int getServiceid() {
        return serviceid;
    }

    public void setServiceid(int serviceid) {
        this.serviceid = serviceid;
    }

    public int getPetid() {
        return petid;
    }

    public void setPetid(int petid) {
        this.petid = petid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
    
    

    

}
