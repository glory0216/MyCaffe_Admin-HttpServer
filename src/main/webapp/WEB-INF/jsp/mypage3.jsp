<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>navbar dropdown </h2>
<a href="<c:url value="logout.do" />">로그아웃</a>
<h2>처음 로그인 시 계정 관리 페이지로 연결해야한다. (닉네임과 폰 번호를 입력받아야 하기 때문. )</h2>
<p><sec:authentication property="principal"/>님 정보 수정 Test</p>
<form class="form" role="form" method="post" action="<c:url value="/user/editUser.do" />" accept-charset="UTF-8">
                                    <div class="form-group">
                                       <input type="text" name="userNickname" class="form-control" id="inputNickname" placeholder="Nickname" required>
                                    </div>
                                    <div class="form-group">
                                       <input type="text" name="userPhone" class="form-control" id="inputPhone" placeholder="Phone" required>
                                    </div>
                                    <div class="form-group">
                                       <button type="submit" class="btn btn-success btn-block">수정</button>
                                    </div>
                                 </form>

<h2>Quick Match</h2>
<form class="form" role="form" method="post" action="<c:url value="/match/quickMatch.do" />" accept-charset="UTF-8">
                                    <div class="form-group">
                                       <input type="text" name="userNickname" class="form-control" id="inputNickname" placeholder="Nickname" required>
                                    </div>
                                    <div class="form-group">
                                       <input type="text" name="userPhone" class="form-control" id="inputPhone" placeholder="Phone" required>
                                    </div>
                                    <div class="form-group">
                                       <button type="submit" class="btn btn-success btn-block">수정</button>
                                    </div>
                                 </form>
                                 
<h2>Side bar</h2>
<a href="<c:url value="openMyTeam.do" />">내 팀 정보 보기 </a>
<a href="<c:url value="openMyMatch.do" />">매치 정보 보기 </a>

<h2>기본 메뉴들 </h2>
<a href="<c:url value="openLeague.do" />">리그 순위 </a>
<a href="<c:url value="openTeamPlayerMarket.do" />">Team/Player Market </a>
<a href="<c:url value="openGroundState.do" />">경기장 현황, 예약 </a>

</body>
</html>