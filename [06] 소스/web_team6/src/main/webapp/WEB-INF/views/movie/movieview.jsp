<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


<%@ include file="/inc/asset.jsp"%>
<%@ include file="/inc/header_white.jsp"%>
<style>


.menubar {
	/* 	border : 1px solid black; */
	background-color: #E0E0E0;
	width: 1110px;
	height: 29px;
	margin-left: 300px;
}

.container1 {
	margin-top: 100px;
	margin-left: 400px;
	width: 200px;
	height: 600px;
}

div>img {
	width: 350px;
	height: 500px;
}

.contents {
	float: right:;
	position: absolute;
	margin-left: 400px;
	top: 350px;
}

.title {
	font-size: 50px;
	display: inline-block;
}

.state {
	font-size: 14px;
	float: right:;
	borer: 1px solid black;
}

.box2 {
	margin-top: 1px;
	background-color: #E0E0E0;
	width: 580px;
	height: 1px;
	margin-bottom: 15px;
}

.story2 {
	font-size: 15px;
}

.container2 {
	margin-top: 35px;
	margin-bottom: 100px;
	margin-left: 70px;
}

.items {
	/* 	border: 3px solid black; */
	width: 1100px;
	margin-left: 260px;
}

.imgsteal {
	width: 250px;
	height: 300px;
	margin-right: 15px;
}

.genre, .opendate, .score, .director, .actor, .runningtime, .story1 {
	font-size: 15px;
}

#container {
	height: 400px;
}

.container3 {
	width: 500px;
	height: 450px;
	margin-left: 333px;
	margin-top: 15px;
	/* border: 3px solid black; */
	display: inline-block;
}

.container4 {
	width: 500px;
	height: 450px;
	margin-right: 320px;
	margin-top: 15px;
	/* border: 3px solid black; */
	display: inline-block;
	margin-left: 30px;
}
/* container3차트*/
.highcharts-figure, .highcharts-data-table table {
	min-width: 310px;
	max-width: 800px;
	margin: 1em auto;
}

#container {
	height: 400px;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}

.highcharts-data-table caption {
	padding: 1em 0;
	font-size: 1.2em;
	color: #555;
}

.highcharts-data-table th {
	font-weight: 600;
	padding: 0.5em;
}

.highcharts-data-table td, .highcharts-data-table th,
	.highcharts-data-table caption {
	padding: 0.5em;
}

.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even)
	{
	background: #f8f8f8;
}

.highcharts-data-table tr:hover {
	background: #f1f7ff;
}

/* 두번째차트 */
.highcharts-figure, .highcharts-data-table table {
	min-width: 320px;
	max-width: 660px;
	margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}

.highcharts-data-table caption {
	padding: 1em 0;
	font-size: 1.2em;
	color: #555;
}

.highcharts-data-table th {
	font-weight: 600;
	padding: 0.5em;
}

.highcharts-data-table td, .highcharts-data-table th,
	.highcharts-data-table caption {
	padding: 0.5em;
}

.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even)
	{
	background: #f8f8f8;
}

.highcharts-data-table tr:hover {
	background: #f1f7ff;
}

.container5 {
	/* border: 3px solid black; */
	width: 1090px;
	height: 1050px;
	margin-top: 30px;
	margin-left: 300px;
}

.chart {
	margin-bottom: 100px;
	display: flex;
	width: 90%;
	margin: 0 auto;
	}

h2 {
	font-size: 20px;
}

#buy {
	width: 80px;
	height: 40px;
	font-size: 15px;
}

.comment {
	margin-bottom: 80px;
}

.write {
	margin-top: 80px;
	margin-left: 100px;
	width: 500px;
	height: 50px;
	display: inline-block;
}

#enroll {
	margin-top: 0px;
	margin-left: 30px;
	width: 80px;
	height: 40px;
	font-size: 15px;
	display: inline-block;
}

.person {
	margin-top: 30px;
	margin-left: 100px;
	/* width :15px;
	height : 15px; */
	margin-bottom: 50px;
	/* border: 1px solid black; */
	height: 150px;
}

#checkbox {
	margin-top: 42px;
}

.fas.fa-user-circle {
	margin-left: 15px;
	font-size: 50px;
	margin-top: 20px;
}

.id {
	margin-left: 30px;
	width: 60px;
}

.chatt {
	margin-left: 30px;
	/* margin-bottom : 200px; */
	width: 600px;
	height: 50px;
}




.person {
	display: flex;
	align-items: center;
}

.person>input[type=checkbox] {
	margin-bottom: 25px;
}

.person>i {
	margin-bottom: 15px;
}

.person>.subsub {
	margin-left: 15px;
}

.person::after {
	content: '';
	display: block;
	clear: both;
}

