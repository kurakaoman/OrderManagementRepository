<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/myGlobal.css">

<div>
    <h4 class="table-title"> System Details</h4>
    <table class="body">
        <tBody>
        <tr id="tableHeader">
            <td><strong>Name</strong></td>
            <td><strong>System Description</strong></td>
            <td><strong>Technology</strong></td>
            <td><strong>Client</strong></td>
            <td colspan="2"></td>
        </tr>
        <c:forEach var="system" items="${systems}">
            <tr>
                <td>${system.systemName}</td>
                <td>${system.systemDescription}</td>
                <td>${system.technologyDescription}</td>
                <td>${system.client}</td>
                <td><a href="/system/eraze?systemId=${system.systemId}">delete</a></td>
                <td><a href="/system/edit?systemId=${system.systemId}">edit</a></td>
            </tr>
        </c:forEach>
        </tBody>
    </table>
</div>

