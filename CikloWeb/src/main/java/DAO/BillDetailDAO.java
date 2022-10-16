package DAO;

import Connect.DBUtils;
import java.util.*;
import java.sql.*;
import Model.*;

public class BillDetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public BillDetail getDetailOf(String id) {
        String query = "select * from billdetail where detailID = ?";
        try {
            conn = new DBUtils().makeConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new BillDetail(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDouble(4)
                );
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return null;
    }
}
