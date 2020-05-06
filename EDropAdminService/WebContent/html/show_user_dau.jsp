<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<base href="http://localhost:8080/EDropAdminService/" />
<meta charset="utf-8">
<title>Insert title here</title>
<script src="html/scripts/echarts/echarts.min.js"></script>
<script type="text/javascript" src="html/scripts/jquery/jquery-1.7.1.js"></script>
<script type="text/javascript">
	$(function() {
// 		var myChart = echarts.init($("#main"));
		$.ajax({
			type: "POST",
			url: "user_operation_statistics/get_user_dau_data",
			data: "",
			dataType: "json",
			success: function(msg){
				data = msg;
				var myChart = echarts.init(document.getElementById('main'));
				myChart.setOption(option = {
		            title: {
		                text: 'DAU'
		            },
		            tooltip: {
		                trigger: 'axis'
		            },
		            xAxis: {
		                data: data.map(function (item) {
		                    return item[0];
		                })
		            },
		            yAxis: {
		                splitLine: {
		                    show: false
		                }
		            },
		            toolbox: {
		                left: 'center',
		                feature: {
		                    dataZoom: {
		                        yAxisIndex: 'none'
		                    },
		                    restore: {},
		                    saveAsImage: {}
		                }
		            },
		            dataZoom: [{
		                startValue: '2020-01-01'
		            }, {
		                type: 'inside'
		            }],
		            visualMap: {
		                top: 10,
		                right: 10,
		                pieces: [{
		                    gt: 0,
		                    lte: 50,
		                    color: '#096'
		                }, {
		                    gt: 50,
		                    lte: 100,
		                    color: '#ffde33'
		                }, {
		                    gt: 100,
		                    lte: 150,
		                    color: '#ff9933'
		                }, {
		                    gt: 150,
		                    lte: 200,
		                    color: '#cc0033'
		                }, {
		                    gt: 200,
		                    lte: 300,
		                    color: '#660099'
		                }, {
		                    gt: 300,
		                    color: '#7e0023'
		                }],
		                outOfRange: {
		                    color: '#999'
		                }
		            },
		            series: {
		                name: 'DAU',
		                type: 'line',
		                data: data.map(function (item) {
		                    return item[1];
		                }),
		                markLine: {
		                    silent: true,
		                    data: [{
		                        yAxis: 50
		                    }, {
		                        yAxis: 100
		                    }, {
		                        yAxis: 150
		                    }, {
		                        yAxis: 200
		                    }, {
		                        yAxis: 300
		                    }]
		                }
		            }
		        });
			}
		});
	})
</script>
</head>
<body>
    <div id="main" style="width: 1000px;height:500px;"></div>
