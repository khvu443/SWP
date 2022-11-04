/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Testing;

import DAO.*;
import Model.*;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Calendar;
import java.util.Date;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import java.io.FileWriter;
import java.io.IOException;
import java.text.*;
import java.util.*;

public class Class {

    public static void main(String[] args) throws ParseException {

        BillDAO bills = new BillDAO();
        ArrayList<Bill> b = bills.getAllBillOfDriver("D1");

        for(Bill x : b)
        {
            System.out.println(x.toString());
        }
        

    }
}
