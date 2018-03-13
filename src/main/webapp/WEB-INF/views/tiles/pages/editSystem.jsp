<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<div class="col-md-4">
    <h3> Edit system</h3>
    <form action="/system/modify" method="POST">
        <input type="hidden" name="systemId" id="systemId" value="${system.systemId}">
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Name:</div>
            <input type="text" name="systemName" id="systemName" class="form-control" style="margin-bottom:10px"
                   value="${system.systemName}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">System Description:</div>
            <input type="text" name="systemDescription" id="systemDescription" class="form-control"
                   style="margin-bottom:10px"
                   value="${system.systemDescription}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Technology Description:</div>
            <input type="text" name="technologyDescription" id="technologyDescription" class="form-control"
                   style="margin-bottom:10px"
                   value="${system.technologyDescription}"></input>
        </div>
        <div class="from-group">
            <div class="row" style="text-align:left; padding: 0 15px 0 15px">Client:</div>
            <input type="text" name="client" id="client" class="form-control" style="margin-bottom:10px"
                   value="${system.client}"></input>
        </div>

        <div class="row">
            <div class="col-md-2 col-md-offset-10">
                <div class="from-group">
                    <input class="btn btn-primary float-right" type="submit" value="Save"/>
                </div>
            </div>
        </div>
    </form>
</div>