<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <title>회원가입</title>
    <script type="text/javascript">
        function fn_createUser(){

            let data = {
                userId: $("#userId").val()
                ,userName: $("#userName").val()
                ,password: $("#password").val()
            };

            ajaxPostCall("/mainHome/createUser", data, function(res){
                console.log(res.result);
            });

        }
    </script>
</head>
    <body>
    <br />
        <div class="ui text container">
            <form class="ui form" id="signForm" name="signForm">
                <div class="field">
                    <div class="ui middle aligned center aligned grid">
                        <h2 class="ui teal image header">
                            <label style="color: #0d6efd">회원가입</label>
                        </h2>
                    </div>
                </div>
                <br />
                <br />
                <div class="field">
                    <label>아이디</label>
                    <input type="text" id="userId" />
                </div>
                <div class="field">
                    <label>닉네임</label>
                    <input type="text" id="userName" />
                </div>
                <div class="field">
                    <label>비밀번호</label>
                    <input type="password" id="password" />
                </div>
                <div class="field">
                    <label>비밀번호 확인</label>
                    <input type="password" id="passwordCheck" />
                </div>
                <div class="field">
                    <div class="ui fluid large teal submit button" style="background-color: #0d6efd" onclick="fn_createUser();">회원가입</div>
                    <div class="ui message">
                        회원이 아니시라면 회원가입을 통해 다양한 이벤트를 참여 해 보세요!
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>