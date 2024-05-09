/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author acer
 */
public class Service {
    private int ServiceID;
    private String ServiceName;
    private String ServiceImage;
    private boolean State;
    private int Price;

    public Service() {
    }

    public Service(int ServiceID, String ServiceName, 
            String ServiceImage, boolean State, int Price) {
        this.ServiceID = ServiceID;
        this.ServiceName = ServiceName;
        this.ServiceImage = ServiceImage;
        this.State = State;
        this.Price = Price;
    }
    
    public Service(int ServiceID, String ServiceName, 
            String ServiceImage, int Price, boolean State) {
        this.ServiceID = ServiceID;
        this.ServiceName = ServiceName;
        this.ServiceImage = ServiceImage;
        this.State = State;
        this.Price = Price;
    }
    
    public Service(int ServiceID, String ServiceName, 
            String ServiceImage, int Price) {
        this.ServiceID = ServiceID;
        this.ServiceName = ServiceName;
        this.ServiceImage = ServiceImage;
        this.Price = Price;
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

    public String getServiceImage() {
        return ServiceImage;
    }

    public void setServiceImage(String ServiceImage) {
        this.ServiceImage = ServiceImage;
    }

    public boolean isState() {
        return State;
    }

    public void setState(boolean State) {
        this.State = State;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }
    
    
    
    
}
