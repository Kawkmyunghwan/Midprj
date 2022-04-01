<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div class="container" style="max-width: 400px;" align="left">

		<div style="padding:1px 1px 10px 1px">

			<h1>회사정보 수정</h1>
		</div>
		<div>
			<form id="frm" action="companyUpdate.do" method="post">
				<div>

					<table >
						<tr>
							<th>이름</th>
							<td><input type="text" id="COMPANYNAME"
								name="COMPANYNAME" class="form-control" value="${company.COMPANYNAME}"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" id="COMPANYADDRESS"

								name="COMPANYADDRESS" onclick="abc()" class="form-control" value="${company.COMPANYADDRESS}"></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<th>상세주소</th> -->
<!-- 							<td><input type="text" id="ADDRESSDETAIL" -->
<%-- 								name="ADDRESSDETAIL" class="form-control" value="${company.ADDRESSDETAIL}"></td> --%>
<!-- 						</tr> -->
						<tr>
							<th>연봉</th>
							<td><input type="text" id="SALARY" name="SALARY"
								class="form-control" value="${company.SALARY}"></td>
						</tr>
						<tr>
							<th>소개글</th>
							<td><input type="text" id="COMPANYCONTENT"
								name="COMPANYCONTENT" class="form-control" value="${company.COMPANYCONTENT}"></td>
						</tr>
						<tr>
							<th>대표이름</th>
							<td><input type="text" id="REPRESENTATIVE"
								name="REPRESENTATIVE" class="form-control" value="${company.REPRESENTATIVE}"></td>

						</tr>
						<tr>
							<th>직원수</th>
							<td><input type="text" id="EMPLOYEENUM" name="EMPLOYEENUM"
								class="form-control" value="${company.EMPLOYEENUM}"></td>
						</tr>
						<tr>
							<th>설립일</th>
							<td><input type="text" id="COMPANYBUILDDATE"
								name="COMPANYBUILDDATE" class="form-control" value="${company.COMPANYBUILDDATE}"></td>
						</tr>
						<tr>
							<th>홈페이지</th>
							<td><input type="text" id="HOMEPAGE" name="HOMEPAGE"
								class="form-control" value="${company.HOMEPAGE}"></td>
						</tr>
						<tr>
							<th>직군</th>
							<td><input type="text" id="JOBGROUP" name="JOBGROUP"
								class="form-control" value="${company.JOBGROUP}"></td>
						</tr>
						<tr>
							<th>이미지</th>
							<td><input type="text" id="COMPANYIMAGE" name="COMPANYIMAGE"
								class="form-control" value="${company.COMPANYIMAGE}"></td>
						</tr>
						
					</table>
						<input type="hidden" id="JOBOPENINGNUM" name="JOBOPENINGNUM" value="${company.JOBOPENINGNUM}">
				</div>
				<br>
				<div>
					<button type="submit" class="genric-btn primary small">수정</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="genric-btn primary small">취 소</button>&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="delect(${JOBOPENINGNUM})" class="genric-btn primary small">삭제</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		function delect(a){
			location.href="companyDelect.do?JOBOPENINGNUM="+a;
		}
	</script>
	
	
<!-- ---------------------------------------------------지도-------------------------------------------------------	 -->
	
	
	<p style="margin-top:-12px">
    <em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a684655c5e2122f2fb8dccc310bc71a&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${company.COMPANYADDRESS}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${company.COMPANYNAME}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
	
	
</body>
</html>