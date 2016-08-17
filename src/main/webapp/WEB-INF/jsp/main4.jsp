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
<body class="fixed-navbar fixed-sidebar">

<!-- Simple splash screen-->
<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>MyCaffe - Smart Cafe Service</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Header -->
<div id="header">
    <div class="color-line">
    </div>
    <div id="logo" class="light-version">
        <span>
            MyCaffe
        </span>
    </div>
    <nav role="navigation">
        <div class="header-link hide-menu"><i class="fa fa-bars"></i></div>
        <div class="small-logo">
            <span class="text-primary">MyCaffe</span>
        </div>
        <form role="search" class="navbar-form-custom" method="post" action="#">
            <div class="form-group">
                <input type="text" placeholder="회원 이름을 검색하세요" class="form-control" name="search">
            </div>
        </form>
        <div class="mobile-menu">
            <button type="button" class="navbar-toggle mobile-menu-toggle" data-toggle="collapse" data-target="#mobile-collapse">
                <i class="fa fa-chevron-down"></i>
            </button>
            <div class="collapse mobile-navbar" id="mobile-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<c:url value="/logout.do" />">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar-right">
            <ul class="nav navbar-nav no-borders">
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                        <i class="pe-7s-speaker"></i>
                    </a>
                    <ul class="dropdown-menu hdropdown notification animated flipInX">
                        <li>
                            <a>
                                <span class="label label-success">NEW</span> It is a long established.
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="label label-warning">WAR</span> There are many variations.
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="label label-danger">ERR</span> Contrary to popular belief.
                            </a>
                        </li>
                        <li class="summary"><a href="#">See all notifications</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle label-menu-corner" href="#" data-toggle="dropdown">
                        <i class="pe-7s-mail"></i>
                        <span class="label label-success">4</span>
                    </a>
                    <ul class="dropdown-menu hdropdown animated flipInX">
                        <div class="title">
                            You have 4 new messages
                        </div>
                        <li>
                            <a>
                                It is a long established.
                            </a>
                        </li>
                        <li>
                            <a>
                                There are many variations.
                            </a>
                        </li>
                        <li>
                            <a>
                                Lorem Ipsum is simply dummy.
                            </a>
                        </li>
                        <li>
                            <a>
                                Contrary to popular belief.
                            </a>
                        </li>
                        <li class="summary"><a href="#">See All Messages</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" id="sidebar" class="right-sidebar-toggle">
                        <i class="pe-7s-upload pe-7s-news-paper"></i>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="<c:url value="/logout.do" />">
                        <i class="pe-7s-upload pe-rotate-90"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>

<!-- Navigation -->
<aside id="menu">
    <div id="navigation">
        <div class="profile-picture">
            <a href="<c:url value="/customer/openMainPage.do"/>" >
                <img src="images/profile.jpg" class="img-circle m-b" alt="logo">
            </a>

            <div class="stats-label text-color">
                <div class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown">
						<span class="font-extra-bold font-uppercase">Caffe Name <i class="pe-7s-config"></i></span>                        
                    </a>
                    <ul class="dropdown-menu animated flipInX m-t-xs">
                        <li><a href="contacts.html">비밀번호 변경</a></li>
                        <li><a href="contacts.html">menu</a></li>
                        <li class="divider"></li>
                        <li><a href="<c:url value="/logout.do" />">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <ul class="nav" id="side-menu">
            <li>
                <a href="index.html"> <span class="nav-label">Dashboard</span> <span class="label label-success pull-right">v.1</span> </a>
            </li>
            <li>
                <a href="#"> <span class="nav-label">카페 관리</span><span class="label label-warning pull-right">NEW</span> </a>
            </li>
            <li>
                <a href="#"> <span class="nav-label">회원 관리</span><span class="label label-warning pull-right">NEW</span> </a>
            </li>
            <li>
                <a href="#"> <span class="nav-label">e-Coupon 관리</span><span class="label label-warning pull-right">NEW</span> </a>
            </li>
            <li>
                <a href="#"> <span class="nav-label">Order 현황</span><span class="label label-warning pull-right">NEW</span> </a>
            </li>
            <li>
                <a href="#"> <span class="nav-label">Recently Receive Orders</span><span class="label label-warning pull-right">NEW</span> </a>
            </li>
        </ul>
    </div>
</aside>


