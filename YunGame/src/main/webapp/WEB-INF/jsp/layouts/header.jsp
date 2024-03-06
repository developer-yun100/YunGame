<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
    <head>
        <script type="text/javascript">
            function fn_logout(){
                ajaxPostCall("/mainHome/logout", {}, function(res){
                    alert("로그아웃 되었습니다.");
                    location.reload();
                    return;
                });
            }
        </script>
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="/mainHome/main">Players (G-Land Enterprise)</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="/mainHome/main">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="/mainHome/about">About</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Games</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                    <li><a class="dropdown-item" href="/mainHome/games?boardType=A001">퍼즐</a></li>
                                    <li><a class="dropdown-item" href="/mainHome/games?boardType=A002">검은숲</a></li>
                                    <li><a class="dropdown-item" href="/mainHome/games?boardType=A003">탐험! 던전</a></li>
                                    <li><a class="dropdown-item" href="/mainHome/games?boardType=A004">슈퍼 디펜스</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/mainHome/news">News</a></li>
                            <li class="nav-item"><a class="nav-link" href="/mainHome/faq">FAQ</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">채용</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                    <li><a class="dropdown-item" href="blog-home.html">수시 채용</a></li>
                                    <li><a class="dropdown-item" href="blog-post.html">공개 채용</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">해외지사</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                                    <li><a class="dropdown-item" href="portfolio-overview.html">New York (U.S.A)</a></li>
                                    <li><a class="dropdown-item" href="portfolio-item.html">Tokyo (Japan)</a></li>
                                    <li><a class="dropdown-item" href="portfolio-item.html">Shanghai (china)</a></li>
                                    <li><a class="dropdown-item" href="portfolio-item.html">London (U.K)</a></li>
                                </ul>
                            </li>
                            <c:if test="${sessionScope.USER_INFO.userId ne '' and not empty sessionScope.USER_INFO.userId}">
                                <li class="nav-item"><a class="nav-link" onclick="fn_logout();">${sessionScope.USER_INFO.userName} / 로그아웃</a></li>
                            </c:if>
                            <c:if test="${sessionScope.USER_INFO.userId eq '' or empty sessionScope.USER_INFO.userId}">
                                <li class="nav-item"><a class="nav-link" href="/mainHome/login">로그인</a></li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>

        </main>
    </body>
</html>

