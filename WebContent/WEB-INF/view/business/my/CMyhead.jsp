<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<header class="w3-container" style="padding-top:22px" id="myHead">
	<c:choose>
		<c:when test="${initviewCdata.vpd.postSort == 'ok' }">
			<h5>
				<b><i class="fa fa-home"></i> 최신 공고 :
					${initviewCdata.vpd.viewpd.TITLE }</b>
			</h5>
		</c:when>
		<c:otherwise>
			<h5>아직 구인공고를 올리지 않으셨습니다.</h5>
		</c:otherwise>
	</c:choose>

	<div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
        <div class="w3-right">
        	<c:choose>
		<c:when test="${initviewCdata.cNewMassage != 0 }">
				<h3>${initviewCdata.cNewMassage }</h3>
		</c:when>
		<c:otherwise>
			&nbsp;
		</c:otherwise>
	</c:choose>
			 
        </div>
        <div class="w3-clear"></div>
        <h4>Messages</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>${initviewCdata.vpd.views }</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Views</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-file w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>${initviewCdata.vpd.clips }</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Clips</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>${initviewCdata.vpd.workers }</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Workers</h4>
      </div>
    </div>
  </div>
 </header>
 </html>