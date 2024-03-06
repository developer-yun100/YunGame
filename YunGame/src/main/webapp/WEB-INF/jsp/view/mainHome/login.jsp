<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
    <script type="text/javascript">
        function fn_selectUser(){
            let data = {
                userId: $("#userId").val()
                ,password: $("#password").val()
            };

            ajaxPostCall("/mainHome/selectUser", data, function(res){
                if(res.result < 1){
                    alert("계정 및 비밀번호가 다릅니다.");
                    return;
                } else {
                    location.href = "/mainHome/main";
                }
            });
        }

        function fn_signUp(){
            window.open("/mainHome/signUpPopup","회원가입", "width=600,height=800");
        }
    </script>
    <style>
        .bg-image {
            background-image: url('/static/images/WinPopup22.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
    </style>
    <title></title>
</head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">

            <div class="container-fluid px-5 my-5" style="height: 800px;">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="card border-0 rounded-3 shadow-lg overflow-hidden">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-sm-6 d-none d-sm-block bg-image" style="height:700px;"></div>
                                    <div class="col-sm-6 p-4">
                                        <div class="text-center">
                                            <div class="h3 fw-light">로그인</div>
                                            <p class="mb-4 text-muted">회원이 아니시라면 회원가입을 통해 다양한 이벤트를 참여 해 보세요!</p>
                                        </div>

                                        <form>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="userId" type="text" placeholder="아이디"/>
                                                <label for="userId">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="password" type="email" placeholder="비밀번호" />
                                                <label for="password">비밀번호</label>
                                            </div>
                                            <div class="d-grid">
                                                <button class="btn btn-primary btn-lg" style="height:60px;" onclick="fn_selectUser();">로그인</button>
                                            </div>

                                            <div class="text-center">
                                                <a class="small" onclick="fn_signUp();">회원가입</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>
    </body>
</html>