<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp" %>
<div class="paper">
<form name="f" action="write_pro.woong" method="post">
	<table>
		<tr>
			<th class="paper_th">��û��</th>
			<td class="paper_td"><input type="text" name="applicant"></td>
			<th class="paper_th">�������</th>
			<td class="paper_td"><input type="text" name="birth"></td>
		</tr>
		<tr>
			<th class="paper_th">����</th>
			<td class="paper_td">
				<input type="radio" name="gender" value="male">����
				<input type="radio" name="gender" value="female">����
			</td>
			<th class="paper_th">�̸���</th>
			<td class="paper_td"><input type="text" name="email">
		</tr>
		<tr>
			<th class="paper_th">������</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="participant"></textarea>
		</tr>
		<tr>
			<th class="paper_th">��� �̷�</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="appointment"></textarea>
		</tr>
		<tr>
			<th class="paper_th">��� ����</th>
			<td colspan="3" class="paper_td">
				����: <input type="text" name="start_year" style="width: 30px;">�� 
				<input type="text" name="start_month" style="width: 30px;">�� 
				<input type="text" name="start_day" style="width: 30px;">�� 
				<input type="text" name="start_hour" style="width: 30px;">�� 
				<input type="text" name="start_minute" style="width: 30px;">��
				<br><br>
				����: <input type="text" name="end_year" style="width: 30px;">�� 
				<input type="text" name="end_month" style="width: 30px;">�� 
				<input type="text" name="end_day" style="width: 30px;">�� 
				<input type="text" name="end_hour" style="width: 30px;">�� 
				<input type="text" name="end_minute" style="width: 30px;">��
			</td>
		</tr>
		<tr>
			<th class="paper_th">��� ��û ����</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="motive"></textarea>
		</tr>
		<tr>
			<th class="paper_th">����� ���� �������̰� ��� �̵�</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea" name="benefit"></textarea>
		</tr>
		<tr>
			<td class="paper_td" colspan="4" align="right">
				<input type="submit" value="����">
			</td>
		</tr>
	</table>
	</form>
	<br><br>
		<table class="cal_table" id="tab" hidden="true">
	        <tr>
	            <td align="center" id="prev" class="cal_td">
	            	<input type="button" value="��" onclick="prevMonth()">
	            </td>
	            <td colspan="5" align="center" id="ymd" class="cal_td"></td>
	            <td align="center" id="next" class="cal_td">
	            	<input type="button" value="��" onclick="nextMonth()">
	            </td>
	        </tr>
	        
	        <tr align="center">
	            <td align="center" class="cal_td">��</td>
	            <td align="center" class="cal_td">��</td>
	            <td align="center" class="cal_td">ȭ</td>
	            <td align="center" class="cal_td">��</td>
	            <td align="center" class="cal_td">��</td>
	            <td align="center" class="cal_td">��</td>
	            <td align="center" class="cal_td">��</td>
	        </tr>
	    </table>
    </div>
</div>

<script type="text/javascript">
	present()
</script>
<%@ include file="bottom.jsp" %>