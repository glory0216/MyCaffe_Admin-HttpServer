<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
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
                    카페 정보 수정
                </div>
                <div class="panel-body">
                <form method="post" class="form-horizontal" enctype="multipart/form-data">
                <div class="form-group"><label class="col-sm-2 control-label">카페 이름</label>

                    <div class="col-sm-10">
                    	<div class="input-group"><input type="text" class="form-control" id="cName" name="cName"> 
                    	<span class="input-group-btn"> <a href="#this" id="editName"><button type="button" class="btn w-xs btn-primary">수정</button></a> </span>
                    	</div>
                    </div>
                </div>
                <div class="hr-line-dashed"></div>
                <div class="form-group"><label class="col-sm-2 control-label">카페 전화번호</label>
					
					<div class="col-sm-10">
                    	<div class="input-group"><input type="text" class="form-control" id="cTel"> 
                    	<span class="input-group-btn"> <a href="#this" id="editTel"><button type="button" class="btn w-xs btn-primary">수정</button></a> </span>
                    	</div>
                    </div>
                </div>
                <div class="hr-line-dashed"></div>
				<div class="form-group"><label class="col-sm-2 control-label">카페 주소</label>

                    <div class="col-sm-10">
                    	<div class="input-group"><input type="text" class="form-control" id="cLocation"> 
                    	<span class="input-group-btn"> <a href="#this" id="editLocation"><button type="button" class="btn w-xs btn-primary">수정</button></a> </span>
                    	</div>
                    </div>
                </div>
                <div class="hr-line-dashed"></div>
				<div class="form-group"><label class="col-sm-2 control-label">카페 한마디</label>

                	<div class="col-sm-10">
                    	<div class="input-group"><input type="text" class="form-control" id="cComment"> 
                    	<span class="input-group-btn"> <a href="#this" id="editComment"><button type="button" class="btn w-xs btn-primary">수정</button></a> </span>
                    	</div>
                    </div>
                </div>
                <div class="hr-line-dashed"></div>
                </form>
                
                <form method="post" class="form-horizontal" action="<c:url value='/customer/updateCafeLogo.do' />" enctype="multipart/form-data">
					<div class="form-group"> <label class="col-sm-2 control-label">카페 Logo Image</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" name="file">
						<span class="help-block small">App에 보여질 카페 로고 이미지 파일 크기는 10MB까지 지원됩니다 </span>
					</div>
					</div>
					
					<div class="text-center">
                    	<button class="btn btn-primary">카페 로고 수정</button>
                    </div>         
                </form>
                
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
		$("#editName").on("click", function(e){ //카페 이름 수정 버튼 
	        e.preventDefault();
	        fn_updateCafeName();
	    });
	     
	    $("#editTel").on("click", function(e){ //카페 전화번호 수정 버튼 
	        e.preventDefault();
	        fn_updateCafeTel();
	    });
	    
	    $("#editLocation").on("click", function(e){ //카페 위치 수정 버튼 
	        e.preventDefault();
	        fn_updateCafeLocation();
	    });
	    
	    $("#editComment").on("click", function(e){ //카페 한마디 수정 버튼 
	        e.preventDefault();
	        fn_updateCafeComment();
	    });
	    
	});
	
	function fn_updateCafeName(){
	    var comSubmit = new ComSubmit();
	    var idx = "${cafeIDX }";
	    var cafeName = $('input#cName').val();
	    comSubmit.setUrl("<c:url value='/customer/updateCafeName.do' />");
	    comSubmit.addParam("cafeIDX", idx);
	    comSubmit.addParam("cafeName", cafeName);
	    comSubmit.submit();
	}
	
	function fn_updateCafeTel(){
	    var comSubmit = new ComSubmit();
	    var idx = "${cafeIDX }";
	    var cafeTel = $('input#cTel').val();
	    comSubmit.setUrl("<c:url value='/customer/updateCafeTel.do' />");
	    comSubmit.addParam("cafeIDX", idx);
	    comSubmit.addParam("cafeTel", cafeTel);
	    comSubmit.submit();
	}
	
	function fn_updateCafeLocation(){
	    var comSubmit = new ComSubmit();
	    var idx = "${cafeIDX }";
	    var cafeLocation = $('input#cLocation').val();
	    comSubmit.setUrl("<c:url value='/customer/updateCafeLocation.do' />");
	    comSubmit.addParam("cafeIDX", idx);
	    comSubmit.addParam("cafeLocation", cafeLocation);
	    comSubmit.submit();
	}
	
	function fn_updateCafeComment(){
	    var comSubmit = new ComSubmit();
	    var idx = "${cafeIDX }";
	    var cafeComment = $('input#cComment').val();
	    comSubmit.setUrl("<c:url value='/customer/updateCafeComment.do' />");
	    comSubmit.addParam("cafeIDX", idx);
	    comSubmit.addParam("cafeComment", cafeComment);
	    comSubmit.submit();
	}

</script>

</body>
</html>