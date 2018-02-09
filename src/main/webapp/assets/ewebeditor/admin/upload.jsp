<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="eWebEditor" class="ewebeditor.admin.upload_jsp" scope="page"/>
<%
eWebEditor.Load(pageContext);
%>
