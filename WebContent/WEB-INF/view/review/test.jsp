<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>

<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<h3>입력 해봅시다</h3>
<form action="/review/income" >
<input type="button" class="go_bt" id="butt" value="눌러버려" target="테스트컴퍼니"/>
</form>

<form action="/review/interviewchart" >
<input type="button" class="in_bt" id="intt" value=" 인터뷰" target="테컴퍼니"/>
</form>



<div style="width: 298px; height: 140; margin: 0 auto">
    <div id="container-rpm" style="width: 300px; height: 200px; float: left"></div>
</div>





<script>

$(".go_bt").click(function(){
	 window.alert("눌렀음");
		location.href = "/review/income?company="+$(this).attr("target");
});

$("#intt").click(function(){
	 window.alert("눌렀음");
		location.href = "/review/interviewchart?company="+$(this).attr("target");
});
//============================================================================
	
$(function () {

    var gaugeOptions = {

        chart: {
            type: 'solidgauge'
        },

        title: null,

        pane: {
            center: ['50%', '85%'],
            size: '100%',
            startAngle: -90,
            endAngle: 90,
            background: {
                backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
                innerRadius: '60%',
                outerRadius: '100%',
                shape: 'arc'
            }
        },

        tooltip: {
            enabled: false
        },

        // the value axis
        yAxis: {
            stops: [
                [0.1, '#55BF3B'], // green
                [0.5, '#DDDF0D'], // yellow
                [0.9, '#DF5353'] // red
            ],
            lineWidth: 0,
            minorTickInterval: null,
            tickAmount: 2,
            title: {
                y: -70
            },
            labels: {
                y: 16
            }
        },

        plotOptions: {
            solidgauge: {
                dataLabels: {
                    y: 5,
                    borderWidth: 0,
                    useHTML: true
                }
            }
        }
    };


    var chartRpm = Highcharts.chart('container-rpm', Highcharts.merge(gaugeOptions, {
        yAxis: {
            min: 1,
            max: 5,
            title: {
                text: '면접 난이도'
            }
        },

        series: [{
            name: '난이도',
            data: [1.9],
            dataLabels: {
                format: '<div style="text-align:center"><span style="font-size:25px;color:' +
                    ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y:.1f}</span><br/>' +
                       '<span style="font-size:12px;color:silver">* 쉬움 / 어려움</span></div>'
            },
            tooltip: {
                valueSuffix: ' revolutions/min'
            }
        }]

    }));
});


</script>