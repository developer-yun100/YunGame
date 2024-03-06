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
    <title></title>
</head>
<body>
    <tiles:insertAttribute name="popupBody" />
</body>
</html>