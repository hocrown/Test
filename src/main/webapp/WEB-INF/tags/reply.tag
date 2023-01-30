<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ tag body-content="empty" %>
<%@ attribute name="replynum" type="java.lang.Integer"%>
<%
if(replynum==0){
	out.print("");	// 메인 글임을 나타냄
} else {
	out.print("└"); // 답변글임을 나타냄
}
%>