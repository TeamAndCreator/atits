﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<HTML>
<HEAD>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<TITLE>eWebEditor ： 客户端API示例</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; 客户端API示例</b></p>
<p>您可以用eWebEditor提供的客户端API，对编辑器执行高级操作。更多API，请参见开发手册。</p>



<FORM method="post" name="myform" action="retrieve.jsp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>编辑内容：</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="&lt;p&gt;eWebEditor - 在线HTML编辑器，HTML在线编辑好帮手&lt;/p&gt;">
		<IFRAME ID="eWebEditor1" src="../ewebeditor.htm?id=content1&style=coolblue" frameborder="0" scrolling="no" width="550" height="350"></IFRAME>
	</TD>
</TR>
<TR>
	<TD colspan=2 align=right>
	<INPUT type=submit value="提交"> 
	<INPUT type=reset value="重填"> 
	<INPUT type=button value="查看源文件" onclick="location.replace('view-source:'+location)"> 
	</TD>
</TR>
<TR>
	<TD>HTML代码：</TD>
	<TD><TEXTAREA cols=50 rows=5 id=myTextArea style="width:550px">点击“取值”按钮，看一下效果！</TEXTAREA></TD>
</TR>
<TR>
	<TD colspan=2 align=right>

<script type="text/javascript">
function DoAPI(s_Flag){
	var o_Editor = document.getElementById("eWebEditor1").contentWindow;
	var o_Text = document.getElementById("myTextArea");
	switch(s_Flag){
	case "gethtml":
		o_Text.value = o_Editor.getHTML();
		break;
	case "gettext":
		o_Text.value = o_Editor.getText();
		break;
	case "sethtml":
		o_Editor.setHTML("<b>Hello My World!</b>");
		break;
	case "inserthtml":
		o_Editor.insertHTML("This is insertHTML function!");
		break;
	case "appendhtml":
		o_Editor.appendHTML("This is appendHTML function!");
		break;
	case "code":
		o_Editor.setMode("CODE");
		break;
	case "edit":
		o_Editor.setMode("EDIT");
		break;
	case "text":
		o_Editor.setMode("TEXT");
		break;
	case "view":
		o_Editor.setMode("VIEW");
		break;
	case "getcount0":
		alert(o_Editor.getCount(0));
		break;
	case "getcount1":
		alert(o_Editor.getCount(1));
		break;
	case "getcount2":
		alert(o_Editor.getCount(2));
		break;
	case "getcount3":
		alert(o_Editor.getCount(3));
		break;
	case "readonly1":
		o_Editor.setReadOnly("1");
		break;
	case "readonly2":
		o_Editor.setReadOnly("2");
		break;
	case "readonly0":
		o_Editor.setReadOnly("");
		break;

	}

}

</script>

		<INPUT type=button value="取值(HTML)" onclick="DoAPI('gethtml')" class=btn> 
		<INPUT type=button value="取值(纯文本)" onclick="DoAPI('gettext')" class=btn> 
		<INPUT type=button value="赋值" onclick="DoAPI('sethtml')" class=btn>
		<INPUT type=button value="当前位置插入" onclick="DoAPI('inserthtml')" class=btn>
		<INPUT type=button value="尾部追加" onclick="DoAPI('appendhtml')" class=btn>
		<br>
		<INPUT type=button value="代码状态" onclick="DoAPI('code')" class=btn>
		<INPUT type=button value="设计状态" onclick="DoAPI('edit')" class=btn>
		<INPUT type=button value="文本状态" onclick="DoAPI('text')" class=btn>
		<INPUT type=button value="预览状态" onclick="DoAPI('view')" class=btn>
		<br>
		<INPUT type=button value="英文字数" onclick="DoAPI('getcount0')" class=btn>
		<INPUT type=button value="中文字数" onclick="DoAPI('getcount1')" class=btn>
		<INPUT type=button value="中英文字数(中文加1)" onclick="DoAPI('getcount2')" class=btn>
		<INPUT type=button value="中英文字数(中文加2)" onclick="DoAPI('getcount3')" class=btn>	
		<br>
		<INPUT type=button value="只读[模式1]" onclick="DoAPI('readonly1')" class=btn>
		<INPUT type=button value="只读[模式2]" onclick="DoAPI('readonly2')" class=btn>
		<INPUT type=button value="取消只读" onclick="DoAPI('readonly0')" class=btn>

	</TD>
</TR>
</TABLE>
</FORM>


</BODY>
</HTML>