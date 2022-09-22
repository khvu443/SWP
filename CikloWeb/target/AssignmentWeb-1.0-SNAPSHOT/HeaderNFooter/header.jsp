

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
                        <li><a href="reservation.html">About Us</a></li>
                        <li>
                            <form class="d-flex" role="search" id="searchBtn">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-white" type="submit">Search</button>
                            </form>
                        </li>
                        <li>    
                            <div class="d-flex">                            
                                <img src="image/avatar.png"  alt="thumbnail img" style="width: 30px; height: 30px">
                                <p class="text-white">User</p>
                            </div>
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
