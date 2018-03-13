<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 01.01.2018
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/myGlobal.css">

<div>
    <h4 class="table-title"> Order Details</h4>

    <table class="body">
        <tbody>
        <tr id="tableHeader">
            <td><strong>Order Number</strong></td>
            <td><strong>System</strong></td>
            <td><strong>Start Date</strong></td>
            <td><strong>Expiration Date</strong></td>
            <td><strong>Amount of money</strong></td>
            <td><strong>Payment period</strong></td>
            <td><strong>still active</strong></td>
            <td colspan="2"></td>
        </tr>
        <c:forEach var="order" items="${orders}">
            <c:if test="${order.active}">
                <tr>
                    <td>${order.orderNumber}</td>
                    <td>${order.system.systemName}</td>
                    <td>${order.startDate}</td>
                    <td>${order.expirationDate}</td>
                    <td>${order.amountOfMoney}</td>
                    <td>${order.paymentPeriod}</td>
                    <td>${order.isActiveAsString()}</td>
                    <td><a href="/order/eraze?orderId=${order.ordersId}">delete</a></td>
                    <td><a href="/order/edit?orderId=${order.ordersId}">edit</a></td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</div>
