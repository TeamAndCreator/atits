<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.util.regex.*" %>

<HTML>
<HEAD>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<TITLE>eWebEditor ： 分页显示处理示例</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<link rel='stylesheet' type='text/css' href='example.css'>
</HEAD>
<BODY>

<p><b>导航 ： <a href="default.jsp">示例首页</a> &gt; 分页显示处理示例</b></p>
<p>此例演示了eWebEditor的标准分页模式下，程序对标准分页符的处理方法。您可以查看此页程序源代码，以了解标准分页符结构及使用方法。</p>


<%
// eWebEditor 标准分页符格式定义：
// -------------------------------------------------------------------
// <!--ewebeditor:page title="第N页小标题"-->
// 第N页正文HTML代码
// <!--/ewebeditor:page-->
// -------------------------------------------------------------------





// sContent变量：所编辑的内容，一般是从数据库中取出，以下为模拟数据
// sContent = rs("field")
String sContent = "<!--ewebeditor:page title=\"第一页小标题\"-->\r\n" +
           "<style>\r\n" +
		   ".p1{font-size:14px;color:#000000;}\r\n" +
		   ".p2{font-size:16px;color:#ff0000;}\r\n" +
		   ".p3{font-size:18px;color:#0000ff;}\r\n" +
		   "</style>\r\n" +
           "<p class=p1>第一页正文</p>\r\n" +
           "<!--/ewebeditor:page-->\r\n" +
		   "<!--ewebeditor:page title=\"第二页小标题\"-->\r\n" +
           "<p class=p2>第二页正文</p>\r\n" +
           "<!--/ewebeditor:page-->\r\n" +
		   "<!--ewebeditor:page title=\"第三页小标题\"-->\r\n" +
           "<p class=p3>第三页正文</p>\r\n" +
           "<!--/ewebeditor:page-->";
// sContent = "<p>只有一页！</p>"




String sPage = dealNull(request.getParameter("page"));
String[] arr = eWebEditorPagination(sContent, sPage);
String sOutputContent = arr[1];
String sOutputTitles = arr[2];

// 显示标题列表及分页链接
if (!sOutputTitles.equals("")){
	out.print("<hr size=1>");
	out.print(sOutputTitles);
}

// 显示正文
out.print("<hr size=1>");
out.print(sOutputContent);

%>

</BODY>
</HTML>

<%!

// eWebEditor 标准分页符格式定义：
// -------------------------------------------------------------------
// <!--ewebeditor:page title="第N页小标题"-->
// 第N页正文HTML代码
// <!--/ewebeditor:page-->
// -------------------------------------------------------------------
// eWebEditor标准分页符分析处理函数示列, 可依实际需要修改, 返回多值数组
// -------------------------------------------------------------------
static String[] eWebEditorPagination(String s_Content, String s_CurrPage){
	// 小标题列表，当前页标题，当前页内容
	String s_Titles = "";
	String s_CurrTitle = "";
	String s_CurrContent = s_Content;

	// 页数：0表示没有分页
	int n_PageCount = 0;

	// 当前页
	int n_CurrPage = 1;

	// 当有分页时，存分页正文和标题的数组，下标从1开始
	ArrayList a_PageContent = new ArrayList();
	ArrayList a_PageTitle = new ArrayList();
	a_PageContent.add("");
	a_PageTitle.add("");


	// 正则表达式对象
	Pattern p;
	Matcher m;
	int flags = Pattern.CASE_INSENSITIVE | Pattern.DOTALL;

	// 分离出内容中的CSS样式部分，然后在各页中合并，使各分页的显示效果不变
	// <style>...</style>
	String s_Style = "";
	p = Pattern.compile("<style[^>]*>([\\s\\S]+?)</style>", flags);
	m = p.matcher(s_CurrContent);
	while (m.find()){
		s_Style = "\r\n" + s_Style + m.group() + "\r\n";
	}
	if (!s_Style.equals("")){
		s_CurrContent = m.replaceAll("");
	}

	// 使用正则表达式对分页进行处理
	p = Pattern.compile("<!--ewebeditor:page title=\"([^\"]*)\"-->([\\s\\S]+?)<!--/ewebeditor:page-->", flags);
	m = p.matcher(s_CurrContent);
	while (m.find()){
		n_PageCount = n_PageCount + 1;
		a_PageTitle.add(m.group(1));
		a_PageContent.add(m.group(2));
	}

	if (n_PageCount == 0){
		// 没有分页
		s_Titles = "";
		s_CurrContent = s_Content;
	}else{
		// 有分页
		// 从参数判断当前页的有效性
		if (!IsInt(s_CurrPage)){
			n_CurrPage = 1;
		}else{
			n_CurrPage = Integer.parseInt(s_CurrPage);
			if (n_CurrPage < 1 || n_CurrPage > n_PageCount){
				n_CurrPage = 1;
			}
		}

		// 当有多个页时，显示分页小标题及分页链接
		s_Titles = "";
		for (int i=1; i<=n_PageCount; i++) {
			if (i == n_CurrPage){
				s_Titles = s_Titles + "<li>" + i + ") " + a_PageTitle.get(i).toString() + "";
			}else{
				s_Titles = s_Titles + "<li><a href='?page=" + i + "'>" + i + ") " + a_PageTitle.get(i).toString() + "</a>";
			}
		}

		// 当前页标题和内容
		s_CurrTitle = a_PageTitle.get(n_CurrPage).toString();
		s_CurrContent = s_Style + a_PageContent.get(n_CurrPage).toString();
	}

	// 返回值数组，依实际需要修改
	String[] ret = new String[4];
	ret[1] = s_CurrContent;		//当前页内容
	ret[2] = s_Titles;			//标题列表
	ret[3] = s_CurrTitle;		//当前页标题

	return ret;
}


static String dealNull(String str) {
	String returnstr = null;
	if (str == null) {
		returnstr = "";
	} else {
		returnstr = str;
	}
	return returnstr;
}

static Object dealNull(Object obj) {
	Object returnstr = null;
	if (obj == null){
		returnstr = (Object) ("");
	}else{
		returnstr = obj;
	}
	return returnstr;
}

static boolean IsInt(String str){
	if (str.equals("")){
		return false;
	}

	Pattern p = Pattern.compile("[^0-9]+");
	Matcher m = p.matcher(str);
	if (m.matches()){
		return false;
	}

	return true;
}

%>
