<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp" %>
<div class="paper">
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
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea"></textarea>
		</tr>
		<tr>
			<th class="paper_th">��� �̷�</th>
			<td colspan="3" class="paper_td"><textarea rows="3" style="width: 100%;" class="woong_textarea"></textarea>
		</tr>
		<tr>
			<th class="paper_th">��� ����</th>
			<td colspan="3" class="paper_td">
				����: <input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">��
				<br><br>
				����: <input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">�� 
				<input type="text" style="width: 30px;">��
			</td>
		</tr>
	</table><br><br>
	<div style="width: 250px; height: 200px;">
		<table class="cal_table" id="tab">
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