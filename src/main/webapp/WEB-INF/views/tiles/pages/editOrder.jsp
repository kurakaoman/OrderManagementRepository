<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/myGlobal.css">

<div class="col-md-4">
    <h3> Edit order</h3>
    <form action="/order/modify" method="POST">
        <input type="hidden" name="orderId" id="orderId" value="${order.ordersId}">
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Order Number:</div>
            <input type="text" name="orderNumber" id="orderNumber" class="form-control" style="margin-bottom:10px"
                   value="${order.orderNumber}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">System:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px">
                <select name="system" id="drop" style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da;">
                    <option value="${order.system.systemName}" selected="${order.system.systemName}">
                        "${order.system.systemName}"
                    </option>
                    <c:forEach var="system" items="${systems}">
                        <option value="${system.systemName}">"${system.systemName}"</option>
                    </c:forEach>
                </select></div>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Start date:</div>
            <input type="date" name="startDate" id="startDate" class="form-control" style="margin-bottom:10px"
                   value="${order.dateToString(order.startDate)}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Expiration date:</div>
            <input type="date" name="expirationDate" id="expirationDate" class="form-control" style="margin-bottom:10px"
                   value="${order.dateToString(order.expirationDate)}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Amount of money:</div>
            <input type="text" name="amountOfMoney" id="amountOfMoney" class="form-control" style="margin-bottom:10px"
                   value="${order.amountOfMoney}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Payment period:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px">
                <select name="amountPeriod" style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da;" id="amountPeriod">
                    <option value="MONTHLY" selected="${order.paymentPeriod}">Monthly</option>
                    <option value="QUARTERLY">Quartely</option>
                    <option value="ANNUAL">Annual</option>
                </select></div>
        </div>
        <%--<div class="radio">--%>
        <c:if test="${order.active}">
        <div class="row" style="margin:  0 10px 0 10px">
            <div class="radio">
                <div overflow="hide">
                    <div style=" float:left; width: 100px;">
                        <labal><input type="radio" name="isActive" value=true checked true>is Active</labal>
                    </div>
                    <div style=" float:left; width: 100px;"><label><input type="radio" name="isActive" value=false>is No
                        Longer Active</label>
                    </div>
                    </c:if>
                </div>
                <c:if test="${!order.active}">
                <div class="radio">
                    <label>
                        <div overflow="hide">
                            <div style=" float:left; width: 100px;">
                                <labal><input type="radio" name="isActive" value=true>is Active</labal>
                            </div>
                            <div style=" float:left; width: 100px;"><label><input type="radio" name="isActive"
                                                                                  value=false
                                                                                  checked true>is No Longer
                                Active</label>
                            </div>
                        </div>
                    </label>
                    </c:if>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2 col-md-offset-10">
                    <div class="from-group">
                        <input class="btn btn-primary float-right" type="submit" value="Save"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>