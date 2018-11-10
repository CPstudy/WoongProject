function changeColor() {
	var color = ["#FF0000", "#00FF00", "#0000FF","#000FFF","#00F0FF","#0F00FF","#F000FF","#F002FF","#F110FF"]
	var title = document.getElementById("body")
	var i = 0
	
	setInterval(function() {
		title.style.color = color[i]
		i = (i + 1) % color.length
	}, 50);
}

var today = new Date()
var year = today.getFullYear()
var month = today.getMonth()
var day = today.getDay()

month += 1

function dayy(year, month) {
	//���� �� ���� ����
	switch(month) {
	case 1: case 3: case 5: case 7: case 8: case 10: case 12:
		return 31
		
	case 4: case 6: case 9: case 11:
		return 30
		
	case 2:
		if(((year % 400) == 0 || (year % 4) == 0 && (year % 100) != 0)) {
			return 29
		} else {
			return 28
		}
	}
}

function prevMonth() {
	//���� ���� ���� �Լ�
	var ymda = document.getElementById("prev")
	var yg = document.getElementById("ymd")
	
	month--;	//month�� ��� ���ҽ����ش�
	
	if(month < 1) {		//month�� 1���� �۾�����
		month = 12		//month�� 12�� ����� ��
		year -= 1		//year�� 1 ���ҽ����ش�
	}
	
	if(year < 1970) {	//1970�� ������ �������� ����
		alert("�����")
		for(var i = 1; i < 100; i--) {
			window.top.moveTo(i, i *= -1)
		}
	}
	
	var ymda = year + "��" + (month) + "��"
	present()
}

function nextMonth() {
	//���� ���� ���� �Լ�
	var ymda = document.getElementById("next")
	var yg = document.getElementById("ymd")
	
	month++	//month�� ��� ����������
	
	if(month > 12) {	//���� month�� 12�� �Ѿ��
		month = 1		//month�� 1�� ����
		year += 1		//year�� 1 ���������ش�
	}
	
	var ymda = year + "��" + month + "��"
	
	present()
}

function present() {
	var start = new Date(year, month - 1, 1)
	var ymda = document.getElementById("ymd")
	var tab = document.getElementById("tab")
	
	var row = null
	var cnt = 0
	
	var ym = year + "��" + (month) + "��"
	
	ymda.innerHTML = ym
	
	while(tab.rows.length > 2) {
		//���̺� ���� ���̰� 2���� ũ�� ���̺��� �� ����
		tab.deleteRow(tab.rows.length - 1)
	}
	
	row = tab.insertRow()
	
	for(var j = 0; j < start.getDay(); j++) {
		//�޷��� ���� ���� ����
		cell = row.insertCell()
		cell.setAttribute("class", "cal_td")
		cell.setAttribute("align", "center")
		cnt += 1
	}
	
	for(var i = 0; i < dayy(year, month); i++) {
		//�޷� �ϼ���ŭ �����
		cell = row.insertCell()
		cell.setAttribute("class", "cal_td")
		cell.setAttribute("align", "center")
		cell.innerHTML = i + 1
		cnt += 1
		
		if(cnt % 7 == 0) {
			//cnt�� 7�̸� ���� �÷���
			row = tab.insertRow()
		}
	}
}