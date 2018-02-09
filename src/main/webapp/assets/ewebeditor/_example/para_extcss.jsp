﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<HTML>
<HEAD>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<TITLE>eWebEditor ： 外部样式引用接口示例</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; 外部样式引用接口示例</b></p>
<p>通过使用外部样式参数接口，你可以指定编辑区的样式。</p>
<p>常用于把编辑区的样式设置为与你的应用系统相同的CSS样式文件，这样保证了编辑器中显示的效果与您的应用系统中输出显示的效果完全相同。</p>
<p>下面的例子，指定extcss=_example/myeditorarea.css，你可以在编辑区中输入一些文字看看，表现效果与myeditorarea.css中定义的是相同的。</p>
<p>示例样式文件中，默认字体为红色，把段落的边距设为0，使得输入“回车”，与输入“Shift+回车”的效果一样。</p>


<FORM method="post" name="myform" action="retrieve.jsp">
<TABLE border="0" cellpadding="2" cellspacing="1">
<TR>
	<TD>编辑内容：</TD>
	<TD>
		<INPUT type="hidden" name="content1" value="&lt;p&gt;&nbsp;&lt;/p&gt;">
		<IFRAME ID="eWebEditor1" src="../ewebeditor.htm?id=content1&style=coolblue&extcss=_example/myeditorarea.css" frameborder="0" scrolling="no" width="550" height="350"></IFRAME>
	</TD>
</TR>
<TR>
	<TD colspan=2 align=right>
	<INPUT type=submit value="提交"> 
	<INPUT type=reset value="重填"> 
	<INPUT type=button value="查看源文件" onclick="location.replace('view-source:'+location)"> 
	</TD>
</TR>
</TABLE>
</FORM>


</BODY>
</HTML>