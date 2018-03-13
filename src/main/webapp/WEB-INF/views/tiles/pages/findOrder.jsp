<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/myGlobal.css">
<div class="col-md-8">
    <h3> Order Details</h3>

    <div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Orders number</strong>
            </div>
            <div class="col-md-4 text-left">
                ${order01.orderNumber}
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>System</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.system}</div>
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Start Date</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.startDate}</div>
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Expiration Date</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.expirationDate}</div>
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Amount of money</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.amountOfMoney}</div>
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Payment Period</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.paymentPeriod}</div>
            </div>
        </div>
        <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
            <div class="col-md-4 text-left">
                <strong>Status</strong>
            </div>
            <div class="col-md-4 text-left">
                <div>${order01.isActiveAsString()}</div>
            </div>
        </div>
    </div>
</div>
</div>
</div>