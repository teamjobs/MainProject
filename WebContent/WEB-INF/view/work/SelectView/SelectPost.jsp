<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<center>
	<form name="zn" method="get" action="/find/result">
	<button type="button" class="w3-btn-block w3-padding-large w3-red w3-margin-bottom" style="width: 150px;" id="hidebt"><b>상세 검색</b></button>
		<div id="box" style="display: none;">
		<!-- 지역 -->
		<br/>
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>지역</b> »<span id="local_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
				<c:set var="i" value="0" />
				<c:forEach var="local" items="${local }">
					<input class="local" type="checkbox" name="local" value="${local }" /> &nbsp;&nbsp;${local }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
					<c:if test="${i % 5==0 }">
						<br />
					</c:if>
				</c:forEach>
			</fieldset>
			
			
		<!-- 직무 -->
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>직무</b> »<span id="job_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
				<c:set var="i" value="0" />
				<c:forEach var="job" items="${job }">
					<input class="job" type="checkbox" name="job" value="${job }" />&nbsp;${job }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
					<c:if test="${i % 5==0 }">
						<br />
					</c:if>
				</c:forEach>
			</fieldset>
	

	
		<!-- 경력 -->
		
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>경력</b> »<span id="career_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
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
	
	
		<!-- 고용형태 -->
		
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>고용형태</b> »<span id="hiretype_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
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


		<!-- 학력  -->
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>학력</b> »<span id="education_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
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



		<!-- 직급 -->
		
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>직급</b> »<span id="rank_rst"></span></label>
		</fieldset>
			<fieldset style="width: 700px; border: none; margin: 15px;">
				<c:set var="i" value="0" />
				<c:forEach var="rank" items="${rank }">
					<input class="rank" type="checkbox" name="rank" value="${rank }" />&nbsp;${rank }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
					<c:if test="${i % 5==0 }">
						<br />
					</c:if>
				</c:forEach>
			</fieldset>


		<!-- 급여  -->
		
		<fieldset style="max-width: 700px; border: 2px solid;">
		<label><b>급여</b> »<span id="salary_rst"></span></label>
		</fieldset>
		<fieldset style="width: 700px; border: none; margin: 15px;">
				<c:forEach var="salary" items="${salary }">
					<input class="salary" type="checkbox" name="salary"
						value="${salary }" />&nbsp;${salary }&nbsp;&nbsp;&nbsp;&nbsp;
							<c:set var="i" value="${i+1 }" />
				</c:forEach>
			</fieldset>
			<br/>
			<input id="resetbt" type="button" class="w3-btn-block w3-padding w3-light-grey w3-margin-bottom" style="width: 100px;" value="선택해제"/>&nbsp;&nbsp;
			<input type="submit" class="w3-btn-block w3-padding w3-red w3-margin-bottom" style="width: 100px;" value="검색" /><br/><br/>
			
		</div>
</form>
</center>
<script>

//상세 검색 숨김
	$('#hidebt').click(function() { // ID가 toggleButton인 요소를 클릭하면
		var state = $('#box').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
		if (state == 'none') { // state가 none 상태일경우 
			$('#box').toggle(1000); // ID가 moreMenu인 요소를 show();
		} else { // 그 외에는
			$('#box').toggle(1000); // ID가 moreMenu인 요소를 hide();         
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