<!-- Main Wrapper -->
<div id="wrapper">

    <div class="content animate-panel">
        <div class="row">
            <div class="col-lg-12">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                        Dashboard information and statistics
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3 text-center">
                                <div class="small">
                                    <i class="fa fa-bolt"></i> Page views
                                </div>
                                <div>
                                    <h1 class="font-extra-bold m-t-xl m-b-xs">
                                        226,802
                                    </h1>
                                    <small>Page views in last month</small>
                                </div>
                                <div class="small m-t-xl">
                                    <i class="fa fa-clock-o"></i> Data from January
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text-center small">
                                    <i class="fa fa-laptop"></i> Active users in current month (December)
                                </div>
                                <div class="flot-chart" style="height: 160px">
                                    <div class="flot-chart-content" id="flot-line-chart"></div>
                                </div>
                            </div>
                            <div class="col-md-3 text-center">
                                <div class="small">
                                    <i class="fa fa-clock-o"></i> Active duration
                                </div>
                                <div>
                                    <h1 class="font-extra-bold m-t-xl m-b-xs">
                                        10 Months
                                    </h1>
                                    <small>And four weeks</small>
                                </div>
                                <div class="small m-t-xl">
                                    <i class="fa fa-clock-o"></i> Last active in 12.10.2015
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                    <span class="pull-right">
                          You have two new messages from <a href="">Monica Bolt</a>
                    </span>
                        Last update: 21.05.2015
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
        		<div class="hpanel">
            		<div class="panel-body float-e-margins h-200">
		                <a href="contacts.html">
		                <button class="btn btn-primary" type="button"><i class="fa fa-group"></i> <br/>카페 관리</button>
						</a>
        		    </div>
        		</div>
    		</div>
            <div class="col-lg-3">
        		<div class="hpanel">
            		<div class="panel-body float-e-margins h-200">
		                <a href="contacts.html">
		                <button class="btn btn-primary" type="button"><i class="fa fa-group"></i> <br/>회원 관리</button>
						</a>
        		    </div>
        		</div>
    		</div>
            <div class="col-lg-3">
                <div class="hpanel">
            		<div class="panel-body float-e-margins h-200">
		                <a href="contacts.html">
		                <button class="btn btn-primary" type="button"><i class="fa fa-group"></i> <br/>e-쿠폰 관리</button>
						</a>
        		    </div>
        		</div>
            </div>
            <div class="col-lg-3">
                <div class="hpanel">
            		<div class="panel-body float-e-margins h-200">
		                <a href="contacts.html">
		                <button class="btn btn-primary" type="button"><i class="fa fa-group"></i> <br/>Siren Order 현황</button>
						</a>
        		    </div>
        		</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="hpanel">
                    <div class="panel-heading">
                        <div class="panel-tools">
                            <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                            <a class="closebox"><i class="fa fa-times"></i></a>
                        </div>
                        Recently Receive Orders
                    </div>
                    <div class="panel-body list">
                        <div class="table-responsive project-list">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th colspan="1">Order</th>
                                    <th>User Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>메뉴 이름
                                        <br/>
                                        <small><i class="fa fa-clock-o"></i> 주문 예약 시간 </small>
                                    </td>
                                    <td>
                                     주문자 닉네임
                                    </td>
                                    <td><a href=""><i class="fa fa-check text-success"></i></a></td>
                                </tr>
                                <tr>
                                    <td>메뉴 이름
                                        <br/>
                                        <small><i class="fa fa-clock-o"></i> 주문 예약 시간 </small>
                                    </td>
                                    <td>
                                     주문자 닉네임
                                    </td>
                                    <td><a href=""><i class="fa fa-check text-success"></i></a></td>
                                </tr>
                                <tr>
                                    <td>메뉴 이름
                                        <br/>
                                        <small><i class="fa fa-clock-o"></i> 주문 예약 시간 </small>
                                    </td>
                                    <td>
                                     주문자 닉네임
                                    </td>
                                    <td><a href=""><i class="fa fa-check text-success"></i></a></td>
                                </tr>
                                <tr>
                                    <td>메뉴 이름
                                        <br/>
                                        <small><i class="fa fa-clock-o"></i> 주문 예약 시간 </small>
                                    </td>
                                    <td>
                                     주문자 닉네임
                                    </td>
                                    <td><a href=""><i class="fa fa-check text-success"></i></a></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
		</div>
    </div>

    <!-- Right sidebar -->
    <div id="right-sidebar" class="animated fadeInRight">

        <div class="p-m">
            <button id="sidebar-close" class="right-sidebar-toggle sidebar-button btn btn-default m-b-md"><i class="pe pe-7s-close"></i>
            </button>
            <div>
                <span class="font-bold no-margins"> Analytics </span>
                <br>
                <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.</small>
            </div>
            <div class="row m-t-sm m-b-sm">
                <div class="col-lg-6">
                    <h3 class="no-margins font-extra-bold text-success">300,102</h3>

                    <div class="font-bold">98% <i class="fa fa-level-up text-success"></i></div>
                </div>
                <div class="col-lg-6">
                    <h3 class="no-margins font-extra-bold text-success">280,200</h3>

                    <div class="font-bold">98% <i class="fa fa-level-up text-success"></i></div>
                </div>
            </div>
            <div class="progress m-t-xs full progress-small">
                <div style="width: 25%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="25" role="progressbar"
                     class=" progress-bar progress-bar-success">
                    <span class="sr-only">35% Complete (success)</span>
                </div>
            </div>
        </div>
        <div class="p-m bg-light border-bottom border-top">
            <span class="font-bold no-margins"> Social talks </span>
            <br>
            <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.</small>
            <div class="m-t-md">
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a1.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">John Novak</span>
                            <small class="text-muted">21.03.2015</small>
                            <div class="social-content small">
                                Injected humour, or randomised words which don't look even slightly believable.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a3.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">Mark Smith</span>
                            <small class="text-muted">14.04.2015</small>
                            <div class="social-content">
                                Many desktop publishing packages and web page editors.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social-talk">
                    <div class="media social-profile clearfix">
                        <a class="pull-left">
                            <img src="images/a4.jpg" alt="profile-picture">
                        </a>

                        <div class="media-body">
                            <span class="font-bold">Marica Morgan</span>
                            <small class="text-muted">21.03.2015</small>

                            <div class="social-content">
                                There are many variations of passages of Lorem Ipsum available, but the majority have
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="p-m">
            <span class="font-bold no-margins"> Sales in last week </span>
            <div class="m-t-xs">
                <div class="row">
                    <div class="col-xs-6">
                        <small>Today</small>
                        <h4 class="m-t-xs">$170,20 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                    <div class="col-xs-6">
                        <small>Last week</small>
                        <h4 class="m-t-xs">$580,90 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <small>Today</small>
                        <h4 class="m-t-xs">$620,20 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                    <div class="col-xs-6">
                        <small>Last week</small>
                        <h4 class="m-t-xs">$140,70 <i class="fa fa-level-up text-success"></i></h4>
                    </div>
                </div>
            </div>
            <small> Lorem Ipsum is simply dummy text of the printing simply all dummy text.
                Many desktop publishing packages and web page editors.
            </small>
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

