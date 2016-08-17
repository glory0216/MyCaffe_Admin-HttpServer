<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>WePlay</title>
		<meta name="generator" content="WePlay" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<link href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
		<link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
		
</head>
<body>
<nav class="navbar navbar-fixed-top header">
 	<div class="col-md-12">
        <div class="navbar-header">
          
          <a href="#" class="navbar-brand">WePlay</a>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse1">
          <i class="glyphicon glyphicon-th-large"></i>
          </button>
      
        </div>
        <div class="collapse navbar-collapse" id="navbar-collapse1">
        	<ul class="nav navbar-nav navbar-right">
          	<li><a href="#">모임 등록하기</a></li>
            <li><a href="#">회원가입</a></li>
            <li><a href="#">한국어</a></li>
            <li>
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-bell"></i></a>
                <ul class="dropdown-menu">
                  <li><a href="#"><span class="badge pull-right">40</span>Link</a></li>
                  <li><a href="#"><span class="label label-info pull-right">1</span>Link</a></li>
                  <li><a href="#"><span class="label label-info pull-right">1</span>Link</a></li>
                  <li><a href="#"><span class="badge pull-right">13</span>Link</a></li>
                </ul>
             </li>
           </ul>
        </div>	
     </div>	
</nav>
<div class="navbar navbar-default" id="subnav">
    <div class="col-md-12">
        <div class="navbar-header">
        <sec:authorize access="isAnonymous()">
        <a href="#loginModal" style="margin-left:15px;" class="navbar-btn btn btn-default btn-plus dropdown-toggle" data-toggle="modal"><i class="glyphicon glyphicon-user"></i> Login</a>
        </sec:authorize>
          
        <sec:authorize access="isAuthenticated()">
          <a href="#" style="margin-left:15px;" class="navbar-btn btn btn-default btn-plus dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-th-large"></i> My Info <small><i class="glyphicon glyphicon-chevron-down"></i></small></a>
          <ul class="nav dropdown-menu">
              <li><a href="<c:url value="/user/openEditUser.do" />"><i class="glyphicon glyphicon-user" style="color:#1111dd;"></i> Profile</a></li>
              <li><a href="#"><i class="glyphicon glyphicon-inbox" style="color:#1111dd;"></i> Team</a></li>
              <li><a href="#"><i class="glyphicon glyphicon-dashboard" style="color:#1111dd;"></i> Dashboard</a></li>
              <li class="nav-divider"></li>
              <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Settings</a></li>
              <li><a href="<c:url value="/logout.do" />"><i class="glyphicon glyphicon-off"></i> Logout</a></li>
          </ul>
      	</sec:authorize>
        </div>
     </div>	
</div>

