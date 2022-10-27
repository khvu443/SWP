/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import DAO.AdminDAO;
import DAO.CustomerDAO;
import DAO.DriverDAO;
import Model.Admin;
import Model.Customer;
import Model.Driver;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

@MultipartConfig
@WebServlet(name = "UpdateAccountServlet", urlPatterns = {"/UpdateAccountServlet"})
public class UpdateAccountServlet extends HttpServlet {

    CustomerDAO cdao = new CustomerDAO();
    AdminDAO adao = new AdminDAO();
    DriverDAO ddao = new DriverDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("ID");
        System.out.println("id " + id);

        if (id.contains("KH")) {
            Customer acc = (Customer) session.getAttribute("User");
            System.out.println(acc.toString());
            Customer cus = cdao.getInforBy(acc.getCusID());
            session.setAttribute("u", cus);

            session.setAttribute("id", acc.getCusID());

        }
        if (id.contains("AD")) {
            Admin ad = (Admin) session.getAttribute("User");
            System.out.println(ad.toString());
            Admin a = adao.getAdminInfo(ad.getAdID());
            session.setAttribute("u", a);
            session.setAttribute("id", ad.getAdID());
        }

        if (id.contains("D")) {
            Driver driver = (Driver) session.getAttribute("User");
            System.out.println(driver.toString());
            Driver d = ddao.getDriverInfo(driver.getDriverID());
            session.setAttribute("u", d);
            session.setAttribute("id", driver.getDriverID());
        }

        request.getRequestDispatcher("UpdateAccount.jsp").
                forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "";

        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String avatar = "";
        boolean gender = false;

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("ID");
        System.out.println("id update" + id);

        Customer cus = null;
        Admin a = null;

        if (id.contains("KH")) {
            Customer acc = (Customer) session.getAttribute("u");
            if (acc != null) {
                cus = new Customer(acc.getCusID(), name, email, username, password, phone);
                cdao.updateAccount(acc.getCusID(), cus);
                request.setAttribute("message",
                        "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n"
                        + "  <i class=\"bi bi-check-lg\"></i> UPDATE SUCCESS\n"
                        + "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\n"
                        + "</div>");
                request.getRequestDispatcher("index.jsp").
                        forward(request, response);
            }
        }

        if (id.contains("AD")) {
            Admin ad = (Admin) session.getAttribute("u");
            if (ad != null) {

                Part part = request.getPart("image");
                String photoPath = request.getServletContext().getRealPath("/img");

                String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
                if (!Files.exists(Path.of(photoPath))) {
                    Files.createDirectories(Path.of(photoPath));
                }
                part.write(photoPath + "/" + filename);

                a = new Admin(ad.getAdID(), name, username, password, email, phone, "image/" + filename);
                adao.updateAccountAdmin(ad.getAdID(), a);
                request.setAttribute("message",
                        "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n"
                        + "  <i class=\"bi bi-check-lg\"></i> UPDATE SUCCESS\n"
                        + "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\n"
                        + "</div>");
//                request.getRequestDispatcher("admin.jsp").
//                        forward(request, response);

            }
        }

        if (id.contains("D")) {
            Driver driver = (Driver) session.getAttribute("u");

            gender = Boolean.parseBoolean(request.getParameter("gender"));
            if (driver != null) {

                Part part = request.getPart("photo");
                String photoPath = request.getServletContext().getRealPath("Driver/image");

                System.out.println("part " + part);
                System.out.println("photoPath " + photoPath);

                String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
                if (!Files.exists(Path.of(photoPath))) {
                    Files.createDirectories(Path.of(photoPath));
                }
                part.write(photoPath + "/" + filename);

                ddao.updateDriver(driver.getDriverID(), name, username, password, email, phone, "/Driver/image/" + filename, gender);
                request.setAttribute("message",
                        "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\n"
                        + "  <i class=\"bi bi-check-lg\"></i> UPDATE SUCCESS\n"
                        + "  <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>\n"
                        + "</div>");
                response.sendRedirect("./Driver/DriverPage.jsp");
            }
        }
    }

}
