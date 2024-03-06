<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>

    <script type="text/javascript" src="/static/css/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>

    <script type="text/javascript">

        var oEditors = [];

        $(document).ready(function(){

            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "ir1",
                sSkinURI: "/static/css/smarteditor2/SmartEditor2Skin.html",
                fCreator: "createSEditor2"
            });


        });


        function fn_save() {
            // 에디터의 내용이 textarea에 적용된다.
            oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);

            // 에디터의 내용에 대한 값 검증은 이곳에서
            let data = {
                  "content" : document.getElementById("ir1").value
                , "boardType" : $("#boardType").val()
                , "title" : $("#title").val()
                , "userId" : "${sessionScope.USER_INFO.userId}"
            }

            ajaxPostCall("/mainHome/insertNewsWrite", data, function(res){
                if(res > 0){
                    alert("등록 되었습니다.");
                    location.href="/mainHome/newsList?boardType="+$("#boardType").val();
                } else {
                    alert("오류로 인하여 등록되지 못하였습니다.");
                }
            });
        }


    </script>
    <title></title>
</head>
    <body>

    <section class="py-5">
        <div class="container px-5 my-5">

            <div class="ui input" style="width: 595px; height: 44px;">
                <input type="text" id="title" placeholder="제목">
            </div>
            <select class="ui compact selection dropdown" id="boardType" style="height: 45px;">
                <option value="A000">공지사항</option>
                <option value="A005">업데이트</option>
            </select>
            <br />
            <textarea name="ir1" id="ir1" rows="10" cols="100"></textarea>
            <br />
            <br />

            <button class="ui primary button" onclick="fn_save();">저장</button>
            <button class="ui button">취소</button>
        </div>
    </section>


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    </body>
</html>
