<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- alert -->

	<div class="alert alert-danger" hidden="hidden" id="checkFail">
		<strong>Fail!</strong> 이용약관의 동의해 주십시오.
	</div>


	<div class="container">
		<h3>JOBs에 오신 것을 환영합니다.</h3>
		<div class="well" id="c1">JOBs 제품 및 서비스(‘서비스’)를 이용해 주셔서 감사합니다.
			서비스는 1600 Amphitheatre Parkway, Mountain View, CA 94043, United
			States에 소재한 JOBs Inc.(‘JOBs’)에서 제공합니다. 서비스를 이용함으로써 귀하는 본 약관에 동의하게 되므로
			본 약관을 주의 깊게 읽어보시기 바랍니다. JOBs 서비스는 매우 다양하므로 때로 추가약관 또는 제품 요구사항(연령 요건
			포함)이 적용될 수 있습니다. 추가약관은 관련 서비스에 대하여 제공되며, 귀하가 해당 서비스를 이용하는 경우 이 추가약관은
			귀하와 JOBs 간 계약의 일부가 됩니다.</div>
	</div>
	<div align="center">
		<input type="checkbox" id="1"> 위 사항을 준수하였으며 이의 동의합니다.
	</div>

	<div class="container">
		<h3>JOBs 서비스 이용</h3>
		<div class="well" id="c2">JOBs 제품 및 서비스(‘서비스’)를 이용해 주셔서 감사합니다.
			서비스는 귀하는 서비스 내에서 적용되는 모든 정책을 준수해야 합니다. JOBs 서비스의 오용을 삼가시기 바랍니다. 예를 들어
			서비스를 방해하거나 JOBs이 제공하는 인터페이스 및 안내사항 이외의 다른 방법을 사용하여 액세스를 시도하지 않아야 합니다.
			귀하는 관련 수출 및 재수출 통제 법규 및 규정 등 오직 법률상 허용되는 범위에서만 JOBs 서비스를 이용할 수 있습니다.
			귀하가 JOBs 약관이나 정책을 준수하지 않거나 JOBs이 부정행위 혐의를 조사하고 있는 경우, JOBs 서비스 제공이 일시
			중지 또는 중단될 수 있습니다. JOBs 서비스를 사용한다고 해서 JOBs 서비스 또는 액세스하는 콘텐츠의 지적재산권을
			소유하게 되는 것은 아닙니다. 콘텐츠 소유자로부터 허가를 받거나 달리 법률에 따라 허용되는 경우를 제외하고, JOBs
			서비스의 콘텐츠를 사용할 수 없습니다. 본 약관은 귀하에게 JOBs 서비스에 사용된 브랜드나 로고를 사용할 권리를 부여하지
			않습니다. JOBs 서비스에 또는 JOBs 서비스와 함께 게재된 어떠한 법적 고지도 삭제하거나 감추거나 변경하지 마십시오.</div>
	</div>
	<div align="center">
		<input type="checkbox" id="2"> 위 사항을 준수하였으며 이의 동의합니다.
	</div>
	<div class="container">
		<h3>개인정보 보호 및 저작권 보호</h3>
		<div class="well" id="c3">JOBs 제품 및 서비스(‘서비스’)를 이용해 주셔서 감사합니다.
			서비스는 JOBs 개인정보취급방침은 귀하가 JOBs 서비스를 사용할 때 JOBs이 개인정보를 어떻게 취급하고 보호하는지에
			대해 설명합니다. JOBs 서비스를 사용함으로써 귀하는 JOBs이 개인정보취급방침에 따라 귀하의 개인정보를 사용할 수 있음에
			동의하게 됩니다. JOBs은 미국 디지털 밀레니엄 저작권법(US Digital Millennium Copyright
			Act)에 규정된 절차에 따라 저작권침해를 주장하는 신고에 대응하고, 반복 침해자의 계정을 해지합니다. JOBs은 저작권자가
			온라인상에서 자신의 지적 재산을 관리할 수 있도록 정보를 제공합니다. 누군가 귀하의 저작권을 침해하고 있다고 생각되어
			JOBs에 통지하고자 하는 경우, JOBs 도움말 센터에서 신고서 제출 방법 및 저작권 침해 신고에 대한 JOBs 대응 정책
			관련 정보를 확인하실 수 있습니다.</div>
	</div>
	<div align="center">
		<input type="checkbox" id="3"> 위 사항을 준수하였으며 이의 동의합니다.
	</div>
	<hr />

	<div id="submit" align="center">
		<button type="button" class="btn btn-info">OK</button>
	</div>

	<script type="text/javascript">
		$("#1").change(function() {
			var f = $("#1").prop("checked");
			console.log(f);
			if (f) {
				$("#c1").slideUp(1000);
			} else {
				$("#c1").slideDown(1000);
			}
		})

		$("#2").change(function() {
			var f = $("#2").prop("checked");
			console.log(f);
			if (f) {
				$("#c2").slideUp(1000);
			} else {
				$("#c2").slideDown(1000);
			}
		})

		$("#3").change(function() {
			var f = $("#3").prop("checked");
			console.log(f);
			if (f) {
				$("#c3").slideUp(1000);
			} else {
				$("#c3").slideDown(1000);
			}
		})

		$("#submit").click(
				function() {
					if ($("#3").prop("checked") && $("#1").prop("checked")
							&& $("#2").prop("checked")) {
						location.href="/index/join";
					} else {
						$("#checkFail").fadeIn(1000);

					}
				})
	</script>


</body>
</html>

