/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Testing;

import DAO.*;
import Model.*;
import System.AvgEarningDriver;
import System.SaveToJSON;
import java.text.*;
import java.util.*;

public class Test {

    static SaveToJSON save = new SaveToJSON();
    static AvgEarningDriver avg = new AvgEarningDriver();

    public static void main(String[] args) throws ParseException {
        BillDAO bills = new BillDAO();
        ArrayList<Bill> b = bills.getAllBillOfDriver("D1");
        
        save.saveFile(avg.EarningAvg(b), "EarningAvg");
        save.saveFile(avg.NumberTrip(b), "NumberTrip");

    }
}
