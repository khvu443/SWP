/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;


public class BillDetail {
    private String detailID;
    private String routeID;
    private double price;
    private double waitingTime;

    public BillDetail() {
    }

    
    
    public BillDetail(String detailID, String routeID, double price, double waitingTime) {
        this.detailID = detailID;
        this.routeID = routeID;
        this.price = price;
        this.waitingTime = waitingTime;
    }
    
    public String getDetailID() {
        return detailID;
    }

    public void setDetailID(String detailID) {
        this.detailID = detailID;
    }

    public String getRouteID() {
        return routeID;
    }

    public void setRouteID(String routeID) {
        this.routeID = routeID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getWaitingTime() {
        return waitingTime;
    }

    public void setWaitingTime(double waitingTime) {
        this.waitingTime = waitingTime;
    }

    @Override
    public String toString() {
        return "BillDetail{" + "detailID=" + detailID + ", routeID=" + routeID + ", price=" + price + ", waitingTime=" + waitingTime + '}';
    }
    
    
}
