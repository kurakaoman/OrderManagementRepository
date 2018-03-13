<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
<form action="/order/find" method="GET">
    <div class="col-md-4">
        <h3> Find order</h3>

        <%--<Order Number>--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Order Number:</div>
            <input type="text" name="orderNumber" id="orderNumber" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <%--</Order Number>--%>
        <%--<System>--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">System:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px"><select name="systemName"
                                                                                                   id="system" style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da;">
                <option value="">Any</option>
                <c:forEach var="system" items="${systems}">
                    <option value="${system.systemName}">${system.systemName}</option>
                </c:forEach>
            </select>
            </div>
        </div>
        <%--<System>--%>
        <%--<Start data>--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Start date:</div>
            <input type="date" name="startDate" id="startDate" class="form-control" style="margin-bottom:10px"></input>
        </div>
        <%--</Start data>--%>
        <%--<Expiration date>--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Expiration date:</div>
            <input type="date" name="expirationDate" id="expirationDate" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <%--<Expiration date>--%>
        <%--<Amount of money--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Amount of money:</div>
            <input type="text" name="amountOfMoney" id="amountOfMoney" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <%--</Amount of money--%>
        <%--<Payment Period>--%>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Payment period:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px"><select name="amountPeriod"
                                                                                                   id="amountPeriod"
                                                                                                   style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
                                                                                                    border-color: #ced4da;">
                <option value="">Any</option>
                <option value="MONTHLY">Monthly</option>
                <option value="QUARTERLY">Quartely</option>
                <option value="ANNUAL">Annual</option>
            </select></div>
        </div>
        <%--</Payment Period>--%>
        <%--<Radio>--%>
        <div class="row">
            <div class="col-md-8">
                <c:if test="${order.active}">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="isActive" id="isActiveChecked" value="true"
                               checked>
                        <label class="form-check-label" for="isActiveChecked">is active</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="isActive" id="isNotActive" value="false">
                        <label class="form-check-label" for="isNotActive">is no longer Active</label>
                    </div>
                </c:if>
                <c:if test="${!order.active}">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="isActive" id="isActive" value="true" checked>
                        <label class="form-check-label" for="isActive">is active</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="isActive" id="isNotActiveChecked"
                               value="false">
                        <label class="form-check-label" for="isNotActiveChecked">is no longer active</label>
                    </div>
                </c:if>
            </div>
        </div>
        <%--<Radio>--%>
        <%--<Btton>--%>
        <div class="row">
            <div class="col-md-2 col-md-offset-10">
                <div class="from-group">
                    <input class="btn btn-primary float-right" type="submit" value="Search"/>
                </div>
            </div>
        </div>
        <%--</Btton>--%>
</form>
</body>