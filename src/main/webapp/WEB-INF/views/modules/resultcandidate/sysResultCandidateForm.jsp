<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>resultCandidate Management</title>
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
		<li><a href="${ctx}/resultcandidate/sysResultCandidate/">resultCandidate List</a></li>
		<li class="active"><a href="${ctx}/resultcandidate/sysResultCandidate/form?id=${sysResultCandidate.id}">resultCandidate<shiro:hasPermission name="resultcandidate:sysResultCandidate:edit">${not empty sysResultCandidate.id?'update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="resultcandidate:sysResultCandidate:edit">Check</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="sysResultCandidate" action="${ctx}/resultcandidate/sysResultCandidate/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">candidate ID：</label>
			<div class="controls">
				<form:input path="candidateid" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
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
			<label class="control-label">Result：</label>
			<div class="controls">
				<form:input path="result" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
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
			<shiro:hasPermission name="resultcandidate:sysResultCandidate:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="Back" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>