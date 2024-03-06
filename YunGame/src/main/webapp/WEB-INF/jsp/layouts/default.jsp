<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
    <%-- lib, component --%>
    <script type="text/javascript" src="/static/css/Semantic/jquery-3.3.1.js"></script>
    <script src="/static/js/common.js"></script>

    <%-- Semantic --%>
    <script src="/static/css/Semantic/semantic.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/static/css/Semantic/semantic.min.css"/>

    <%-- OY-UI --%>
    <link type="text/css" rel="stylesheet" href="/static/css/oy-box/css/oy-style.css"/>
    <script src="/static/css/oy-box/js/OY-UI-Grid.js"></script>
    <script src="/static/css/oy-box/js/OY-UI-Item.js"></script>

    <%-- bootstrap --%>
    <script src="/static/css/bootstrap/js/bootstrap.bundle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/static/css/bootstrap/css/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="/static/css/bootstrap/assets/favicon.ico" />
    <title>OYun, Joo Enterprise</title>
</head>
    <body>
        <!-- Page Header -->
        <tiles:insertAttribute name="header" />

        <!-- Page Contents -->
        <tiles:insertAttribute name="body" />

        <!-- Page Footer -->
        <tiles:insertAttribute name="footer" />

    </body>
</html>