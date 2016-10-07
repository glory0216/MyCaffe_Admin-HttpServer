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
    <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css"/>" />
    <link rel="stylesheet" href="<c:url value="/resources/vendor/datatables.net-bs/css/dataTables.bootstrap.min.css"/>" />

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
                        메뉴 관리
                    </div>
                    <div class="panel-body list">
                        <div class="table-responsive project-list">
                            <table class="table table-striped table-bordered table-hover" id="tableMenu">
                                <thead>
                                <tr>
                                    <th>메뉴 종류</th>
                                    <th>메뉴 이름</th>
                                    <th>메뉴 가격</th>
                                    <th>메뉴 제조 가능</th>
                                    <th>메뉴 정보 수정</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                	<c:when test="${fn:length(list) > 0}">
                                		<c:forEach items="${list }" var="row">
                                			<tr>
                                    			<td>
                                					<c:choose>
                                    				<c:when test="${row.menuType == 1 }">음료</c:when>
                                    				<c:when test="${row.menuType == 2 }">베이커리</c:when>
                                    				<c:when test="${row.menuType == 3 }">기타</c:when>
                                    				<c:otherwise>Null</c:otherwise>
                                    			</c:choose>
                            					</td>
                            					<td>${row.menuName }</td>
                                    			<td>${row.menuPrice }</td>
                                    			<td>
                                    			<c:choose>
                                    				<c:when test="${row.menuEnabled == 1 }">
                                    				<a href="#"><i class="fa fa-check text-success"></i></a>
                                    				</c:when>
                                    				<c:otherwise>
                                    				<a href=""><i class="fa fa-times text-navy"></i></a>
                                    				</c:otherwise>
                                    			</c:choose>
                                    			</td>
                                    			<td><a href="#this" name="update">수정</a>
                                    			<input type="hidden" id="menuIDX" value="${row.menuIDX }">
                                    			</td>
                                			</tr>
                                		</c:forEach>
                                	</c:when>
                                	<c:otherwise>
                                		<tr>
                        					<td colspan="5">메뉴가 없습니다.</td>
                    					</tr>
                                	</c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                            <br/>
                        </div>
                    </div>
                </div>
            </div>
		</div>
        <div class="row">
            <div class="col-lg-12">
            <div class="hpanel">
                <div class="panel-heading">
                    <div class="panel-tools">
                        <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    </div>
                    메뉴 추가
                </div>
                <div class="panel-body">
                <form method="get" class="form-horizontal">
				<div class="form-group"><label class="col-sm-2 control-label">메뉴 종류</label>
					<div class="col-sm-4">
                   		<div class="radio"><label> <input type="radio" class="i-checks" id="menuType" name="menuType" value="1" checked> 음료 </label></div>
                   		<div class="radio"><label> <input type="radio" class="i-checks" id="menuType" name="menuType" value="2"> 베이커리 </label></div>
                   		<div class="radio"><label> <input type="radio" class="i-checks" id="menuType" name="menuType" value="3"> 기타 </label></div>
                	</div>
                	<label class="col-sm-2 control-label">메뉴 사진</label>
                	<div class="col-sm-4">
                   		<input type="file" name="file">
                        <span class="help-block small">App에 보여질 카페 메뉴 이미지 파일 크기는 10MB까지 지원됩니다 </span>
                	</div>
                </div>
				<div class="hr-line-dashed"></div>
				<div class="form-group"><label class="col-sm-2 control-label">메뉴 이름</label>

                    <div class="col-sm-10">
                    	<input type="text" class="form-control" id="menuName" name="menuName"> 
                    </div>
                </div>
                <div class="hr-line-dashed"></div>
				<div class="form-group"><label class="col-sm-2 control-label">메뉴 가격</label>

                    <div class="col-sm-2">
                    	<input type="text" class="form-control" id="menuPrice" name="menuPrice" value="3000">
                    </div>
                    <label class="col-sm-1 control-label">원(￦)</label>
                </div>
                <div class="hr-line-dashed"></div>
				<a href="#this" id="cancle"><button type="button" class="btn w-xs btn-default">취소</button></a>
				<a href="#this" id="insert"><button type="button" class="btn w-xs btn-primary">저장</button></a>
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
<script src="<c:url value="/resources/vendor/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"/>"></script>

<!-- DataTables -->
<script src="<c:url value="/resources/vendor/datatables/media/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables.net-bs/js/dataTables.bootstrap.min.js"/>"></script>

<!-- DataTables buttons scripts -->
<script src="<c:url value="/resources/vendor/pdfmake/build/pdfmake.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/pdfmake/build/vfs_fonts.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables.net-buttons/js/buttons.html5.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables.net-buttons/js/buttons.print.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables.net-buttons/js/dataTables.buttons.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"/>"></script>

<!-- App scripts -->
<script src="<c:url value="/resources/scripts/homer.js"/>"></script>
<script src="<c:url value="/resources/scripts/charts.js"/>"></script>
<script src="<c:url value="/resources/scripts/commons.js"/>"></script>

<script>

	$(document).ready(function(){
		
		// Initializ Table
        $('#tableMenu').dataTable( {
        	"order": []
        } );
		
		$("#menuPrice").TouchSpin({
            min: 0,
            max: 99999,
            step: 100,
            boostat: 5,
            maxboostedstep: 10000,
        });
		
		$("#cancle").on("click", function(e){ //취소 버튼 
	        e.preventDefault();
	        fn_openCafeMenuMnt();
	    });
	     
	    $("#insert").on("click", function(e){ //저장 버튼 
	        e.preventDefault();
	        fn_insertCafeMenu();
	    });
	    
	    $("a[name='update']").on("click", function(e){ //수정 
	        e.preventDefault();
	        fn_updateCafeMenu($(this));
	    });
	    
	});
	
	function fn_openCafeMenuMnt(){
	    var comSubmit = new ComSubmit();
	    comSubmit.setUrl("<c:url value='/customer/openCafeMenuMnt.do' />");
	    comSubmit.submit();
	}
	
	function fn_insertCafeMenu(){
	    var comSubmit = new ComSubmit();
	    var cafeIdx = "${cafeIDX }";
	    var menuType = $('input#menuType:checked').val();
	    var menuName = $('input#menuName').val();
	    var menuPrice = $('input#menuPrice').val();
	    comSubmit.setUrl("<c:url value='/customer/insertCafeMenu.do' />");
	    comSubmit.addParam("cafeIDX", cafeIdx);
	    comSubmit.addParam("menuType", menuType);
	    comSubmit.addParam("menuName", menuName);
	    comSubmit.addParam("menuPrice", menuPrice);
	    comSubmit.submit();
	}
	
	function fn_updateCafeMenu(obj){
	    var comSubmit = new ComSubmit();
	    var cafeIdx = "${cafeIDX }";
	    comSubmit.setUrl("<c:url value='/customer/openCafeMenuUpdate.do' />");
	    comSubmit.addParam("cafeIDX", cafeIdx);
	    comSubmit.addParam("menuIDX", obj.parent().find("#menuIDX").val());
	    comSubmit.submit();
	}
	

</script>

</body>
</html>