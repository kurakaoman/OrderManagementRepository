<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <link href="/bootstrap.min.css" rel="stylesheet">
    <script src="/jquery-2.2.1.min.js"></script>
    <script src="/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="margin: 50px">

    <%--<table style="border-collapse: separate">--%>
    <div class="row">
        <div class="col-md" style="text-align: center; margin-bottom: 15px">
            <tiles:insertAttribute name="header"/>
        </div>
    </div>
    <div class="row" valign="top" ;style="height=80%">
        <div class="col-md-2">
            <tiles:insertAttribute name="menu"/>
        </div>
        <div class="col-md-10">
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <tiles:insertAttribute name="footer"/>
        </div>
    </div>

</div>
</body>
</html>