/*
.person .chatt {
	margin-left: 0px;
}

.regdate {
	font-size: 15px;
	margin-left: 20px;
}

#delete {
	margin-left: 30px;
	width: 80px;
	height: 40px;
	font-size: 15px;
}

	
 .pagination{

	margin-left : 200px;
	width : 600px;
	height : 200px;
	margin-bottom : 50px;

}

*/

body{
position :absolute;

}



</style>

</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- 차트 링크 -->

<script src="https://code.highcharts.com/highcharts.src.js"></script>

<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
		integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
		crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<div id="page_util">
		<div id="page_util_in">
			<span><img src="/web_team6/asset/images/home-page.png" alt="H"
				class="home_icon" style="width: 15px"></span> <span>&gt;</span> <span>영화상세보기</span>
		</div>
	</div>

	<div id="total" >

		<div class="container1">

			<div class="item">
				<img src="/web_team6/asset/images/${dto.moviePoster}"
					class="image poster">
			</div>

			<div class="contents">
				<!-- style="display:inline-block" -->
				<div class="title">${dto.movieKorName}</div>				
				<div class="box2"></div>
				<div class="subcontents">
					<div class="genre">장르:${dto.movieGenre}</div>
					<div class="opendate">개봉일:${dto.movieOpen.substring(0,10)}</div>					
					<div class="director">감독: ${dto.movieDirector}</div>
					<div class="actor">주연배우: ${dto.movieActor}</div>
					<div class="runningtime">러닝타임: ${dto.movieTime}분</div>
					<br>
					<div class="story1">주요내용:</div>
					<div class="story2" style="margin-top: 15px margin-left: 20px; width: 500px;">
						${dto.movieStory}
					</div>
				</div>
				<br> <br> <br> <br> <br>
				<p>
					<button type="button" class="btn btn-primary" onclick="buy()">예매하기</button>
				</p>
			</div>
			<!-- contents -->
		</div>
		<!-- container -->


		<h2 style="margin-left: 300px; font-size: 30px">
			<i class="fas fa-heart"></i>선호도
		</h2>

		<div class="chart">
			<div class="container3">
				<figure class="highcharts-figure">
					<div id="container"></div>
					<p class="highcharts-description"></p>
				</figure>

			</div>

			<div class="container4">

				<figure class="highcharts-figure">
					<div id="container2"></div>
					<p class="highcharts-description"></p>
				</figure>

			</div>

		</div>
		<!-- chart -->



	<!-- 	<h2 style="margin-left: 300px; font-size: 30px;">
			<i class="far fa-comments"></i>댓글
		</h2>

		<div class="container5">

			<div class="comment">
				<input type="text" class="write" placeholder="영화후기를 남겨주세요">
				<span> <select name="star">
									<option value="">별점</option>
									<option value="">★</option>
									<option value="">★★</option>
									<option value="">★★★</option>
									<option value="">★★★★</option>
									<option value="">★★★★★</option>
							</select>
							</span>
				<button type="button" class="btn btn-primary" id="enroll">등록하기</button>
			</div>

			<div class="subcontainer5">

				<div class="person">

					<input type="checkbox" id="checkbox"> <i
						class="fas fa-user-circle"></i>
					<div class="subsub">
						<div>
							<span>아이디</span> 
						</div>
						<div>
							<input type="text" placeholder="내용을 입력해주세요" class="chatt">
						</div>

					</div>
					<div>
						<span class="regdate">등록일</span>
						<button type="button" class="btn btn-primary" id="delete">삭제하기</button>
					</div>
				</div>
 -->


	</div>
	<!-- total -->
	



