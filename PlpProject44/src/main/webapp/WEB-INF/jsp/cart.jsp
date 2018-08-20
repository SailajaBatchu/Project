<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
<table border="1px" align="center" >
<tr>
<td>Customer id</td>
<td>Product id</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Amount</td>
</tr>

<a:forEach items="${cartProd}" var="prodInfo">

              <tr>
              <td>${prodInfo.c_id}</td>
              <td>${prodInfo.p_id}</td>
               <td>${prodInfo.p_name}</td>
                <td>${prodInfo.p_quantity} </td>
                <td>${prodInfo.cartAmount}</td>
            <td><a
                   href="/del/${prodInfo.p_id}">
                       Delete from cart</a></td>
      </tr>
   </a:forEach>
   </table>
   <div style="text-align:center">
   <a href="delall" class="w3-button w3-aqua w3-round-small">PlaceOrder</a>
   </div>
</body>
</html>