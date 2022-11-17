<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>
<body>
	<h2>Kakao 지도 TEST</h2>
	<div class="container">
	<div id="map" style="width:500px;height:400px;"></div>
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=87d59325b29b9b5b02d26229a3352731"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 5
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>