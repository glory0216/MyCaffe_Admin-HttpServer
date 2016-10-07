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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.0/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"/>" />

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
                        타임 세일 등록
                    </div>
                    <div class="panel-body">
                        <form method="post" action="<c:url value="/customer/registerMarketing.do" />" enctype="multipart/form-data">
                            <div class="row">
                            <div class="form-group col-lg-12">
                                <label>시간대 선택</label>
                                <select class="selectpicker" name="timezone">
                                	<option value="0">A.M 0:00</option>
                                	<option value="1">A.M 1:00</option>
                                	<option value="2">A.M 2:00</option>
                                	<option value="3">A.M 3:00</option>
                                	<option value="4">A.M 4:00</option>
                                	<option value="5">A.M 5:00</option>
                                	<option value="6">A.M 6:00</option>
                                	<option value="7">A.M 7:00</option>
                                	<option value="8">A.M 8:00</option>
                                	<option value="9">A.M 9:00</option>
                                	<option value="10">A.M 10:00</option>
                                	<option value="11">A.M 11:00</option>
                                	<option value="12">A.M 12:00</option>
                                	<option value="13">P.M 0:00(13:00)</option>
                                	<option value="14">P.M 2:00</option>
                                	<option value="15">P.M 3:00</option>
                                	<option value="16">P.M 4:00</option>
                                	<option value="17">P.M 5:00</option>
                                	<option value="18">P.M 6:00</option>
                                	<option value="19">P.M 7:00</option>
                                	<option value="20">P.M 8:00</option>
                                	<option value="21">P.M 9:00</option>
                                	<option value="22">P.M 10:00</option>
                                	<option value="23">P.M 11:00</option>
                                </select>
                                <span class="help-block small">타임 세일을 진행할 시간대를 선택하세요</span>
                            </div>
                            
                            <div class="form-group col-lg-6">
                                <label>메뉴 선택</label>
                            <c:choose>
                            	<c:when test="${fn:length(list) > 0}">
                              	<select class="selectpicker" name="menu" data-live-search="true">
                              		<optgroup label="음료">
                              		<c:forEach items="${list }" var="row">
                              			<c:choose>
                              			<c:when test="${row.menuType == 1 }">
                              				<option value="${row.menuIDX }">${row.menuName }</option>
                              			</c:when>
                              			</c:choose>
                              		</c:forEach>
                              		</optgroup>
                              		
                              		<optgroup label="베이커리">
                              		<c:forEach items="${list }" var="row">
                              			<c:choose>
                              			<c:when test="${row.menuType == 2 }">
                              				<option>${row.menuName }</option>
                              			</c:when>
                              			</c:choose>
                              		</c:forEach>
                              		</optgroup>
                              		
                              		<optgroup label="기타">
                              		<c:forEach items="${list }" var="row">
                              			<c:choose>
                              			<c:when test="${row.menuType == 3 }">
                              				<option>${row.menuName }</option>
                              			</c:when>
                              			</c:choose>
                              		</c:forEach>
                              		</optgroup>
                              	</select>
									
                                <span class="help-block small">타임 세일을 진행할 메뉴를 선택하세요</span>
                                </c:when>
                                <c:otherwise><span class="help-block small">메뉴가 없습니다. 메뉴 관리에서 메뉴를 먼저 추가해주세요</span></c:otherwise>
                            </c:choose>
                            </div>
                            
                            <div class="form-group col-lg-6">
                                <label>가격 선택</label>
                                <div class="input-group">
                                	<input type="text" class="form-control" id="menuPrice" name="menuPrice" value="3000">
                                	<span class="input-group-addon">원(￦)</span>
                                </div>
                                
                                <span class="help-block small">타임 세일 프로모션 가격을 정해주세요</span>
                            </div>
                            
                            </div>
                            
                            <div class="text-center">
                            	<c:choose>
                            		<c:when test="${fn:length(list) > 0}">
                            			<button class="btn btn-primary" id="register">등록</button>
                                		<button class="btn btn-default" id="cancle">취소</button>	
                            		</c:when>
                            		<c:otherwise>
                            			<button class="btn btn-default" id="cancle">취소</button>
                            		</c:otherwise>
                            	</c:choose>
                            	
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.0/js/bootstrap-select.min.js"></script>
<script src="<c:url value="/resources/vendor/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"/>"></script>

<!-- App scripts -->
<script src="<c:url value="/resources/scripts/homer.js"/>"></script>
<script src="<c:url value="/resources/scripts/charts.js"/>"></script>
<script src="<c:url value="/resources/scripts/commons.js"/>"></script>

<script>

    $(document).ready(function(){
    	
    	$("#menuPrice").TouchSpin({
            min: 0,
            max: 99999,
            step: 100,
            boostat: 5,
            maxboostedstep: 10000,
        });
    	
    	$("#register").on("click", function(e){ //등록 버튼
            e.preventDefault();
            fn_registerMarketing();
        });    	

        $("#cancle").on("click", function(e){ //취소 버튼
            e.preventDefault();
            fn_openCafeMarketingMnt();
        });
         
    });
    
    function fn_openCafeMarketingMnt(){
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/customer/openCafeMarketingMnt.do' />");
        comSubmit.submit();
    }

    function fn_registerMarketing(){
    	var comSubmit = new ComSubmit();
    	var timezoneOption = $("select[name=timezone] option:selected").val();
    	var menuNameOption = $("select[name=menu] option:selected").text();
    	var menuIDXOption = $("select[name=menu] option:selected").val();
    	var menuPriceOption = $("input[name=menuPrice]").val();
        comSubmit.setUrl("<c:url value='/customer/registerMarketing.do' />");
        comSubmit.addParam("timeZone", timezoneOption);
        comSubmit.addParam("menuName", menuNameOption);
        comSubmit.addParam("menuIDX", menuIDXOption);
        comSubmit.addParam("menuPrice", menuPriceOption);
        comSubmit.submit();
    }
    
</script>

</body>
</html>