<%@ include file="/inc/footer.jsp" %> 
	<script>
	
	
	  //영화예매하기
    function buy(ticketingseq){
       
       window.location.href=
          '/web_team6/ticketing/ticketing1.do';
       
    }
	
	// Create the chart
	Highcharts.chart('container', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: '성별예매분포'
	    },
	   
	    accessibility: {
	        announceNewData: {
	            enabled: true
	        }
	    },
	    xAxis: {
	        type: 'category'
	    },
	    yAxis: {
	        title: {
	            text: 'Total percent market share'
	        }

	    },
	    legend: {
	        enabled: false
	    },
	    plotOptions: {
	        series: {
	            borderWidth: 0,
	            dataLabels: {
	                enabled: true,
	                format: '{point.y:.1f}%'
	            }
	        }
	    },

	    tooltip: {
	        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
	        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
	    },

	    series: [
	        {
	            name: "Browsers",
	            colorByPoint: true,
	            data: [
	                {
	                    name: "여성",/*Chrome  */
	                    y: 60.74,
	                    drilldown: "Chrome"
	                },
	                {
	                    name: "남성",/* Firefox */
	                    y: 80.57,
	                    drilldown: "Firefox"
	                }	               
	            ]
	        }
	    ],
	    drilldown: {
	        series: [
	            {
	                name: "Chrome",
	                id: "Chrome",
	                data: [
	                    [
	                        "v65.0",
	                        0.1
	                    ],
	                    [
	                        "v64.0",
	                        1.3
	                    ],
	                    [
	                        "v63.0",
	                        53.02
	                    ],
	                    [
	                        "v62.0",
	                        1.4
	                    ],
	                    [
	                        "v61.0",
	                        0.88
	                    ],
	                    [
	                        "v60.0",
	                        0.56
	                    ],
	                    [
	                        "v59.0",
	                        0.45
	                    ],
	                    [
	                        "v58.0",
	                        0.49
	                    ],
	                    [
	                        "v57.0",
	                        0.32
	                    ],
	                    [
	                        "v56.0",
	                        0.29
	                    ],
	                    [
	                        "v55.0",
	                        0.79
	                    ],
	                    [
	                        "v54.0",
	                        0.18
	                    ],
	                    [
	                        "v51.0",
	                        0.13
	                    ],
	                    [
	                        "v49.0",
	                        2.16
	                    ],
	                    [
	                        "v48.0",
	                        0.13
	                    ],
	                    [
	                        "v47.0",
	                        0.11
	                    ],
	                    [
	                        "v43.0",
	                        0.17
	                    ],
	                    [
	                        "v29.0",
	                        0.26
	                    ]
	                ]
	            },
	            {
	                name: "Firefox",
	                id: "Firefox",
	                data: [
	                    [
	                        "v58.0",
	                        1.02
	                    ],
	                    [
	                        "v57.0",
	                        7.36
	                    ],
	                    [
	                        "v56.0",
	                        0.35
	                    ],
	                    [
	                        "v55.0",
	                        0.11
	                    ],
	                    [
	                        "v54.0",
	                        0.1
	                    ],
	                    [
	                        "v52.0",
	                        0.95
	                    ],
	                    [
	                        "v51.0",
	                        0.15
	                    ],
	                    [
	                        "v50.0",
	                        0.1
	                    ],
	                    [
	                        "v48.0",
	                        0.31
	                    ],
	                    [
	                        "v47.0",
	                        0.12
	                    ]
	                ]
	            },
	            {
	                name: "Internet Explorer",
	                id: "Internet Explorer",
	                data: [
	                    [
	                        "v11.0",
	                        6.2
	                    ],
	                    [
	                        "v10.0",
	                        0.29
	                    ],
	                    [
	                        "v9.0",
	                        0.27
	                    ],
	                    [
	                        "v8.0",
	                        0.47
	                    ]
	                ]
	            },
	            {
	                name: "Safari",
	                id: "Safari",
	                data: [
	                    [
	                        "v11.0",
	                        3.39
	                    ],
	                    [
	                        "v10.1",
	                        0.96
	                    ],
	                    [
	                        "v10.0",
	                        0.36
	                    ],
	                    [
	                        "v9.1",
	                        0.54
	                    ],
	                    [
	                        "v9.0",
	                        0.13
	                    ],
	                    [
	                        "v5.1",
	                        0.2
	                    ]
	                ]
	            },
	            {
	                name: "Edge",
	                id: "Edge",
	                data: [
	                    [
	                        "v16",
	                        2.6
	                    ],
	                    [
	                        "v15",
	                        0.92
	                    ],
	                    [
	                        "v14",
	                        0.4
	                    ],
	                    [
	                        "v13",
	                        0.1
	                    ]
	                ]
	            },
	            {
	                name: "Opera",
	                id: "Opera",
	                data: [
	                    [
	                        "v50.0",
	                        0.96
	                    ],
	                    [
	                        "v49.0",
	                        0.82
	                    ],
	                    [
	                        "v12.1",
	                        0.14
	                    ]
	                ]
	            }
	        ]
	    }
	});
	
	
	
	//두번쨰차트
	
	// Make monochrome colors
var pieColors = (function () {
    var colors = [],
        base = Highcharts.getOptions().colors[0],
        i;

    for (i = 0; i < 10; i += 1) {
        // Start out with a darkened base color (negative brighten), and end
        // up with a much brighter color
        colors.push(Highcharts.color(base).brighten((i - 3) / 7).get());
    }
    return colors;
}());

// Build the chart
Highcharts.chart('container2', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '연령별 예매분포'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            colors: pieColors,
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b><br>{point.percentage:.1f} %',
                distance: -50,
                filter: {
                    property: 'percentage',
                    operator: '>',
                    value: 4
                }
            }
        }
    },
    series: [{
        name: 'Share',
        data: [
            { name: '10대', y: 61.41 },
            { name: '20대', y: 11.84 },
            { name: '30대', y: 10.85 },
            { name: '40대', y: 4.67 },
            { name: '50대i', y: 4.18 },
          /*   { name: '60대 이상', y: 7.05 } */
        ]
    }]
});
	</script>

</body>

</html>


