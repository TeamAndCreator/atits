﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>eWebEditor ： 用Javascript把文本框或DIV替换为编辑器</title>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<script type="text/javascript" src="../ewebeditor.js"></script>
<link rel='stylesheet' type='text/css' href='example.css'>

<script type="text/javascript">
// 函数：EWEBEDITOR.Replace(s_Id, o_Config)
// 参数：s_Id     : 字符型，要替换的Textarea的id或name, Div的id
//       o_Config : 对象型，指定编辑器配置，可选参数。如未设置则按默认 style=coolblue,width=100%,height=350


//删除编辑器
function RemoveEditor(){
	if (!EWEBEDITOR.Instances["content1"]){return;}

	EWEBEDITOR.Instances["content1"].Remove();
	EWEBEDITOR.Instances["div1"].Remove();
}

//替换编辑器
function ReplaceEditor(){
	if (EWEBEDITOR.Instances["content1"]){return;}

	EWEBEDITOR.Replace("content1", {style:"coolblue",width:"550",height:"300"} );
	EWEBEDITOR.Replace("div1");
}
</script>

</head>
<body>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; 用Javascript把文本框或DIV替换为编辑器</b></p>
<p>此例演示了如何用Javascript代码把 &lt;TEXTAREA&gt; 或 &lt;INPUT&gt; 或 &lt;DIV&gt; 替换为 eWebEditor 编辑器实例。仅仅需要如下一行简单代码，您就可实现文本框到编辑器的转换。详细使用方法，请参看本页源文件代码中说明或用户手册。</p>
<div class=code>EWEBEDITOR.Replace(&quot;TextareaOrInputOrDiv_id&quot;);</div>
<p>示例操作说明：当页面载入时，可以看到有两个编辑器，其实在代码中，一个是&ltTEXTAREA&gt;，一个是&lt;DIV&gt;，是载入时用Javascript代码替换的。您可以点击“删除”按钮，看原样。点击“替换”按钮回编辑器界面。同时，当删除时，您在编辑器中编辑的内容将返回到原对象中。</p>

<p>
	<input type="button" value="删除编辑器" onclick="RemoveEditor()">
	<input type="button" value="替换编辑器" onclick="ReplaceEditor()">
</p>

<p><b>示例1：</b>替换&lt;TEXTAREA&gt;，指定编辑器配置(style=coolblue,width=550,height=300)</p>
<textarea cols="80" name="content1" rows="10">&lt;p&gt;这是&lt;strong&gt;替换TEXTAREA&lt;/strong&gt;。 您正在使用 &lt;a href=&quot;http://www.ewebeditor.net/&quot;&gt;eWebEditor&lt;/a&gt;.&lt;/p&gt;</textarea>
<script type="text/javascript">
	// 您也可以在 window.onload 事件中处理
	// 替换 <textarea id="content1"> 或 <textarea name="content1"> 为编辑器实例
	EWEBEDITOR.Replace("content1", {style:"coolblue",width:"550",height:"300"} );
</script>

<p><b>示例2：</b>替换&lt;DIV&gt;，使用默认配置(style=coolblue,width=100%,height=350)</p>
<div id="div1" rows="10"><p>这是<strong>替换DIV</strong>。 您正在使用 <a href="http://www.ewebeditor.net/">eWebEditor</a>.</p></div>
<script type="text/javascript">
	// 您也可以在 window.onload 事件中处理
	// 替换 <div id="div1"> 为编辑器实例
	EWEBEDITOR.Replace("div1");
</script>

</body>
</html>