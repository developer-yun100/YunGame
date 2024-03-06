<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
    <script type="text/javascript">

    </script>
    <title></title>
</head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">

            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">공지사항</h1>
                    </div>
                    <a class="navbar-brand" href="/mainHome/newsList?boardType=A000">전체보기</a>
                    <c:if test="${sessionScope.USER_INFO.userType eq 'A'}">
                        <a class="navbar-brand" style="color: #0c63e4" href="/mainHome/main">수정</a>
                    </c:if>
                    <div class="row gx-5">

                        <div class="col-lg-6">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">
                                    Project name
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="position-relative mb-5 mb-lg-0">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">업데이트</h1>
                    </div>

                    <a class="navbar-brand" href="/mainHome/newsList?boardType=">전체보기</a>
                    <div class="row gx-5">
                        <div class="col-lg-6">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="position-relative mb-5">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="position-relative mb-5 mb-lg-0">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="position-relative">
                                <img class="img-fluid rounded-3 mb-3" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                                <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Project name</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <h2 class="display-4 fw-bolder mb-4">Let's build something together</h2>
                    <a class="btn btn-lg btn-primary" href="#!">Contact us</a>
                </div>
            </section>
        </main>
    </body>
</html>
