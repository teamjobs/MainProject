<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style>

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button2 {
	background-color: #008CBA;
} /* Blue */
</style>

<!-- 상세 검색 메뉴 -->
  
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

<form name="zn" method="get" action="/work/post/selectserch">
	<div align="right">
		<button type="button" class="btn btn-success" id="hidebt"
			style="width: 250;">상세검색</button>
	</div>
	<div align="left" class="container" style="width: 50%; display: none"
		id="container">
		<h2>상세 검색 조건 설정</h2>
		<!-- 지역 -->
		
		<div align="center" class="panel-group" id="accordion" style="width: 100%">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1">지역</a> :: <span id="local_rst"></span>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="local" items="${local }">
								<input class="local" type="checkbox" name="local"
									value="${local }" /> &nbsp;&nbsp;${local }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 직무 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2">직무</a> :: <span id="job_rst"></span>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="job" items="${job }">
								<input class="job" type="checkbox" name="job" value="${job }" />&nbsp;${job }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 경력 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3">경력</a> :: <span id="career_rst"></span>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="career" items="${career }">
								<input class="career" type="checkbox" name="career"
									value="${career }" />&nbsp;${career }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 고용형태 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4">고용 형태</a> :: <span id="hiretype_rst"></span>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="hiretype" items="${hiretype }">
								<input class="hiretype" type="checkbox" name="hiretype"
									value="${hiretype }" />&nbsp;${hiretype }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 학력 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse5">학력</a> :: <span id="education_rst"></span>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="education" items="${education }">
								<input class="education" type="checkbox" name="education"
									value="${education }" />&nbsp;${education }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 직급 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse6">직급</a> :: <span id="rank_rst"></span>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:set var="i" value="0" />
							<c:forEach var="rank" items="${rank }">
								<input class="rank" type="checkbox" name="rank" value="${rank }" />&nbsp;${rank }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
								<c:if test="${i % 5==0 }">
									<br />
								</c:if>
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>
			<!-- 급여 -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse7">급여</a> :: <span id="salary_rst"></span>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse">
					<div class="panel-body">
						<fieldset>
							<c:forEach var="salary" items="${salary }">
								<input class="salary" type="checkbox" name="salary"
									value="${salary }" />&nbsp;${salary }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
							</c:forEach>
						</fieldset>
					</div>
				</div>
			</div>


			<!-- 끝 -->
			<div align="center">
				<input type="submit" class="button" value="선택 조건 검색"
					style="width: 200" /> <input type="button" class="button button2"
					value="초기화" id="resetbt" style="width: 200" />
			</div>
		</div>
	</div>
</form>
</div>

<hr />



<script>
	//======================================================================
	//상세 검색 숨김
	$('#hidebt').click(function() { // ID가 toggleButton인 요소를 클릭하면
		var state = $('#container').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
		if (state == 'none') { // state가 none 상태일경우 
			$('#container').toggle(1000); // ID가 moreMenu인 요소를 show();
		} else { // 그 외에는
			$('#container').toggle(1000); // ID가 moreMenu인 요소를 hide();         
		}
	});

	//체크박스 초기화
	$('#resetbt').click(function() {

		var resetck = "";
		$(".local").prop('checked', false);
		$("#local_rst").html(resetck);
		$(".job").prop('checked', false);
		$("#job_rst").html(resetck);
		$(".career").prop('checked', false);
		$("#career_rst").html(resetck);
		$(".hiretype").prop('checked', false);
		$("#hiretype_rst").html(resetck);
		$(".education").prop('checked', false);
		$("#education_rst").html(resetck);
		$(".rank").prop('checked', false);
		$("#rank_rst").html(resetck);
		$(".salary").prop('checked', false);
		$("#salary_rst").html(resetck);
	});

	//지역
	$(".local").change(function() {
		if ($(".local:checked").val() != "전국") {
			if ($(".local:checked").length > 2) {
				window.alert("지역 선택은 최대 2곳입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".local:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#local_rst").html(inner);
			}
		} else {
			if ($(".local:checked").val() == "전국") {
				$(".local").each(function() {
					if ($(this).val() != "전국") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".local:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#local_rst").html(inner);
		}
	});
	//직무
	$(".job").change(function() {
		if ($(".job:checked").val() != "전체") {
			if ($(".job:checked").length > 2) {
				window.alert("직무 선택은 최대 2가지 입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".job:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#job_rst").html(inner);
			}
		} else {
			if ($(".job:checked").val() == "전체") {
				$(".job").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".job:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#job_rst").html(inner);
		}
	});
	//경력
	$(".career").change(function() {
		if ($(".career:checked").val() != "전체") {
			if ($(".career:checked").length > 2) {
				window.alert("경력 선택은 최대 2개 입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".career:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#career_rst").html(inner);
			}
		} else {
			if ($(".career:checked").val() == "전체") {
				$(".career").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".career:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#career_rst").html(inner);
		}
	});
	//고용형태
	$(".hiretype").change(function() {
		if ($(".hiretype:checked").val() != "전체") {
			if ($(".hiretype:checked").length > 3) {
				window.alert("고용 형태는 최대 3개까지 설정 가능");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".hiretype:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#hiretype_rst").html(inner);
			}
		} else {
			if ($(".hiretype:checked").val() == "전체") {
				$(".hiretype").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".hiretype:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#hiretype_rst").html(inner);
		}
	});
	//학력
	$(".education").change(function() {
		if ($(".education:checked").val() != "전체") {
			if ($(".education:checked").length > 3) {
				window.alert("학력 선택은 최대 3개 입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".education:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#education_rst").html(inner);
			}
		} else {
			if ($(".education:checked").val() == "전체") {
				$(".education").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".education:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#education_rst").html(inner);
		}
	});
	//직급
	$(".rank").change(function() {
		if ($(".rank:checked").val() != "전체") {
			if ($(".rank:checked").length > 3) {
				window.alert("직급 선택은 최대 2개 입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".rank:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#rank_rst").html(inner);
			}
		} else {
			if ($(".rank:checked").val() == "전체") {
				$(".rank").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".rank:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#rank_rst").html(inner);
		}
	});
	//급여
	$(".salary").change(function() {
		if ($(".salary:checked").val() != "전체") {
			if ($(".salary:checked").length > 2) {
				window.alert("급여 선택은 최대 2개 입니다.");
				$(this).prop("checked", false);
			} else {
				var inner = "";
				$(".salary:checked").each(function() {
					inner += $(this).val() + "&nbsp;&nbsp;"
				});
				$("#salary_rst").html(inner);
			}
		} else {
			if ($(".salary:checked").val() == "전체") {
				$(".salary").each(function() {
					if ($(this).val() != "전체") {
						$(this).prop("checked", false);
					}
				})
			}
			var inner = "";
			$(".salary:checked").each(function() {
				inner += $(this).val() + "&nbsp;&nbsp;"
			});
			$("#salary_rst").html(inner);
		}
	});
</script>





























