<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp" %>
<div class="paper">
<form name="f" action="write_pro.woong" method="post">
	<table>
		<tr>
			<th class="paper_th">신청자</th>
			<td class="paper_td"><input type="text" name="applicant"></td>
			<th class="paper_th">생년월일</th>
			<td class="paper_td"><input type="text" name="birth"></td>
		</tr>
		<tr>
			<th class="paper_th">성별</th>
			<td class="paper_td">
				<input type="radio" name="gender" value="male">남자
				<input type="radio" name="gender" value="female">여자
			</td>
			<th class="paper_th">이메일</th>
			<td class="paper_td"><input type="text" name="email">
		</tr>
		<tr>
			<th class="paper_th">참여자</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="participant"></textarea>
		</tr>
		<tr>
			<th class="paper_th">약속 이력</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="appointment"></textarea>
		</tr>
		<tr>
			<th class="paper_th">약속 일정</th>
			<td colspan="3" class="paper_td">
				시작: <input type="text" name="start_year" style="width: 30px;">년 
				<input type="text" name="start_month" style="width: 30px;">월 
				<input type="text" name="start_day" style="width: 30px;">일 
				<input type="text" name="start_hour" style="width: 30px;">시 
				<input type="text" name="start_minute" style="width: 30px;">분
				<br><br>
				종료: <input type="text" name="end_year" style="width: 30px;">년 
				<input type="text" name="end_month" style="width: 30px;">월 
				<input type="text" name="end_day" style="width: 30px;">일 
				<input type="text" name="end_hour" style="width: 30px;">시 
				<input type="text" name="end_minute" style="width: 30px;">분
			</td>
		</tr>
		<tr>
			<th class="paper_th">약속 신청 동기</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="motive"></textarea>
		</tr>
		<tr>
			<th class="paper_th">약속을 통해 허혜웅이가 얻는 이득</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="benefit"></textarea>
		</tr>
		<tr>
			<td class="paper_td" colspan="4" align="right">
				<input type="submit" value="제출">
			</td>
		</tr>
	</table>
	</form>
	<br><br>
		<table class="cal_table" id="tab" hidden="true">
	        <tr>
	            <td align="center" id="prev" class="cal_td">
	            	<input type="button" value="◀" onclick="prevMonth()">
	            </td>
	            <td colspan="5" align="center" id="ymd" class="cal_td"></td>
	            <td align="center" id="next" class="cal_td">
	            	<input type="button" value="▶" onclick="nextMonth()">
	            </td>
	        </tr>
	        
	        <tr align="center">
	            <td align="center" class="cal_td">일</td>
	            <td align="center" class="cal_td">월</td>
	            <td align="center" class="cal_td">화</td>
	            <td align="center" class="cal_td">수</td>
	            <td align="center" class="cal_td">목</td>
	            <td align="center" class="cal_td">금</td>
	            <td align="center" class="cal_td">토</td>
	        </tr>
	    </table>
    </div>
</div>

<script type="text/javascript">
	present()
</script>
<%@ include file="bottom.jsp" %>