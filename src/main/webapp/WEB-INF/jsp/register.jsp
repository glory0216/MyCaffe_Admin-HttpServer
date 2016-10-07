<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body class="blank">

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>MyCaffe - Smart Cafe Service</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="color-line"></div>

<div class="register-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>Registration</h3>
                <small>Full suported AngularJS WebApp/Admin template with very clean and aesthetic style prepared for your next app. </small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form method="post" action="<c:url value="/customer/signup.do" />" enctype="multipart/form-data">
                            <div class="row">
                            <div class="form-group col-lg-12">
                                <label>ID</label>
                                <input type="text" value="" id="userid" class="form-control" name="userId" required="">
                                <span class="help-block small">등록할 ID를 입력하세요</span>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>Password</label>
                                <input type="password" value="" id="password" class="form-control" name="userPassword" required="" maxlength="8">
                                <span class="help-block small">비밀번호를 6~8자 사이로 입력하세요</span>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>Repeat Password</label>
                                <input type="password" value="" id="passwordConf" class="form-control" name="userPasswordConf" required="" maxlength="8">
                                <span class="help-block small">동일한 비밀번호를 한번 더 입력하세요</span>
                            </div>
                            <div class="form-group col-lg-12">
                                <label>카페 이름</label>
                                <input type="text" value="" id="cafeName" class="form-control" name="cafeName" required="">
                            </div>
                            <div class="form-group col-lg-12">
                                <label>카페 전화번호</label>
                                <input type="text" value="" id="cafeTel" class="form-control" name="cafeTel" required="">
                                <span class="help-block small">'-'를 생략하고 입력하세요</span>
                                <span class="help-block small">ex) 010xxxxxxxx</span>
                            </div>
                            <div class="form-group col-lg-12">
                                <label>카페 주소</label>
                                <input type="text" value="" id="cafeLocation" class="form-control" name="cafeLocation" required="">
                            </div>
                            <div class="form-group col-lg-12">
                                <label>카페 Comment</label>
                                <input type="text" value="" id="cafeComment" class="form-control" name="cafeComment" required="">
                                <span class="help-block small">App에 홍보할 수 있는 한마디를 입력하세요 </span>
                            </div>
                            <div class="form-group col-lg-12">
                            	<label>카페 Logo Image 등록</label>
                            	<input type="file" name="file">
                            	<span class="help-block small">App에 보여질 카페 로고 이미지 파일 크기는 10MB까지 지원됩니다 </span>
                            </div>
                            <div class="form-group col-lg-12">
                                <label>인증 번호</label>
                                <input type="text" value="" id="certNumber" class="form-control" name="certNumber" required="">
                                <span class="help-block small">관리자 인증 번호를 입력하세요</span>
                            </div>
                            <div class="checkbox col-lg-12">
                                <input type="checkbox" class="i-checks" checked>
                                Sigh up for our newsletter
                            </div>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-success" id="register">Register</button>
                                <button class="btn btn-default" id="cancle">Cancel</button>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong>MyCaffe</strong> - Smart Cafe Service <br/> 2016 Copyright &copy; Glory
        </div>
    </div>
</div>

<!-- Vendor scripts -->
<script src="<c:url value="/resources/vendor/jquery/dist/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/jquery-ui/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/slimScroll/jquery.slimscroll.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/dist/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/metisMenu/dist/metisMenu.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/iCheck/icheck.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/sparkline/index.js"/>"></script>

<!-- App scripts -->
<script src="<c:url value="/resources/scripts/homer.js"/>"></script>

<script>

	$(document).ready(function(){
		
		$("#register").on("click", function(e){ //가입 버튼 
	        if (!/^[a-zA-Z0-9!,@,#,$,%,^,&,*,?,_,~]{6,8}$/.test($("#password").val())) {
				alert("비밀번호는 6~8자리 입니다.");
				return;
			}
			
			if ($("#passwordConf").val() != $("#password").val()) {
				alert("비밀번호 확인을 다시 입력해주세요.")
				return;
			}		
		
	    });
		
		
	});
	
</script>

</body>
</html>