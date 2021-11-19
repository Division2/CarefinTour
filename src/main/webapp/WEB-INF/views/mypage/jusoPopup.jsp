<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
	request.setCharacterEncoding("UTF-8");
	String inputYn = request.getParameter("inputYn"); 
	String roadFullAddr = request.getParameter("roadFullAddr"); 
%>
</head>
<script>
	function init(){
		var url = location.href;
		var confmKey = "devU01TX0FVVEgyMDIxMTExOTE0MDkzNjExMTkxMjQ=";
		var resultType = "4";
		var inputYn= "<%=inputYn%>";
		
		if(inputYn != "Y"){
			document.MemberUpdate.confmKey.value = confmKey;
			document.MemberUpdate.returnUrl.value = url;
			document.MemberUpdate.resultType.value = resultType;
			document.MemberUpdate.action="https://www.juso.go.kr/addrlink/addrLinkUrl.do";
			document.MemberUpdate.submit();
		}
		else {
			opener.jusoCallBack2("<%=roadFullAddr%>");
			window.close();
		}
	}
</script>

<body onload="init();">
	<form id="MemberUpdate" name="MemberUpdate" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value=""/>
	</form>
</body>
</html>