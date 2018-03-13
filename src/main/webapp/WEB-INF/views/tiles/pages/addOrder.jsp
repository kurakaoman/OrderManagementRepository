<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<div class="col-md-4">
    <h3> Add new Order</h3>
    <form action="/order/save" method="POST">
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Order number:</div>
            <input type="number" max="10000" min="0" name="orderNumber" id="orderNumber" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <div class="form-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">System:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px"><select name="system"
                                                                                                   id="system" style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da;">
                <option value="${order.system.systemName}" selected="${order.system.systemName}"></option>
                <c:forEach var="system" items="${systems}">
                    <option value="${system.systemName}">"${system.systemName}"</option>
                </c:forEach>
            </select></div>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Start date:</div>
            <input type="date" name="startDate" id="startDate" class="form-control" style="margin-bottom:10px"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Expiration dater:</div>
            <input type="date" name="expirationDate" id="expirationDate" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Amount of money:</div>
            <input type="text" name="amountOfMoney" id="amountOfMoney" class="form-control"
                   style="margin-bottom:10px"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Period of payment:</div>
            <div class="row text-left" style="margin-bottom:10px; padding:  0 15px 0 15px"><select name="amountPeriod"
                                                                                                   id="amountPeriod"
                                                                                                   style="height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da;">
                <option value="MONTHLY">Monthly</option>
                <option value="QUARTERLY">Quartely</option>
                <option value="ANNUAL">Annual</option>
            </select></div>
        </div>
        <%-- radio--%>
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
                    <input class="btn btn-primary float-right" type="submit" value="Save"/>
                </div>
            </div>
        </div>
        <%--</Btton>--%>
    </form>
</div>