<script>

    $(function () {

        /**
         * Flot charts data and options
         */
        var data1 = [ [0, 55], [1, 48], [2, 40], [3, 36], [4, 40], [5, 60], [6, 50], [7, 51] ];
        var data2 = [ [0, 56], [1, 49], [2, 41], [3, 38], [4, 46], [5, 67], [6, 57], [7, 59] ];

        var chartUsersOptions = {
            series: {
                splines: {
                    show: true,
                    tension: 0.4,
                    lineWidth: 1,
                    fill: 0.4
                },
            },
            grid: {
                tickColor: "#f0f0f0",
                borderWidth: 1,
                borderColor: 'f0f0f0',
                color: '#6a6c6f'
            },
            colors: [ "#62cb31", "#efefef"],
        };

        $.plot($("#flot-line-chart"), [data1, data2], chartUsersOptions);

        /**
         * Flot charts 2 data and options
         */
        var chartIncomeData = [
            {
                label: "line",
                data: [ [1, 10], [2, 26], [3, 16], [4, 36], [5, 32], [6, 51] ]
            }
        ];

        var chartIncomeOptions = {
            series: {
                lines: {
                    show: true,
                    lineWidth: 0,
                    fill: true,
                    fillColor: "#64cc34"

                }
            },
            colors: ["#62cb31"],
            grid: {
                show: false
            },
            legend: {
                show: false
            }
        };

        $.plot($("#flot-income-chart"), chartIncomeData, chartIncomeOptions);



    });

</script>

</body>
</html>