<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/products.css" type="text/css">
    <title>EDT_SHOP</title>
</head>

<body>
    <%@include file="header.jsp"%>
    
    <nav id="gender_menu">
        <a href="#">MEN</a>
        <a href="#">WOMEN</a>
        <a href="#">KIDS</a>
    </nav>
    
    <section id="products">
        <div class="kind_menu">
            <h1>BRAND</h1>
            <ul>
           		<li><a href="products.jsp">ALL BRAND</a></li>
                <li><a href="products_Brand.jsp?brand='JORDAN'">JORDAN</a></li>
                <li><a href="products_Brand.jsp?brand='NIKE'">NIKE</a></li>
                <li><a href="products_Brand.jsp?brand='ADIDAS'">ADIDAS</a></li>
                <li><a href="products_Brand.jsp?brand='NEW BALANCE'">NEW BALANCE</a></li>
            </ul>
        </div>
        <%@include file="dbconn.jsp" %>
        <div class="prod">
        <%	PreparedStatement pstmt = null;
        	ResultSet rs = null;
        	String brand = request.getParameter("brand");
        	
        	String sql = "SELECT * FROM product3 WHERE p_brand="+brand;
        	pstmt = conn.prepareStatement(sql);
        	rs=pstmt.executeQuery();
        	while(rs.next()){
        	%>
            <div class="product">
                <div class="wrap">
                    <a href="product.jsp?p_id=<%=rs.getString("p_id")%>"><img src="resources/img/p_img/<%=rs.getString("p_image")%>" alt="no"></a>
                </div>
                <div class="product_info">
                    <p class="brand"><a href="products_Brand.jsp?brand='<%=rs.getString("p_brand")%>'"><%=rs.getString("p_brand")%></a></p>
                    <p class="ename"><a href="#"><%=rs.getString("p_ename")%></a></p>
                    <p class="kname"><%=rs.getString("p_kname")%></p>
                    <h3><a href="#"><%=rs.getString("p_price").replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",")%>원</a></h3>
                </div>
            </div>
            <% }
        	rs.close();
        	pstmt.close();
        	conn.close();
        %>
        </div>
    </section>
    
	<%@include file="footer.jsp"%>
</body>
</html>