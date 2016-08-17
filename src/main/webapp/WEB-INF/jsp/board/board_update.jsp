<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>MyCaffe Admin WebApp</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="<c:url value="/resources/vendor/fontawesome/css/font-awesome.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/vendor/metisMenu/dist/metisMenu.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/vendor/animate.css/animate.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/dist/css/bootstrap.css"/>" />

    <!-- App styles -->
    <link rel="stylesheet" href="<c:url value="/resources/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/fonts/pe-icon-7-stroke/css/helper.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/styles/style.css"/>" />

</head>
<body class="fixed-navbar fixed-sidebar">

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>MyCaffe - Smart Cafe Service</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<%@ include file="/WEB-INF/jsp/include/include_header.jspf" %>
<%@ include file="/WEB-INF/jsp/include/include_navigation.jspf" %>

<!-- Main Wrapper -->
<div id="wrapper">

    <div class="content animate-panel">
        <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                        </div>
                        공지사항 관리
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table cellpadding="1" cellspacing="1" class="table table-bordered table-striped">
                                <tbody>
                                <tr>
                					<th>글 번호</th>
                					<td>${map.noticeParentIDX }</td>
                					<th>조회수</th>
                					<td>${map.noticeCnt }</td>
            					</tr>
            					<tr>
                					<th>작성시간</th>
                					<td colspan="3">${map.noticeCreDtm }</td>
            					</tr>
                                <tr>
                					<th>제목</th>
                					<td colspan="3"><input type="text" id="TITLE" name="TITLE" value="${map.noticeTitle }"></input></td>
            					</tr>
                                <tr>
                					<th>내용</th>
                					<td colspan="3"><textarea rows="20" cols="100" title="내용" id="CONTENTS" name="CONTENTS">${map.noticeContents }</textarea></td>
            					</tr>
								</tbody>
                            </table>
                            <br/>
                            <a href="#this" id="list"><button type="button" class="btn w-xs btn-default">목록으로</button></a>
                            <a href="#this" id="update"><button type="button" class="btn w-xs btn-primary">저장하기</button></a>
                        </div>
                    </div>
                </div>
            </div>
		</div>
    </div>

    <!-- Footer-->
    <footer class="footer">
        <span class="pull-right">
            <strong>MyCaffe</strong> - Smart Cafe Service
        </span>
        2016 Copyright &copy; Glory
    </footer>

</div>

<form id="commonForm" name="commonForm"></form>

<!-- Vendor scripts -->
<script src="<c:url value="/resources/vendor/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/slimScroll/jquery.slimscroll.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-flot/jquery.flot.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-flot/jquery.flot.resize.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-flot/jquery.flot.pie.js"/>"></script>
<script src="<c:url value="/resources/vendor/flot.curvedlines/curvedLines.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery.flot.spline/index.js"/>"></script>
<script src="<c:url value="/resources/vendor/metisMenu/dist/metisMenu.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/iCheck/icheck.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/peity/jquery.peity.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/sparkline/index.js"/>"></script>

<!-- App scripts -->
<script src="<c:url value="/resources/scripts/homer.js"/>"></script>
<script src="<c:url value="/resources/scripts/charts.js"/>"></script>
<script src="<c:url value="/resources/scripts/commons.js"/>"></script>

<script>

    $(document).ready(function(){
    	$("#list").on("click", function(e){ //목록으로 버튼
            e.preventDefault();
            fn_openBoardList();
        });
         
        $("#update").on("click", function(e){ //저장하기 버튼
            e.preventDefault();
            fn_updateBoard($(this));
        });
    });
    
    function fn_openBoardList(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/board/openCafeNoticeMnt.do' />");
        comSubmit.submit();
    }
    
    function fn_updateBoard(obj){
        var comSubmit = new ComSubmit();
        var idx = "${map.noticeParentIDX }";
        var contents = $('textarea#CONTENTS').val();
        comSubmit.setUrl("<c:url value='/board/updateBoard.do' />");
        comSubmit.addParam("noticeParentIDX", idx);
        comSubmit.addParam("TITLE", obj.parent().find('#TITLE').val());
        comSubmit.addParam("CONTENTS", contents);
        comSubmit.submit();
    }
     
</script>

</body>
</html>