<!--     <script type="text/javascript"> -->
<!-- //         var myChart = echarts.init(document.getElementById('main')); -->
<!-- //         str = '[["2000-06-05",116],["2000-06-06",129],["2000-06-07",135],["2000-06-08",86],["2000-06-09",73],["2000-06-10",85],["2000-06-11",73],["2000-06-12",68],["2000-06-13",92],["2000-06-14",130],["2000-06-15",245],["2000-06-16",139],["2000-06-17",115],["2000-06-18",111],["2000-06-19",309],["2000-06-20",206],["2000-06-21",137],["2000-06-22",128],["2000-06-23",85],["2000-06-24",94],["2000-06-25",71],["2000-06-26",106],["2000-06-27",84],["2000-06-28",93],["2000-06-29",85],["2000-06-30",73],["2000-07-01",83],["2000-07-02",125],["2000-07-03",107],["2000-07-04",82],["2000-07-05",44],["2000-07-06",72],["2000-07-07",106],["2000-07-08",107],["2000-07-09",66],["2000-07-10",91],["2000-07-11",92],["2000-07-12",113],["2000-07-13",107],["2000-07-14",131],["2000-07-15",111],["2000-07-16",64],["2000-07-17",69],["2000-07-18",88],["2000-07-19",77],["2000-07-20",83],["2000-07-21",111],["2000-07-22",57],["2000-07-23",55],["2000-07-24",60],["2000-07-25",44],["2000-07-26",127],["2000-07-27",114],["2000-07-28",86],["2000-07-29",73],["2000-07-30",52],["2000-07-31",69],["2000-08-01",86],["2000-08-02",118],["2000-08-03",56],["2000-08-04",91],["2000-08-05",121],["2000-08-06",127],["2000-08-07",78],["2000-08-08",79],["2000-08-09",46],["2000-08-10",108],["2000-08-11",80],["2000-08-12",79],["2000-08-13",69],["2000-08-14",80],["2000-08-15",105],["2000-08-16",119],["2000-08-17",105],["2000-08-18",55],["2000-08-19",74],["2000-08-20",41],["2000-08-21",62],["2000-08-22",104],["2000-08-23",118],["2000-08-24",121],["2000-08-25",126],["2000-08-26",99],["2000-08-27",92],["2000-08-28",75],["2000-08-29",91],["2000-08-30",94],["2000-08-31",69],["2000-09-01",93],["2000-09-02",124],["2000-09-03",120],["2000-09-04",93],["2000-09-05",26],["2000-09-06",32],["2000-09-07",70],["2000-09-08",89],["2000-09-10",117],["2000-09-11",144],["2000-09-12",111],["2000-09-13",120],["2000-09-14",97],["2000-09-15",108],["2000-09-17",74],["2000-09-18",105],["2000-09-19",127],["2000-09-20",143],["2000-09-21",62],["2000-09-22",80],["2000-09-23",136],["2000-09-24",29],["2000-09-25",91],["2000-09-26",93],["2000-09-27",114],["2000-09-28",45],["2000-09-29",102],["2000-09-30",111],["2000-10-01",93],["2000-10-02",117],["2000-10-03",78],["2000-10-04",76],["2000-10-05",100],["2000-10-06",75],["2000-10-07",169],["2000-10-08",59],["2000-10-09",89],["2000-10-10",91],["2000-10-11",75],["2000-10-12",28],["2000-10-13",47],["2000-10-14",92],["2000-10-16",72],["2000-10-17",149],["2000-10-18",86],["2000-10-19",88],["2000-10-20",104],["2000-10-21",91],["2000-10-22",88],["2000-10-23",55],["2000-10-24",63],["2000-10-25",41],["2000-10-26",85],["2000-10-27",99],["2000-10-28",121],["2000-10-29",96],["2000-10-30",90],["2000-11-01",80],["2000-11-02",116],["2000-11-03",207],["2000-11-04",306],["2000-11-05",283],["2000-11-06",200],["2000-11-07",93],["2000-11-08",49],["2000-11-09",78],["2000-11-10",40],["2000-11-11",74],["2000-11-12",67],["2000-11-13",118],["2000-11-14",196],["2000-11-15",101],["2000-11-16",59],["2000-11-17",83],["2000-11-18",83],["2000-11-19",124],["2000-11-20",57],["2000-11-21",78],["2000-11-22",113],["2000-11-23",172],["2000-11-24",129],["2000-11-25",103],["2000-11-26",75],["2000-11-27",125],["2000-11-28",121],["2000-11-29",204],["2000-11-30",141],["2000-12-01",106],["2000-12-02",146],["2000-12-03",95],["2000-12-04",149],["2000-12-05",71],["2000-12-07",157],["2000-12-08",141],["2000-12-09",197],["2000-12-10",43],["2000-12-11",81],["2000-12-12",109],["2000-12-13",118],["2000-12-15",115],["2000-12-16",92],["2000-12-17",123],["2000-12-18",147],["2000-12-19",59],["2000-12-20",103],["2000-12-21",146],["2000-12-22",137],["2000-12-23",74],["2000-12-24",64],["2000-12-25",67],["2000-12-26",107],["2000-12-27",101],["2000-12-28",79],["2000-12-29",137],["2000-12-30",165],["2000-12-31",81],["2001-01-01",100],["2001-01-02",126],["2001-01-03",56],["2001-01-05",108],["2001-01-06",88],["2001-01-07",78],["2001-01-08",105],["2001-01-09",77],["2001-01-10",105],["2001-01-11",93],["2001-01-12",107],["2001-01-13",128],["2001-01-14",53],["2001-01-15",81],["2001-01-16",128],["2001-01-17",179],["2001-01-18",225],["2001-01-19",116],["2001-01-20",153],["2001-01-21",161],["2001-01-22",149],["2001-01-23",115],["2001-01-24",136],["2001-01-25",101],["2001-01-26",109],["2001-01-27",108],["2001-01-28",86],["2001-01-29",101],["2001-01-30",109],["2001-01-31",139],["2001-02-01",110],["2001-02-02",113],["2001-02-03",130],["2001-02-04",62],["2001-02-05",88],["2001-02-06",105],["2001-02-07",87],["2001-02-08",140],["2001-02-09",116],["2001-02-10",100],["2001-02-11",83],["2001-02-12",102],["2001-02-13",106],["2001-02-14",157],["2001-02-15",131],["2001-02-16",77],["2001-02-17",101],["2001-02-18",148],["2001-02-19",227],["2001-02-20",105],["2001-02-21",155],["2001-02-22",293],["2001-02-23",99],["2001-02-24",57],["2001-02-25",97],["2001-02-26",104],["2001-02-27",117],["2001-02-28",125],["2001-03-01",216],["2001-03-02",149],["2001-03-03",256],["2001-03-04",172],["2001-03-05",113],["2001-03-06",338],["2001-03-07",57],["2001-03-08",48],["2001-03-10",111],["2001-03-11",87],["2001-03-12",175],["2001-03-13",186],["2001-03-14",201],["2001-03-15",76],["2001-03-16",131],["2001-03-17",127],["2001-03-18",128],["2001-03-19",152],["2001-03-20",144],["2001-03-21",162],["2001-03-22",500],["2001-03-24",358],["2001-03-25",128],["2001-03-26",54],["2001-03-27",57],["2001-03-28",54],["2001-03-29",80],["2001-03-30",71],["2001-03-31",73],["2001-04-01",139],["2001-04-02",224],["2001-04-03",107],["2001-04-04",150],["2001-04-05",180],["2001-04-06",77],["2001-04-07",95],["2001-04-08",194],["2001-04-09",143],["2001-04-10",205],["2001-04-11",129],["2001-04-12",64],["2001-04-13",61],["2001-04-14",79],["2001-04-15",121],["2001-04-16",130],["2001-04-17",150],["2001-04-18",205],["2001-04-19",154],["2001-04-20",81],["2001-04-21",140],["2001-04-22",119],["2001-04-23",156],["2001-04-24",72],["2001-04-25",108],["2001-04-26",124],["2001-04-27",94],["2001-04-28",157],["2001-04-29",100],["2001-04-30",158],["2001-05-01",277],["2001-05-02",332],["2001-05-03",303],["2001-05-04",238],["2001-05-05",500],["2001-05-06",99],["2001-05-07",93],["2001-05-08",104],["2001-05-09",74],["2001-05-10",68],["2001-05-11",90],["2001-05-12",114],["2001-05-13",142],["2001-05-14",126],["2001-05-15",185],["2001-05-16",402],["2001-05-17",189],["2001-05-17",189],["2001-05-17",189],["2001-05-18",112],["2001-05-19",137],["2001-05-20",158],["2001-05-21",158],["2001-05-22",116],["2001-05-23",132],["2001-05-24",110],["2001-05-25",82],["2001-05-26",56],["2001-05-27",54],["2001-05-28",71],["2001-05-29",101],["2001-05-30",57],["2001-05-31",88],["2001-06-01",99],["2001-06-02",84],["2001-06-03",139],["2001-06-04",132],["2001-06-05",141],["2001-06-07",159],["2001-06-08",131],["2001-06-09",180],["2001-06-10",164],["2001-06-11",134],["2001-06-12",163],["2001-06-13",105],["2001-06-14",74],["2001-06-15",50],["2001-06-16",60],["2001-06-17",82],["2001-06-18",111],["2001-06-19",89],["2001-06-20",81],["2001-06-21",76],["2001-06-22",70],["2001-06-23",74],["2001-06-24",99],["2001-06-25",91],["2001-06-26",113],["2001-06-27",93],["2001-06-28",69],["2001-06-29",74],["2001-06-30",75],["2001-07-01",108],["2001-07-02",115],["2001-07-03",86],["2001-07-04",67],["2001-07-05",68],["2001-07-06",74],["2001-07-07",69],["2001-07-08",95],["2001-07-09",99],["2001-07-10",92],["2001-07-11",84],["2001-07-12",77],["2001-07-13",69],["2001-07-14",62],["2001-07-15",83],["2001-07-16",101],["2001-07-17",98],["2001-07-18",89],["2001-07-19",82],["2001-07-20",105],["2001-07-21",79],["2001-07-22",48],["2001-07-23",119],["2001-07-24",126],["2001-07-25",44],["2001-07-26",42],["2001-07-27",86],["2001-07-28",68],["2001-07-29",93],["2001-07-30",89],["2001-07-31",76],["2001-08-01",54],["2001-08-02",53],["2001-08-03",35],["2001-08-04",65],["2001-08-05",108],["2001-08-06",114],["2001-08-07",90],["2001-08-08",63],["2001-08-09",79],["2001-08-10",102],["2001-08-11",100],["2001-08-12",107],["2001-08-13",81],["2001-08-14",79],["2001-08-15",116],["2001-08-16",98],["2001-08-17",96],["2001-08-18",94],["2001-08-19",63],["2001-08-20",39],["2001-08-21",81],["2001-08-22",73],["2001-08-23",66],["2001-08-24",52],["2001-08-25",64],["2001-08-26",61],["2001-08-27",83],["2001-08-28",85],["2001-08-29",99],["2001-08-30",97],["2001-08-31",93],["2001-09-01",86],["2001-09-02",105],["2001-09-03",98],["2001-09-04",109],["2001-09-05",92],["2001-09-06",68],["2001-09-07",92],["2001-09-08",72],["2001-09-09",64],["2001-09-10",88],["2001-09-11",97],["2001-09-12",102],["2001-09-13",103],["2001-09-14",120],["2001-09-15",94],["2001-09-16",95],["2001-09-17",93],["2001-09-18",56],["2001-09-19",98],["2001-09-20",81],["2001-09-21",100],["2001-09-22",75],["2001-09-23",84],["2001-09-24",91],["2001-09-25",70],["2001-09-26",96],["2001-09-27",128],["2001-09-28",92],["2001-09-29",107],["2001-09-30",95],["2001-10-01",63],["2001-10-02",115],["2001-10-03",69],["2001-10-04",47],["2001-10-05",86],["2001-10-06",122],["2001-10-07",104],["2001-10-08",122],["2001-10-09",49],["2001-10-10",36],["2001-10-11",83],["2001-10-12",107],["2001-10-13",126],["2001-10-14",126],["2001-10-15",78],["2001-10-16",72],["2001-10-17",76],["2001-10-18",87],["2001-10-19",143],["2001-10-20",259],["2001-10-21",183],["2001-10-22",276],["2001-10-23",232],["2001-10-24",167],["2001-10-25",105],["2001-10-26",129],["2001-10-27",140],["2001-10-28",61],["2001-10-29",85],["2001-10-30",155],["2001-11-01",38],["2001-11-02",106],["2001-11-03",134],["2001-11-04",57],["2001-11-05",51],["2001-11-06",68],["2001-11-07",129],["2001-11-08",158],["2001-11-09",85],["2001-11-10",121],["2001-11-11",161],["2001-11-12",94],["2001-11-13",58],["2001-11-14",57],["2001-11-15",71],["2001-11-16",105],["2001-11-17",66],["2001-11-18",117],["2001-11-19",87],["2001-11-20",88],["2001-11-21",131],["2001-11-22",151],["2001-11-23",310],["2001-11-24",161],["2001-11-25",23],["2001-11-26",52],["2001-11-27",82],["2001-11-28",128],["2001-11-29",115],["2001-11-30",63],["2001-12-02",102],["2001-12-03",96],["2001-12-04",107],["2001-12-05",89],["2001-12-06",59],["2001-12-07",100],["2001-12-08",136],["2001-12-09",137],["2001-12-10",119],["2001-12-11",112],["2001-12-12",186],["2001-12-13",192],["2001-12-14",83],["2001-12-15",97],["2001-12-16",113],["2001-12-18",89],["2001-12-19",106],["2001-12-20",119],["2001-12-21",62],["2001-12-22",79],["2001-12-23",58],["2001-12-24",61],["2001-12-25",64],["2001-12-26",108],["2001-12-27",101],["2001-12-28",82],["2001-12-29",85],["2001-12-30",98],["2001-12-31",132],["2002-01-01",88],["2002-01-02",97],["2002-01-03",116],["2002-01-04",111],["2002-01-05",81],["2002-01-06",78],["2002-01-07",138],["2002-01-08",100],["2002-01-09",157],["2002-01-10",349],["2002-01-11",196],["2002-01-12",190],["2002-01-13",100],["2002-01-14",103],["2002-01-15",160],["2002-01-16",97],["2002-01-17",103],["2002-01-18",123],["2002-01-19",137],["2002-01-20",268],["2002-01-21",52],["2002-01-22",44],["2002-01-23",66],["2002-01-24",106],["2002-01-25",94],["2002-01-26",96],["2002-01-27",58],["2002-01-28",62],["2002-01-29",56],["2002-01-30",62],["2002-01-31",109],["2002-02-01",96],["2002-02-02",95],["2002-02-03",126],["2002-02-04",161],["2002-02-05",138],["2002-02-06",106],["2002-02-07",99],["2002-02-08",113],["2002-02-09",80],["2002-02-10",90],["2002-02-11",86],["2002-02-12",142],["2002-02-13",93],["2002-02-14",125],["2002-02-15",135],["2002-02-16",138],["2002-02-17",111],["2002-02-18",70],["2002-02-19",101],["2002-02-20",153],["2002-02-21",146],["2002-02-22",97],["2002-02-23",82],["2002-02-24",99],["2002-02-25",131],["2002-02-26",88],["2002-02-27",74],["2002-02-28",96],["2002-03-01",133],["2002-03-02",105],["2002-03-03",86],["2002-03-04",105],["2002-03-05",89],["2002-03-06",70],["2002-03-07",87],["2002-03-08",109],["2002-03-09",161],["2002-03-10",83],["2002-03-11",129],["2002-03-12",107],["2002-03-13",89],["2002-03-14",186],["2002-03-15",108],["2002-03-16",500],["2002-03-17",188],["2002-03-18",102],["2002-03-19",139],["2002-03-20",155],["2002-03-21",500],["2002-03-22",370],["2002-03-23",164],["2002-03-24",105],["2002-03-25",156],["2002-03-26",180],["2002-03-27",105],["2002-03-28",126],["2002-03-29",120],["2002-03-30",122],["2002-03-31",118],["2002-04-01",188],["2002-04-02",260],["2002-04-03",296],["2002-04-04",118],["2002-04-05",132],["2002-04-06",80],["2002-04-07",500],["2002-04-08",500],["2002-04-09",253],["2002-04-10",67],["2002-04-11",110],["2002-04-13",133],["2002-04-14",246],["2002-04-15",324],["2002-04-16",225],["2002-04-17",120],["2002-04-18",121],["2002-04-19",131],["2002-04-20",148],["2002-04-21",174],["2002-04-22",106],["2002-04-23",32],["2002-04-24",86],["2002-04-25",92],["2002-04-26",117],["2002-04-27",110],["2002-04-28",90],["2002-04-29",86],["2002-04-30",106],["2002-05-01",84],["2002-05-02",76],["2002-05-03",92],["2002-05-04",85],["2002-05-05",79],["2002-05-07",92],["2002-05-08",99],["2002-05-09",105],["2002-05-10",105],["2002-05-11",78],["2002-05-12",125],["2002-05-13",113],["2002-05-14",90],["2002-05-15",89],["2002-05-16",99],["2002-05-17",94],["2002-05-18",109],["2002-05-19",105],["2002-05-20",115],["2002-05-21",110],["2002-05-22",54],["2002-05-23",76],["2002-05-24",83],["2002-05-25",75],["2002-05-26",89],["2002-05-27",97],["2002-05-28",113],["2002-05-29",106],["2002-05-30",86],["2002-05-31",108],["2002-06-01",115],["2002-06-02",106],["2002-06-03",99],["2002-06-04",151],["2002-06-05",118],["2002-06-06",139],["2002-06-07",161],["2002-06-08",77],["2002-06-09",72],["2002-06-10",36],["2002-06-11",81],["2002-06-12",67],["2002-06-13",56],["2002-06-14",73],["2002-06-15",75],["2002-06-16",80],["2002-06-17",122],["2002-06-19",142],["2002-06-20",77],["2002-06-21",68],["2002-06-22",77],["2002-06-23",50],["2002-06-24",51],["2002-06-25",40],["2002-06-26",46],["2002-06-27",65],["2002-06-28",110],["2002-06-29",104],["2002-06-30",85],["2002-07-01",126],["2002-07-02",88],["2002-07-03",112],["2002-07-04",108],["2002-07-05",98],["2002-07-06",88],["2002-07-07",68],["2002-07-08",87],["2002-07-09",83],["2002-07-10",87],["2002-07-11",127],["2002-07-12",111],["2002-07-13",108],["2002-07-14",91],["2002-07-15",89],["2002-07-16",75],["2002-07-17",88],["2002-07-18",76],["2002-07-19",62],["2002-07-20",55],["2002-07-21",66],["2002-07-22",67],["2002-07-23",62],["2002-07-24",113],["2002-07-25",81],["2002-07-26",66],["2002-07-27",86],["2002-07-28",47],["2002-07-29",44],["2002-07-30",79],["2002-07-31",137],["2002-08-01",160],["2002-08-02",89],["2002-08-03",96],["2002-08-04",63],["2002-08-05",53],["2002-08-06",50],["2002-08-07",44],["2002-08-08",74],["2002-08-09",64],["2002-08-10",72],["2002-08-11",94],["2002-08-12",71],["2002-08-13",124],["2002-08-14",129],["2002-08-15",155],["2002-08-16",156],["2002-08-17",125],["2002-08-18",130],["2002-08-19",66],["2002-08-20",91],["2002-08-21",114],["2002-08-22",112],["2002-08-23",102],["2002-08-24",72],["2002-08-25",76],["2002-08-26",77],["2002-08-27",86],["2002-08-28",92],["2002-08-29",108],["2002-08-30",100],["2002-08-31",122],["2002-09-01",164],["2002-09-02",111],["2002-09-03",52],["2002-09-04",70],["2002-09-05",59],["2002-09-06",82],["2002-09-07",96],["2002-09-08",92],["2002-09-09",124],["2002-09-10",98],["2002-09-11",45],["2002-09-12",37],["2002-09-13",81],["2002-09-14",90],["2002-09-15",98],["2002-09-16",97],["2002-09-17",111],["2002-09-18",125],["2002-09-19",83],["2002-09-20",41],["2002-09-21",87],["2002-09-22",56],["2002-09-23",72],["2002-09-25",182],["2002-09-26",183],["2002-09-27",70],["2002-09-28",44],["2002-09-29",62],["2002-09-30",100],["2002-10-01",121],["2002-10-02",62],["2002-10-03",70],["2002-10-04",99],["2002-10-05",89],["2002-10-06",52],["2002-10-07",37],["2002-10-08",64],["2002-10-09",135],["2002-10-10",232],["2002-10-11",365],["2002-10-12",198],["2002-10-13",53],["2002-10-14",121],["2002-10-15",83],["2002-10-16",100],["2002-10-17",169],["2002-10-18",75],["2002-10-20",72],["2002-10-21",51],["2002-10-22",50],["2002-10-23",95],["2002-10-24",88],["2002-10-26",59],["2002-10-27",30],["2002-10-28",48],["2002-10-29",109],["2002-10-30",146],["2002-10-31",76],["2002-11-01",33],["2002-11-02",52],["2002-11-03",54],["2002-11-04",70],["2002-11-05",107],["2002-11-06",96],["2002-11-07",76],["2002-11-08",37],["2002-11-09",94],["2002-11-10",182],["2002-11-11",452],["2002-11-12",66],["2002-11-13",56],["2002-11-14",80],["2002-11-15",85],["2002-11-16",104],["2002-11-17",43],["2002-11-18",52],["2002-11-19",115],["2002-11-20",143],["2002-11-21",75],["2002-11-22",110],["2002-11-23",134],["2002-11-24",129],["2002-11-25",153],["2002-11-26",54],["2002-11-27",114],["2002-11-28",145],["2002-11-29",87],["2002-11-30",138],["2002-12-01",198],["2002-12-02",273],["2002-12-03",395],["2002-12-04",498],["2002-12-05",97],["2002-12-06",112],["2002-12-07",97],["2002-12-08",86],["2002-12-09",97],["2002-12-10",99],["2002-12-12",151],["2002-12-13",135],["2002-12-14",193],["2002-12-15",153],["2002-12-16",95],["2002-12-17",91],["2002-12-18",137],["2002-12-19",98],["2002-12-20",77],["2002-12-21",95],["2002-12-22",96],["2002-12-23",83],["2002-12-24",71],["2002-12-25",53],["2002-12-26",69],["2002-12-27",75],["2002-12-28",106],["2002-12-29",90],["2002-12-30",106],["2002-12-31",64]]'; -->
<!-- //         data = JSON.parse(str); -->
<!-- // 		data = ""; -->
<!-- //         $.ajax({ -->
<!-- //        	   type: "POST", -->
<!-- //        	   url: "user_operation_statistics/get_user_dau_data", -->
<!-- //        	   data: "", -->
<!-- //        	   dataType: "json", -->
<!-- //        	   success: function(msg){ -->
<!-- //        		   data = msg; -->
<!-- //        	   } -->
<!-- //        	}); -->
<!-- //         alert(data); -->
        
<!--     </script> -->
</body>
</html>