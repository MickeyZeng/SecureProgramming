<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Manage Party</title>
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
		<li><a href="${ctx}/party/sysPartCandidate/">Party List</a></li>
		<li class="active"><a href="${ctx}/party/sysPartCandidate/form?id=${sysPartCandidate.id}">Party<shiro:hasPermission name="party:sysPartCandidate:edit">${not empty sysPartCandidate.id?'update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="party:sysPartCandidate:edit">Check</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="sysPartCandidate" action="${ctx}/party/sysPartCandidate/save" method="post" class="form-horizontal">
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
			<label class="control-label">party Name：</label>
			<div class="controls">
				<form:input path="partyname" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">party Description：</label>
			<div class="controls">
				<form:textarea path="partydescription" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge required"/>
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
			<shiro:hasPermission name="party:sysPartCandidate:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="Return" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>