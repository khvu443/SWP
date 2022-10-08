/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

public class Admin {
    private String adID;
    private String adName;
    private String adUserName;
    private String adPass;
    private String adMMail;
    private String adPhone;
    private String adAvatar;

    public Admin() {
    }

    public Admin(String adID, String adName, String adUserName, String adPass, String adMMail, String adPhone, String adAvatar) {
        this.adID = adID;
        this.adName = adName;
        this.adUserName = adUserName;
        this.adPass = adPass;
        this.adMMail = adMMail;
        this.adPhone = adPhone;
        this.adAvatar = adAvatar;
    }
    
    public String getAdID() {
        return adID;
    }

    public void setAdID(String adID) {
        this.adID = adID;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

    public String getAdUserName() {
        return adUserName;
    }

    public void setAdUserName(String adUserName) {
        this.adUserName = adUserName;
    }
    
    public String getAdPass() {
        return adPass;
    }

    public void setAdPass(String adPass) {
        this.adPass = adPass;
    }

    public String getAdMMail() {
        return adMMail;
    }

    public void setAdMMail(String adMMail) {
        this.adMMail = adMMail;
    }

    public String getAdPhone() {
        return adPhone;
    }

    public void setAdPhone(String adPhone) {
        this.adPhone = adPhone;
    }

    public String getAdAvatar() {
        return adAvatar;
    }

    public void setAdAvatar(String adAvatar) {
        this.adAvatar = adAvatar;
    }

    @Override
    public String toString() {
        return "Admin{" + "adID=" + adID + ", adName=" + adName + ", adUserName=" + adUserName + ", adPass=" + adPass + ", adMMail=" + adMMail + ", adPhone=" + adPhone + ", adAvatar=" + adAvatar + '}';
    }
    
    
}
