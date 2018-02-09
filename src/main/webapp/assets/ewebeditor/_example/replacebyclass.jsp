﻿<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>eWebEditor ： 用样式类名把文本框自动替换为编辑器</title>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<script type="text/javascript" src="../ewebeditor.js"></script>
<link rel='stylesheet' type='text/css' href='example.css'>

<script type="text/javascript">
//您可以使用下面的属性来设置处理方式
//EWEBEDITOR.ReplaceByClassName = "ewebeditor";		//指定使用的类型，默认是"ewebeditor"
//EWEBEDITOR.ReplaceByClassEnabled = false;			//指定是否启用此功能，默认是启用
</script>

</head>
<body>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; 用样式类名把文本框自动替换为编辑器</b></p>
<p>此例演示了您可以通过样式类名很简单的把&lt;textarea&gt;替换为eWebEditor编辑器实例。如下代码所示，您只需要给&lt;textarea&gt;加个指定的class即可。您可以指定自己想用的样式类名。详细使用方法，请参看本页源文件代码中说明或用户手册。</p>
<div class=code>&lt;textarea class=&quot;ewebeditor&quot; name=&quot;content1&quot;&gt;&lt;/textarea&gt;</div>


<form action="retrieve.jsp" method="post">
<p><b>示例1：</b></p>
<textarea class="ewebeditor" name="content1" rows="10" cols="80">&lt;p&gt;这是&lt;strong&gt;示例1&lt;/strong&gt;。 您正在使用 &lt;a href=&quot;http://www.ewebeditor.net/&quot;&gt;eWebEditor&lt;/a&gt;.&lt;/p&gt;</textarea>

<p><b>示例2：</b></p>
<textarea class="ewebeditor" name="content2" rows="10" cols="80">&lt;p&gt;这是&lt;strong&gt;示例2&lt;/strong&gt;。 您正在使用 &lt;a href=&quot;http://www.ewebeditor.net/&quot;&gt;eWebEditor&lt;/a&gt;.&lt;/p&gt;</textarea>


<p>
	<input type="submit" value="提交" />
</p>
</form>

</body>
</html>