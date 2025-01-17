<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../common/heading.jsp" %>
	<meta charset="UTF-8">
  	<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
	<title>친구 신청 확인창</title>
		<link rel="stylesheet" href="/css/board.css">
		<link rel="stylesheet" href="/css/sidebars.css">
		<style>
		  table {
		    width: 1000px;
		    border-top: 1px solid #444444;
		    border-collapse: collapse;
		  }
		  th, td {
		    border-bottom: 1px solid #444444;
		    padding: 5px;
		  }
  			img {
		  	width: 70px; height: 70px; border-radius: 70%;
		  }
  </style>
</head>
<body  style="margin-bottom: 100px; background-color: black; color: white;">
	<%@ include file="../common/top.jsp" %>
	<div style="display: flex;">
		<%@ include file="../common/sidebar.jsp" %>
		<div class="myPage-size" style="margin-top: 60px; margin-left: 180px;">
   			<h5>보낸 신구신청</h5>
   			<div style="margin-top: 30px;">
				<table>
					<thead>
						<tr>
							<th>프로필</th>
							<th>닉네임</th>
							<th>관심운동</th>
							<th>성별</th>
							<th>나이</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="add" items="${addMateList}">
						<tr>
							<c:if test="${empty add.uImage}">
							<td><img src="/img/basicProfile.png" ></td>
							</c:if>
							<c:if test="${not empty add.uImage}">
							<td><img src="/board/download?file=${add.uImage}"></td>
							</c:if>
							<td>${add.nickname}</td>
							<td>${add.likeExerList}</td>
							<td>${add.gender}</td>
							<td>${add.age}</td>
							<td><button onclick="addMate('${add.receiveUser}')"  id="${add.receiveUser}" class="btn-hover color-8 write-btn">친구신청중</button></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<%@ include file="../common/bottom1.jsp" %>
	<script>
	function addMate(uid){
		  const mateuid = document.getElementById(uid);
		  if (mateuid.innerText =='친구신청'){
			  $.ajax({
				type:'GET',
				url: '/mate/addMate',
				data: {'receiveUser': uid},
				success: function(result){
					mateuid.innerText = result;
					mateuid.style.cssText = 'background-color:black; color:white;'
				}
			  });
		  }
		  else if (mateuid.innerText =='친구신청중'){
			  $.ajax({
				type:'GET',
				url: '/mate/mateCancle',
				data: {'receiveUser': uid},
				success: function(result){
					mateuid.innerText = result;
					mateuid.style.cssText = 'background-color:white; color:pink;'
				}
			  });
		  }
	  }
	</script>
</body>
</html>