<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp" %>
<div class="paper">
	<table>
		<tr>
			<th>신청자</th>
			<td><input type="text" name="applicant"></td>
			<th>생년월일</th>
			<td><input type="text" name="birth"></td>
		</tr>
		<tr>
			<th>성별</th>
			<td></td>
			<th>이메일</th>
			<td><input type="text" name="email">
		</tr>
	</table>
</div>
<%@ include file="bottom.jsp" %>