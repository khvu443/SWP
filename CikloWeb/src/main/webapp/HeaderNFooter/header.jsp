<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="DetailRoute.jsp">Detail ${route}</a></li>
                        <li><a href="About.jsp">About Us</a></li>
                        <li>
                            <form class="d-flex" role="search" id="searchBtn">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-white" type="submit">Search</button>
                            </form>
                        </li>
                        <li>    
                        <c:if test="${not empty User}">
                            <div class="d-flex">                            
                                <c:set var = "ID" value = "${ID}"></c:set>
                                <c:if test = "${fn:contains(ID, 'D')}">
                                    <p class= "text-secondary">Hello ${User.driverName}</p>
                                </c:if>

                                <c:if test = "${fn:contains(ID, 'KH')}">

                                    <p class= "text-secondary">Hello ${User.cusName}</p>
                                </c:if>

                                <c:if test = "${fn:contains(ID, 'AD')}">
                                    <p class= "text-secondary">Hello ${User.driverName}</p>
                                </c:if>
                            </div>
                        </c:if>
                        <c:if test="${empty User}">
                            <a href="Login.jsp"><i class=""></i> Login</ <aa>
                                    </c:if>


                                    </li>
                                    </ul>   
                                    <a class='menu-trigger'>
                                        <span>Menu</span>
                                    </a>
                                    <!-- ***** Menu End ***** -->
                                    </nav>
                                    </div>
                                    </div>
                                    </div>
                                    </header>
                                    <!-- ***** Header Area End ***** -->
                                    
                                    

