<%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="eWebEditor" class="ewebeditor.server.upload_jsp" scope="page"/>

<%
eWebEditor.Load(pageContext);
%>