<!--main-->
<div class="container" id="main">
   <div class="row" id="quickmatch-container">
   <div class="col-md-12 text-center"><h1>Quick Match</h1></div>
     	<sec:authorize access="isAnonymous()">
     	<div class="col-xs-12 col-sm-12 text-center">로그인 후 이용 가능합니다.</div>
     	</sec:authorize>
     	<sec:authorize access="isAuthenticated()">
     	<form class="form" role="form" method="post" action="<c:url value="/match/openQuickMatch.do" />" accept-charset="UTF-8">
     	<div class="hidden-xs col-sm-2">
     	</div>
		<div class="col-xs-6 col-sm-6">
			<div class="form-group">
                <div class="input-group date" id="quickmatch-datetimepicker">
                    <input type="text" name="matchDateTime" class="form-control" readonly />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <div class="col-xs-2 col-sm-2">
			<button type="submit" class="btn btn-lg btn-primary btn-block">찾기</button>
		</div>
		<div class="hidden-xs col-sm-2">
     	</div>
		</form>
     	</sec:authorize>
	</div><!--/row-->
  
  <hr>
  
  <div class="row">
  	<div class="col-md-12 text-center"><h1>Posts</h1></div>
    <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Upgrade to Bootstrap 3</h4></div>
   			<div class="panel-body">
              <img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=70" class="img-circle pull-right"> <a href="#">Guidance and Tools</a>
              <div class="clearfix"></div>
              <hr>
              <p>Migrating from Bootstrap 2.x to 3 is not a simple matter of swapping out the JS and CSS files.
              Bootstrap 3 is a major overhaul, and there are a lot of changes from Bootstrap 2.x. <a href="http://bootply.com/bootstrap-3-migration-guide">This guidance</a> is intended to help 2.x developers transition to 3.
              </p>
              <h5><a href="http://google.com/+bootply">More on Upgrading from +Bootply</a></h5>
              
            </div>
         </div> 
    </div>
     <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Profiles</h4></div>
   			<div class="panel-body">
              Check out some of our member profiles..
              <hr>
              <div class="well well-sm">
                <div class="media">
                    <a class="thumbnail pull-left" href="#">
                        <img class="media-object" src="//placehold.it/80">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">John Doe</h4>
                		<p><span class="label label-info">10 photos</span> <span class="label label-primary">89 followers</span></p>
                        <p>
                           <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-comment"></span> Message</a>
                           <a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-heart"></span> Favorite</a>
                        </p>
                    </div>
                </div>
               </div>
            </div>
         </div> 
    </div>
     <div class="col-md-4 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Inspiration</h4></div>
   			<div class="panel-body">
              <img src="//placehold.it/150" class="img-circle pull-right"> <a href="#">Articles</a>
              <div class="clearfix"></div>
              <hr>
              <div class="clearfix"></div>
              <img src="http://placehold.it/120x90/3333CC/FFF" class="img-responsive img-thumbnail pull-right">
              <p>The more powerful (and 100% fluid) Bootstrap 3 grid now comes in 4 sizes (or "breakpoints"). Tiny (for smartphones), Small (for tablets), Medium (for laptops) and Large (for laptops/desktops).</p>
              <div class="clearfix"></div>
              <hr>
              <div class="clearfix"></div>
              <img src="http://placehold.it/120x90/33CC33/FFF" class="img-responsive img-thumbnail pull-left" style="margin-right:5px;">
              <p>Mobile first" is a responsive Web design practice that prioritizes consideration of smart phones and mobile devices when creating Web pages.</p>
              
              
            </div>
         </div> 
    </div><!--/articles-->
    </div>
    
    <hr>
  
	<div class="row">
	   <div class="col-sm-4 col-xs-6">
        <div class="panel panel-default">
          <div class="panel-thumbnail"><img src="//placehold.it/450X300/DD3333/EE3333" class="img-responsive"></div>
          <div class="panel-body">
            <p class="lead">Hacker News</p>
            <p>120k Followers, 900 Posts</p>
            
            <p>
              <img src="http://api.randomuser.me/portraits/med/men/20.jpg" width="28px" height="28px">
              <img src="http://api.randomuser.me/portraits/med/men/21.jpg" width="28px" height="28px">
              <img src="http://api.randomuser.me/portraits/med/men/14.jpg" width="28px" height="28px">
            </p>
          </div>
        </div>
      </div><!--/col-->
      
      <div class="col-sm-4 col-xs-6">
      	<div class="panel panel-default">
          <div class="panel-thumbnail"><img src="//placehold.it/450X300/DD66DD/EE77EE" class="img-responsive"></div>
          <div class="panel-body">
            <p class="lead">Bootstrap Templates</p>
            <p>902 Followers, 88 Posts</p>
            
            <p>
              <img src="http://api.randomuser.me/portraits/med/men/4.jpg" width="28px" height="28px">
              <img src="http://api.randomuser.me/portraits/med/men/24.jpg" width="28px" height="28px">
            </p>
          </div>
        </div>
      </div><!--/col-->
      
      <div class="col-sm-4 col-xs-6">
      	<div class="panel panel-default">
          <div class="panel-thumbnail"><img src="//placehold.it/450X300/2222DD/2222EE" class="img-responsive"></div>
          <div class="panel-body">
            <p class="lead">Social Media</p>
            <p>19k Followers, 789 Posts</p>
            
            <p>
              <img src="http://api.randomuser.me/portraits/med/women/4.jpg" height="28px">
              <img src="http://api.randomuser.me/portraits/med/men/4.jpg" width="28px" height="28px">
            </p>
          </div>
        </div>
      </div><!--/col-->
     
  	</div>
  
  	<hr>
  
  	<div class="row">
  		<div class="col-md-12"><h2>Playground</h2></div>
        <div class="col-md-12">
          <div class="alert alert-info alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
              <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
          </div>
        </div>
    	<div class="col-md-6 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Buttons &amp; Labels</h4></div>
   			<div class="panel-body">
              <div class="row">
                <div class="col-xs-4"><a class="btn btn-default center-block" href="#">Button</a></div>
                <div class="col-xs-4"><a class="btn btn-primary center-block" href="#">Primary</a></div>
                <div class="col-xs-4"><a class="btn btn-danger center-block" href="#">Danger</a></div>
              </div>
              <br>
              <div class="row">
                <div class="col-xs-4"><a class="btn btn-warning center-block" href="#">Warning</a></div>
                <div class="col-xs-4"><a class="btn btn-info center-block" href="#">Info</a></div>
                <div class="col-xs-4"><a class="btn btn-success center-block" href="#">Success</a></div>
              </div>
              <hr>
              <div class="btn-group btn-group-sm"><button class="btn btn-default">1</button><button class="btn btn-default">2</button><button class="btn btn-default">3</button></div>              
              <hr>
              <div class="row">
              <div class="col-md-4">
                <span class="label label-default">Label</span>
                <span class="label label-success">Success</span>
                
              </div>
              <div class="col-md-4">
              	<span class="label label-warning">Warning</span>
                <span class="label label-info">Info</span>
              </div>
              <div class="col-md-4">
                <span class="label label-danger">Danger</span>
                <span class="label label-primary">Primary</span>
                </div>
              </div>
              
            </div>
         </div> 
    </div>
     <div class="col-md-6 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Progress Bars</h4></div>
   			<div class="panel-body">
              
              <div class="progress">
                <div class="progress-bar progress-bar-info" style="width: 20%"></div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-success" style="width: 40%"></div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-warning" style="width: 80%"></div>
              </div>
              <div class="progress">
                <div class="progress-bar progress-bar-danger" style="width: 50%"></div>
              </div>
              
            </div>
         </div> 
    </div>
     <div class="col-md-6 col-sm-6">
    	<div class="panel panel-default">
           <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Tabs</h4></div>
   			<div class="panel-body">

                <ul class="nav nav-tabs">
                  <li class="active"><a href="#A" data-toggle="tab">Section 1</a></li>
                  <li><a href="#B" data-toggle="tab">Section 2</a></li>
                  <li><a href="#C" data-toggle="tab">Section 3</a></li>
                </ul>
                <div class="tabbable">
                  <div class="tab-content">
                    <div class="tab-pane active" id="A">
                      <div class="well well-sm">I'm in Section A.</div>
                    </div>
                    <div class="tab-pane" id="B">
                      <div class="well well-sm">Howdy, I'm in Section B.</div>
                    </div>
                    <div class="tab-pane" id="C">
                      <div class="well well-sm">I've decided that I like wells.</div>
                    </div>
                  </div>
                </div> <!-- /tabbable -->
              
                <div class="col-sm-12 text-center">
                  <ul class="pagination center-block" style="display:inline-block;">
                    <li><a href="#">«</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">»</a></li>
                  </ul>
                </div>
              
            </div>
         </div> 
    </div><!--playground-->
    
    <br>
    
    <div class="clearfix"></div>
      
    <hr>
    <div class="col-md-12 text-center">
    <p>Copyright &copy; blanco10, 2016</p>
    </div>
    <hr>
    
  </div>
</div><!--/main-->

<!--login modal-->
<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h2 class="text-center"><img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"><br>Login</h2>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" method="post" action="<c:url value="/loginProcess.do" />" accept-charset="UTF-8">
            <div class="form-group">
              <input type="text" name="id" class="form-control input-lg" placeholder="ID" required>
            </div>
            <div class="form-group">
              <input type="password" name="pw" class="form-control input-lg" placeholder="Password" required>
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Login</button>
              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>

	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>
		<script src="<c:url value="/resources/js/scripts.js"/>"></script>
		
	</body>
</html>