<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
    <title></title>
</head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">

            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">
                                    G-Land Enterprise의 Team Players가 당신을 초대합니다 !
                                </h1>
                                <p class="lead fw-normal text-white-50 mb-4"></p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">소개</a>
                                    <%--<a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a>--%>
                                </div>
                            </div>
                        </div>

                        <%-- 카드 슬라이드 --%>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="/static/images/cardImages/darkForest.png" style="width:400px; height: 600px;" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="/static/images/cardImages/puzzle.png" style="width:400px; height: 600px;" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="/static/images/cardImages/pagestone.png" style="width:400px; height: 600px;" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                        <%-- 카드 슬라이드 --%>
                    </div>
                </div>
            </header>

            <!-- Features section-->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <h2 class="fw-bolder mb-0">
                                저희는 4가지의 재미있는 상상을 현실화 하여, 당신의 삶에 활력을 넣어줄 것 입니다.
                            </h2>
                        </div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-collection"></i>
                                    </div>
                                    <h2 class="h5">시장</h2>
                                    <p class="mb-0">
                                        게임 시장의 형성과 형태, 발전 과정을 토대로 플레이어 님들의 성향과 니즈를 분석해
                                        재미있고 다양한 게임을 제작 해 게임 시장을 선도 할 것 입니다.
                                    </p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-building"></i>
                                    </div>
                                    <h2 class="h5">기술</h2>
                                    <p class="mb-0">
                                        게임 메타버스 세계의 발전과 자동화 솔루션 기술 개발 통해
                                        게임 스크립트 제작 방법을 용이하게 하여, 창작에 참여 할 수 있도록 플레이어 님들의 상상력을 자극할 것 입니다.
                                    </p>
                                </div>
                                <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-toggles2"></i>
                                    </div>
                                    <h2 class="h5">경험</h2>
                                    <p class="mb-0">플레이어님에게 잊을 수 없는 경험과 추억을 남겨, 마음속 깊이 전달 할 것 입니다.</p>
                                </div>
                                <div class="col h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                                        <i class="bi bi-toggles2"></i>
                                    </div>
                                    <h2 class="h5">인류</h2>
                                    <p class="mb-0">
                                        우리는 하나
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Testimonial section-->
            <div class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">
                                    게임은 우리에게 삶의 활력을 더욱 증진 시킬 수 있는
                                    가성비 좋은 최고의 수단 중 하나라 생각합니다.
                                </div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                    <div class="fw-bold">
                                        OYun, Joo
                                        <span class="fw-bold text-primary mx-1">/</span>
                                        CEO or Developer or Artist
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Blog preview section-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <div class="text-center">
                                <h2 class="fw-bolder">업데이트 뉴스</h2>
                                <p class="lead fw-normal text-muted mb-5">
                                    게임의 운영, 개발, 아티스트 작업과 이벤트 및 업데이트 내역을 알려 드립니다 !
                                    많은 응원과 관심 부탁 드리겠습니다. 감사합니다.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="row gx-5">

                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="/static/images/maps.png" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">
                                        update
                                    </div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!">
                                        <h5 class="card-title mb-3">
                                            검은 숲 맵 제작
                                        </h5>
                                    </a>
                                    <p class="card-text mb-0">
                                        탐험 욕구를 자극시키기 위해 재미있는 기믹과 보상을 준비 하였습니다.
                                    </p>
                                </div>

                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">dev-JooOYun</div>
                                                <div class="text-muted">2024-02-16 10시간 전</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="/static/images/maps.png" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">
                                        update
                                    </div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!">
                                        <h5 class="card-title mb-3">
                                            검은 숲 맵 제작
                                        </h5>
                                    </a>
                                    <p class="card-text mb-0">
                                        탐험 욕구를 자극시키기 위해 재미있는 기믹과 보상을 준비 하였습니다.
                                    </p>
                                </div>

                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">dev-JooOYun</div>
                                                <div class="text-muted">2024-02-16 10시간 전</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="/static/images/maps.png" alt="..." />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">
                                        update
                                    </div>
                                    <a class="text-decoration-none link-dark stretched-link" href="#!">
                                        <h5 class="card-title mb-3">
                                            검은 숲 맵 제작
                                        </h5>
                                    </a>
                                    <p class="card-text mb-0">
                                        탐험 욕구를 자극시키기 위해 재미있는 기믹과 보상을 준비 하였습니다.
                                    </p>
                                </div>

                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold">dev-JooOYun</div>
                                                <div class="text-muted">2024-02-16 10시간 전</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                    <!-- Call to action-->
                    <%--<aside class="bg-primary bg-gradient rounded-3 p-4 p-sm-5 mt-5">
                        <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start">
                            <div class="mb-4 mb-xl-0">
                                <div class="fs-3 fw-bold text-white">New products, delivered to you.</div>
                                <div class="text-white-50">Sign up for our newsletter for the latest updates.</div>
                            </div>
                            <div class="ms-xl-4">
                                <div class="input-group mb-2">
                                    <input class="form-control" type="text" placeholder="Email address..." aria-label="Email address..." aria-describedby="button-newsletter" />
                                    <button class="btn btn-outline-light" id="button-newsletter" type="button">Sign up</button>
                                </div>
                                <div class="small text-white-50">We care about privacy, and will never share your data.</div>
                            </div>
                        </div>
                    </aside>--%>
                </div>
            </section>

        </main>
    </body>
</html>
