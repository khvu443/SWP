/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Testing;

import Model.*;
import DAO.*;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {

    public static void main(String[] args) {
        DriverDAO d = new DriverDAO();
        CustomerDAO c = new CustomerDAO();
        AdminDAO a = new AdminDAO();

        ArrayList<Customer> cl = c.getAllCustomer();

        System.out.println(isMailValid("Khvu443@gmail.com"));
    }

    static    boolean isMailValid(String mail)
    {
        String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+(?:\\.[a-zA-Z0-9_!#$%&'*+/=?`{|}~^-]+)*@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
        Pattern r = Pattern.compile(regex);
        Matcher m = r.matcher(mail);
        if(m.matches()) return true;
        return false;
    }

}
