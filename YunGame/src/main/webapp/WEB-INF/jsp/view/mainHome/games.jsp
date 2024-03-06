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
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-3">
                            <div class="d-flex align-items-center mt-lg-5 mb-4">
                                <img class="img-fluid rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
                                <div class="ms-3">
                                    <div class="fw-bold">${data.userName}</div>
                                    <div class="text-muted">${data.regDate}</div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-9">
                            <article>
                                <header class="mb-4">
                                    <h1 class="fw-bolder mb-1">${data.title}</h1>
                                    <div class="text-muted fst-italic mb-2">${data.regDate} 조회수: ${data.hit} </div>
                                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">업데이트</a>
                                </header>
                                    ${data.content}


                                <h3 class="ui header">구글 플레이 다운로드 바로가기</h3>
                                <button class="google btnDownload"> </button>

                                <h3 class="ui header">윈도우 다운로드</h3>
                                <button class="window btnDownload"> </button>
                                <br />
                                <br />

                            <section>
                                <div class="card bg-light">
                                    <div class="card-body">
                                        <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                        <div class="d-flex mb-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                    <div class="ms-3">
                                                        <div class="fw-bold">Commenter Name</div>
                                                        And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                                    </div>
                                                </div>
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                                    <div class="ms-3">
                                                        <div class="fw-bold">Commenter Name</div>
                                                        When you put money directly to a problem, it makes a good headline.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Single comment-->
                                        <div class="d-flex">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>

                        </div>
                    </div>
                </div>
            </section>
        </main>
    </body>
</html>
