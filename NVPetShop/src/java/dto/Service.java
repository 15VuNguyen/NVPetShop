/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author trana
 */
public class Service {
    private int ServiceID;
    private String ServiceName;
    private String ServiceImg;
    private float price;
    private Boolean state;

    public Boolean getState() {
        return state;
    }

    public void setState(Boolean state) {
        this.state = state;
    }

    public Service(int ServiceID, String ServiceName, String ServiceImg, float price, Boolean state) {
        this.ServiceID = ServiceID;
        this.ServiceName = ServiceName;
        this.ServiceImg = ServiceImg;
        this.price = price;
        this.state = state;
    }

    public Service(int ServiceID, String ServiceName, String ServiceImg, int price) {
        this.ServiceID = ServiceID;
        this.ServiceName = ServiceName;
        this.ServiceImg = ServiceImg;
        this.price = price;
    }

    public Service() {
    }

    public int getServiceID() {
        return ServiceID;
    }

    public void setServiceID(int ServiceID) {
        this.ServiceID = ServiceID;
    }

    public String getServiceName() {
        return ServiceName;
    }

    public void setServiceName(String ServiceName) {
        this.ServiceName = ServiceName;
    }

    public String getServiceImg() {
        return ServiceImg;
    }

    public void setServiceImg(String ServiceImg) {
        this.ServiceImg = ServiceImg;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
