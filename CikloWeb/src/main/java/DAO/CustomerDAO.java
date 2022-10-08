/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Connect.DBUtils;
import java.util.*;
import java.sql.*;
import Model.*;

public class CustomerDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Customer getCustomerBy(String acc, String pass) {
        String query = "select * from customer where cusUserName = ? and cusPass = ?";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Customer(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }
        } catch (Exception ex) {

        }
        return null;
    }

    public ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> cl = new ArrayList<>();
        String query = "select * from customer";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                cl.add(new Customer(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception ex) {

        }
        return cl;
    }

    public void addCustomer(String id, String name, String mail, String user, String pass, String phone) {
        String query = "insert into customer values (?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, mail);
            ps.setString(4, user);
            ps.setString(5, pass);
            ps.setString(6, phone);

            rs = ps.executeQuery();
        } catch (Exception e) {

        }
    }
}
