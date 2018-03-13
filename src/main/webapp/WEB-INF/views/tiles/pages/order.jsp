<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/myGlobal.css">

<table class="table">
    <thead class="thead-dark">
    <h4 class="table-title"> Order Details</h4>
    <tr>
        <th scope="col"><label style="font-size: 12px">Order Number</label></th>
        <th scope="col"><label style="font-size: 12px">System</label></th>
        <th scope="col"><label style="font-size: 12px">Start Date</label></th>
        <th scope="col"><label style="font-size: 12px">Expiration Date</label></th>
        <th scope="col"><label style="font-size: 12px">Amount of money</label></th>
        <th scope="col"><label style="font-size: 12px">Payment period</label></th>
        <th scope="col"><label style="font-size: 12px">still active</label></th>
        <th colspan="2"><label style="font-size: 12px"></label></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td><label style="font-size: 10px">${order.system.systemName}</label></td>
            <td><label style="font-size: 10px">${order.system.systemName}</label></td>
            <td><label style="font-size: 10px">${order.startDate}</label></td>
            <td><label style="font-size: 10px">${order.expirationDate}</label></td>
            <td><label style="font-size: 10px">${order.amountOfMoney}</label></td>
            <td><label style="font-size: 10px">${order.paymentPeriod}</label></td>
            <td><label style="font-size: 10px">${order.isActiveAsString()}</label></td>
            <td><a href="/order/eraze?orderId=${order.ordersId}">delete</a></td>
            <td><a href="/order/edit?orderId=${order.ordersId}">edit</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%--<h4 class="table-title"> Order Details</h4>--%>

<%--<table class="body">--%>
<%--<tBody>--%>
<%--<tr id="tableHeader">--%>
<%--<td><strong>Order Number</strong></td>--%>
<%--<td><strong>System</strong></td>--%>
<%--<td><strong>Start Date</strong></td>--%>
<%--<td><strong>Expiration Date</strong></td>--%>
<%--<td><strong>Amount of money</strong></td>--%>
<%--<td><strong>Payment period</strong></td>--%>
<%--<td><strong>still active</strong></td>--%>
<%--<td colspan="2"></td>--%>
<%--</tr>--%>
<%--<c:forEach var="order" items="${orders}">--%>
<%--<tr >--%>
<%--<td >${order.orderNumber}</td>--%>
<%--<td >${order.system.systemName}</td>--%>
<%--<td >${order.startDate}</td>--%>
<%--<td >${order.expirationDate}</td>--%>
<%--<td >${order.amountOfMoney}</td>--%>
<%--<td >${order.paymentPeriod}</td>--%>
<%--<td >${order.isActiveAsString()}</td>--%>
<%--<td ><a href="/order/eraze?orderId=${order.ordersId}">delete</a></td>--%>
<%--<td><a href="/order/edit?orderId=${order.ordersId}">edit</a></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--</tBody>--%>
<%--</table>--%>
<%--</div>--%>
