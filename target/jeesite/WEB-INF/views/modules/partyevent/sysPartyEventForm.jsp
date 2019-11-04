<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Party-event Manage</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('Loading.....');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/partyevent/sysPartyEvent/">Party-event List</a></li>
		<li class="active"><a href="${ctx}/partyevent/sysPartyEvent/form?id=${sysPartyEvent.id}">Party-event<shiro:hasPermission name="partyevent:sysPartyEvent:edit">${not empty sysPartyEvent.id?'update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="partyevent:sysPartyEvent:edit">Check</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="sysPartyEvent" action="${ctx}/partyevent/sysPartyEvent/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">party ID：</label>
			<div class="controls">
				<form:input path="partyid" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Event ID：</label>
			<div class="controls">
				<form:input path="eventid" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Recomment：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="partyevent:sysPartyEvent:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="Back" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>