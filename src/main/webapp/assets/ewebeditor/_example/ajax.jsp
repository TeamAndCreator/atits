﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>eWebEditor ： Ajax应用之创建和删除编辑器实例</title>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<script type="text/javascript" src="../ewebeditor.js"></script>
<link rel='stylesheet' type='text/css' href='example.css'>


<script type="text/javascript">
var editor, html;
function CreateEditor(){
	if (editor){return;}

	//在 <div id="div_editor1"> 中创建一个编辑器实例，并设置她的初始值为 html。
	editor = EWEBEDITOR.Append("div_editor1", {style:"coolblue",width:"550",height:"350"}, html);
}

function RemoveEditor(){
	if (!editor){return;}

	//接收编辑器的内容。在一个Ajax应用中，可以把数据发到服务器上，或用于其它您需要的地方。
	//您也可以用 var editor=EWEBEDITOR.Instances["div_editor1"]; 来访问已创建编辑器的接口对象。
	document.getElementById("div_content1").innerHTML = html = editor.getHTML();

	//删除编辑器
	editor.Remove();
	editor = null;
}
</script>

</head>
<body>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; Ajax应用之创建和删除编辑器实例</b></p>
<p>此例演示了如何创建和删除 eWebEditor 编辑器实例。编辑器删除后，您所编辑的内容将显示在一个 &lt;div&gt; 中。关于详细的使用方法，请参看这页的源文件。</p>
<p>操作说明：点击“创建”按钮创建一个 eWebEditor 实例，在编辑器中输入一些内容，然后点击“删除”按钮，所编辑的内容将显示在一个 &lt;div&gt; 中。</p>

<p>
	<input type="button" value="创建编辑器" onclick="CreateEditor()">
	<input type="button" value="删除编辑器" onclick="RemoveEditor()">
</p>

<!-- 编辑器将插入这个div中. -->
<div id="div_editor1"></div>

<!-- 显示编辑的内容. -->
<hr>
<p><b>编辑的内容：</b></p>
<div id="div_content1"></div>

</body>
</html>