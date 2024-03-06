<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<html>
    <head>
        <script type="text/javascript">

            var boardType = '${boardType}';


            function fn_boardView(){

                location.href="";

            }

            function fn_page(page){

                let data = {
                      "boardType": boardType
                    , "pageNumber": page
                };

                ajaxPostCall("/mainHome/newsListPage", data, function(res){

                    $("#board").empty();
                    let html = "";
                    for(let i = 0; i < res.boardList.length; i++){
                        html += '<tr>';
                        html += '<td> ' + res.boardList[i].seq + '</td>';
                        html += '<td> ' + res.boardList[i].title + '</td>';
                        html += '<td> ' + res.boardList[i].userId + '</td>';
                        html += '<td> ' + res.boardList[i].regDate + '</td>';
                        html += '<td> ' + res.boardList[i].hit + '</td>';
                        html += '</tr>';
                    }
                    $("#board").html(html);

                    $("#paging").empty();
                    let pagingHtml = "";
                    pagingHtml += '<li class="page-item">';
                    pagingHtml += '<a class="page-link" onclick="fn_page('+res.paging.firstPage+')">'+ '<<' + '</a>';
                    pagingHtml += '</li>';
                    pagingHtml += '<li class="page-item">';
                    pagingHtml += '<a class="page-link" onclick="fn_page('+res.paging.prevPage+')">'+ '<' + '</a>';
                    pagingHtml += '</li>';

                    for(let i = 0; i < res.paging.blockPage.length; i++){
                        pagingHtml += '<li class="page-item">';
                        if(page == res.paging.blockPage[i].page){
                            pagingHtml += '<a class="page-link" style="color: #9e1317" onclick="fn_page('+res.paging.blockPage[i].page+')">'+ res.paging.blockPage[i].page + '</a>';
                        } else {
                            pagingHtml += '<a class="page-link" onclick="fn_page('+res.paging.blockPage[i].page+')">'+ res.paging.blockPage[i].page + '</a>';
                        }
                        pagingHtml += '</li>';
                    }

                    pagingHtml += '<li class="page-item">';
                    pagingHtml += '<a class="page-link" onclick="fn_page('+res.paging.nextPage+')">'+ '>' + '</a>';
                    pagingHtml += '</li>';

                    pagingHtml += '<li class="page-item">';
                    pagingHtml += '<a class="page-link" onclick="fn_page('+res.paging.lastPage+')">'+ '>>' + '</a>';
                    pagingHtml += '</li>';

                    $("#paging").html(pagingHtml);
                });

            }

        </script>
        <title></title>
    </head>
    <body>

    <header class="py-5">
        <div class="container px-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xxl-6">
                    <div class="text-center my-5">
                        <h1 class="fw-bolder mb-3">공지사항</h1>
                        <p class="lead fw-normal text-muted mb-4">최신 소식을 확인 해 보세요 !</p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="py-5">
        <div class="container px-5 my-5">
            <c:if test="${sessionScope.USER_INFO.userType eq 'A'}">
                <button type="button" class="btn btn-success" onclick="location.href='/mainHome/newsWrite'">글쓰기</button>
            </c:if>

            <%-- 나비 --%>
            <nav class="navbar navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
                        공지사항
                    </a>
                </div>
            </nav>
            <%-- 나비 --%>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>날짜</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <tbody id="board">
                <c:forEach var="data" items="${data}">
                    <tr>
                        <td>${data.seq}</td>
                        <td onclick="fn_boardView();">${data.title}</td>
                        <td>${data.userId}</td>
                        <td>${data.regDate}</td>
                        <td>${data.hit}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <%--
                    <li class="page-item disabled">
                        <a class="page-link" href="#"><<</a>
                    </li>
            --%>

            <nav aria-label="Page navigation example">

                <ul class="pagination justify-content-center" id="paging">
                    <li class="page-item">
                        <a class="page-link" onclick="fn_page('${paging.firstPage}')"><<</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" onclick="fn_page('${paging.prevPage}')"><</a>
                    </li>
                    <c:forEach var="pagingData" items="${paging.blockPage}">
                        <li class="page-item"><a class="page-link" onclick="fn_page('${pagingData.page}')">${pagingData.page}</a></li>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link" onclick="fn_page('${paging.nextPage}')">></a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" onclick="fn_page('${paging.lastPage}')">>></a>
                    </li>
                </ul>
            </nav>

        </div>
    </section>
    </body>
</html>
