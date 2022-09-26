
package Model;

public class Route {
    private String routeID;
    private String routeBegin;
    private String routeEnd;
    private double distance;
    private String esTime;
    private double money;
    private String adID;

    public Route() {
    }

    public Route(String routeID, String routeBegin, String routeEnd, double distance, String esTime, double money, String adID) {
        this.routeID = routeID;
        this.routeBegin = routeBegin;
        this.routeEnd = routeEnd;
        this.distance = distance;
        this.esTime = esTime;
        this.money = money;
        this.adID = adID;
    }

    public String getRouteID() {
        return routeID;
    }

    public void setRouteID(String routeID) {
        this.routeID = routeID;
    }

    public String getRouteBegin() {
        return routeBegin;
    }

    public void setRouteBegin(String routeBegin) {
        this.routeBegin = routeBegin;
    }

    public String getRouteEnd() {
        return routeEnd;
    }

    public void setRouteEnd(String routeEnd) {
        this.routeEnd = routeEnd;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public String getEsTime() {
        return esTime;
    }

    public void setEsTime(String esTime) {
        this.esTime = esTime;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getAdID() {
        return adID;
    }

    public void setAdID(String adID) {
        this.adID = adID;
    }

    @Override
    public String toString() {
        return "Route{" + "routeID=" + routeID + ", routeBegin=" + routeBegin + ", routeEnd=" + routeEnd + ", distance=" + distance + ", esTime=" + esTime + ", money=" + money + ", adID=" + adID + '}';
    }
    
    
    
}
