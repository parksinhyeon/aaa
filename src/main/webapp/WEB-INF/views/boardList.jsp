<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>게시판 페이지</title>
    <!-- css 가져오기 -->
    <link rel="stylesheet" type="text/css" href="/resources/semantic.min.css">

    <style type="text/css">
        body {
            background-color: #DADADA;
        }

        body>.grid {
            height: 100%;
        }

        .image {
            margin-top: -100px;
        }

        .column {
            max-width: 1000px;
        }

        .view_btn {
            cursor: pointer;
        }

    </style>
</head>

<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
                게시판
            </h2>
            <div class="ui large form">
                <div class="ui stacked segment">
                    <a href="/boardDetail.do"><button class="ui fluid large teal submit button">게시글 작성하기</button></a>
                    <table class="ui celled table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>제목</th>
                                <th>등록자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody id="list">	
                        <tr>
                        	 <td>1</td>
                              <td><a href="#" onclick="show_detail();">제목입니다</a></td>
                              <td>박신현</td>
                              <td>2022.10.06</td>
                        <tr>
                        <tr>
                        	 <td>2</td>
                               <td><a href="#" onclick="show_detail();">제목입니다</a></td>
                              <td>박신현</td>
                              <td>2022.10.06</td>
                        <tr>
                        </tbody>
                    </table>
                </div>

                <div class="ui error message"></div>

            </div>
        </div>
    </div>

    <div class="ui modal" id='view_modal'>
        <i class="close">x</i>
        <div class="header" id="b_title">
            
        </div>
        <div class="content">
            <div class="description">
            	<p style = "text-align: right" id = "b_review"></p>
            	<div id = 'b_content'></div>
            </div>
        </div>
        <div class="actions">
            <div class="ui black deny button">
                닫기
            </div>
        </div>
    </div>

    <!-- js 가져오기 -->
    <script src="/resources/jquery3.3.1.min.js"></script>
    <script src="/resources/semantic.min.js"></script>
 <script>
        $(document).ready(function() {
            $.ajax({
                type: "get",
                url: "",
                success: function(data) {
                    
                },
                error: function(error) {
                    alert("오류 발생" + error);
                }
            });
        });
/*         $(document).on("click", ".view_btn", function() {
            var b_no = $(this).parent().attr("data-id");

            $.ajax({
                type: "get",
                url: "get_bbs",
                data: {
                    b_no: b_no
                },
                success: function(data) {
                	console.log(data);
                	$("#b_title").text(data['b_title']);
                	$("#b_review").text(data['b_ownernick'] + " - " +  FormatToUnixtime(data['b_regdate']));
                	$("#b_content").text(data['b_content']);
                	$('#view_modal').modal('show');
                },
                error: function(error) {
                    alert("오류 발생" + error);
                }
            });
        });
         */
        function show_detail(){
        	$("#b_title").text("제목입니다");
        	$("#b_content").text("내용입니다.");
        	$('#view_modal').modal('show');
        }

    </script>
    
</body>

</html>
