<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link data-turbolinks-track="true" href="/css/gf_bar.css" media="all" rel="stylesheet" />
<!DOCTYPE html>
<html>
<title>rank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>
	<div style="margin: 30px">
	<h3>* 개의 검색 결과</h3>
	
	<div align="right">
	<form>
		 	<select>
				<option>복지 및 급여 순</option>
				<option>승진 기회 및 가능성 순</option>
				<option>업무와 삶의 균형 순</option>
				<option>사내문화 순</option>
			</select>
	</form>
	</div>

	
				<div class="w3-container">
					<h2>복지 및 급여 순</h2>
					 
				</div>

				<div class="w3-row w3-border">
					<div class="w3-third w3-container ">
						<div align="center">
						<h1>1 .  <img src="/img/logoB.png"/ height="30px" style="margin-top: 5px"></h1>
						</div>
						
					</div>
					<div class="w3-third w3-container" align="center" style="height: auto; margin-top: 5px ">
						<b>(주)JOBs</b> <br/>
						<p>취업 컨설팅 | 서울 </p>
						
					</div>
					<div class="w3-third w3-container">
						<dl class="content_col2_4">
                                <dt>총 만족도 순</dt>
                                <dd class="gf_row">
                                        <div class="us_star_m">
                                            <div class="star_score" style="width: ${sc/5*100}%">평점</div>
                                        </div>
                                        <span class="gfvalue">${sc}</span>
                                </dd>
                                <dd>
                                    <a href="/companies/90364/salaries/%ED%8E%98%EC%9D%B4%EC%8A%A4%EB%B6%81%EC%BD%94%EB%A6%AC%EC%95%84?" class="us_stxt_1">평균 <strong class='notranslate'>14,001</strong> 만원</a>
                                </dd>
                            </dl>
				</div>
				
				
	</div>
</body>
</html>
