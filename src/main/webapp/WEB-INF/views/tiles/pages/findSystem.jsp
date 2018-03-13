<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<div>
    <div class="col-md-8">
        <h3> System Details</h3>
        <div>
            <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
                <div class="col-md-4 text-left">
                    <strong>Name</strong>
                </div>
                <div class="col-md-4 text-left">
                    ${system01.systemName}</div>
            </div>
            <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
                <div class="col-md-4 text-left">
                    <h3>System description</h3>
                </div>
                <div class="col-md-4 text-left">${system01.systemDescription}</div>
            </div>
            <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
                <div class="col-md-4 text-left">
                    <strong>Technology</strong>
                </div>
                <div class="col-md-4 text-left">${system01.technologyDescription}</div>
            </div>
            <div class="row" style="margin-bottom:10px;border-width:1px;border-style:solid;min-height:33.99px; width: 100%; border-spacing: 2px;border-radius: 2px;
    border-color: #ced4da; font-size:14px">
                <div class="col-md-4 text-left">
                    <strong>Client</strong>
                </div>
                <div class="col-md-4 text-left">${system01.client}</div>
            </div>
        </div>
    </div>
</div>