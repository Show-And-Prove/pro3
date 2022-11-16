<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인 페이지</title>
<jsp:include page="${path1 }/head.jsp" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css" />

<style>
.slider-text {
	position: absolute;
	right: 0;
	bottom: 0
}

#slider .card-content {
	max-width: 50%;
}

#slider {
	overflow: hidden;
}

@media screen and (max-width: 1023px) {
	#slider .card-content {
		display: none;
	}
}

.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -50px;
	color: white;
	font-weight: bold;
	font-size: 20px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
	-webkit-user-select: none;
}

.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	right: 0;
	top: 0;
}

.item-slide img {
	max-width: 1200px;
}

.caption-container {
	color: white;
}


</style>

</head>
<body>
	<jsp:include page="${path1 }/header.jsp" />
	<section>
		<div id="slider">
			<div class="card">
				<div class="card-image">
					<figure class="image is-16by9 is-covered">
						<img src="<!-- https://www.ito.or.kr/main/img/main/visual07.jpg" --> alt="비쥬얼1" />
					</figure>
				</div>
				<div class="card-content slider-text ">
					<div class="is-size-5 box"></div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-padding">
		<div class="container">
			<div class="columns is-multiline">
				<div class="column is-12">
					<div class="columns is-multiline">
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_2img01.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-extra text-sm is-uppercase letter-spacing-1">북부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">증도 짱뚱어다리</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_2img02.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-sm font-extra is-uppercase letter-spacing">북부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">증도 태평염전</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_2img03.jpg" alt="" class=" w-100">
								</a> <span class=" cat-name text-color font-sm font-extra is-uppercase letter-spacing">북부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">증도 신안해저유물발굴기념비</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_2img04.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-sm font-extra is-uppercase letter-spacing">북부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">임자도 신안튤립축제</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_2img05.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-sm font-extra is-uppercase letter-spacing">북부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">임자도 대광해수욕장</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_3img01.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-sm font-extra is-uppercase letter-spacing">중부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">압해도 송공산 분재공원</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_3img02.jpg" alt="" class=" w-100">
								</a> <span class=" cat-name text-color font-sm font-extra is-uppercase letter-spacing">중부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">자은도 분계해수욕장과 여인송</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
						<div class="column is-3-desktop is-6-tablet">
							<article class="post-grid mb-6">
								<a class="post-thumb mb-5 is-block" href="blog-single.html"> <img src="https://tour.shinan.go.kr/images/tour/main/photo_3img03.jpg" alt="" class=" w-100">
								</a> <span class="cat-name text-color font-sm font-extra is-uppercase letter-spacing">중부권</span>
								<h3 class="post-title mt-1">
									<a href="blog-single.html">암태도 소작인 항쟁 기념탑</a>
								</h3>
								<span class="text-muted letter-spacing is-uppercase font-sm"></span>
							</article>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
		bulmaCarousel.attach('#slider', {
			slidesToScroll : 1,
			slidesToShow : 1,
			infinite : true,
			autoplay : true,
		});
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("item-slide");
			var captionText = document.getElementById("caption");
			if (n > slides.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = slides.length
			}
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
		}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.3/dist/js/bulma-carousel.min.js"></script>
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>