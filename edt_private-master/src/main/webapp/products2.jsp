<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/products.css" type="text/css">
    <title>EDT_SHOP</title>
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/script.js"></script>
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
           		<li><a href="#">ALL BRAND</a></li>
                <li><a href="#">JORDAN</a></li>
                <li><a href="#">NIKE</a></li>
                <li><a href="#">ADIDAS</a></li>
                <li><a href="#">NEW BALANCE</a></li>
            </ul>
        </div>
        <%@include file="dbconn.jsp" %>
        <div class="prod">
	        <div id="filter_box">
				<span class="filter">최신순</span>
				<span class="filter">인기순</span>
				<span class="filter">낮은 가격순</span>
				<span class="filter">높은 가격순</span>
	        </div>


		<script>
			%(function shopDefault() {
		        <%PreparedStatement pstmt = null;
	        	ResultSet rs = null;
	        	String sql = "SELECT * FROM product3";
	        	pstmt = conn.prepareStatement(sql); 
	        	rs = pstmt.executeQuery();
	        	while(rs.next()) {
	        	%>
	        	var objArr = new array();
	        	for ( var i = 0; <%=rs.next()%> != true; i++ ) {
		        	var obj = {
		        				obj.id : <%=rs.getString("p_id") %>,
		        				obj.brand : <%=rs.getString("p_brand") %>,
		        				obj.collection : <%=rs.getString("p_collection") %>,
		        				obj.ename : <%=rs.getString("p_ename") %>,
		        				obj.kname : <%=rs.getString("p_kname") %>,
		        				obj.image : <%=rs.getString("p_image") %>,
		        				obj.gender : <%=rs.getString("p_gender") %>,
		        				obj.size : <%=rs.getString("p_size") %>,
		        				obj.price : <%=rs.getString("p_price") %>,
		        				obj.stock : <%=rs.getString("p_stock") %>,
		        				obj.date : <%=rs.getString("p_date") %>,
		        				obj.hit : <%=rs.getString("p_hit") %>
		        	};
		        	objArr[i] = obj;
	        	};
	        	
	        	
	        	for (var j = 0; j < objArr.length; j++ ) {
	        		$("")
	        	}
	        	
	        	<%
	        	}
	        	rs.close();
    	    	pstmt.close();
	        	conn.close();
		        %>
			});
		</script>


	        <div class="product">
    	        <div class="wrap"> 
                    <a href="#"><img src="#" alt="no"></a>
                </div>
                <div class="product_info">
                  	<p class="brand"><a href="#"></a></p>
                    <p class="ename"><a href="#"></a></p>
                    <p class="kname"></p>
                    <h3><a href="#"></a></h3>
                </div>
            </div>
        </div>
    </section>
    
	<%@include file="footer.jsp"%>
</body>
</html>