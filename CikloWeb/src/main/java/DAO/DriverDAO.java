package DAO;

import Connect.DBUtils;
import java.util.*;
import java.sql.*;
import Model.Driver;

public class DriverDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Driver> getAllDriver() {
        ArrayList<Driver> dl = new ArrayList<>();
        String query = "select * from driver";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                dl.add(new Driver(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getBoolean(10),
                        rs.getString(11),
                        rs.getBoolean(12)
                ));
            }
        } catch (Exception ex) {

        }
        return dl;
    }

    public Driver getDriverBy(String acc, String pass) {
        String query = "select * from driver where driverUserName = ? and driverPass = ?";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Driver(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getBoolean(10),
                        rs.getString(11),
                        rs.getBoolean(12)
                );
            }
        } catch (Exception ex) {

        }
        return null;
    }
}
