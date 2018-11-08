<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="top.jsp" %>
<div align="right" style="width: 100%;">
	<a href="write.woong"><input type="button" class="input_write" value="글쓰기"></a>
</div>
<br>
<div class="woong_box">
	<table>
		<tr>
			<th width="5%" >#</th>
			<th width="40%">약속</th>
			<th width="15%">신청자</th>
			<th width="20%">시작일</th>
			<th width="20%">종료일</th>
		</tr>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="5" align="center">
					등록된 약속이 없습니다.
				</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${ list }">
		<tr>
			<td align="center">${ dto.no }</td>
			<td>${ dto.title }</td>
			<td align="center">${ dto.applicant }</td>
			<td align="center">${ dto.startdate }</td>
			<td align="center">${ dto.enddate }</td>
		</tr>
		</c:forEach>
	</table>
</div>
<%@ include file="bottom.jsp" %>