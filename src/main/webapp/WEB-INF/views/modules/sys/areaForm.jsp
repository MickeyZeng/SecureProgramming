<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<%--	<title>区域管理</title>--%>
	<title>Area Management</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					// loading('Loading.....');
					loading('Uploading，Hold on...');

					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					// $("#messageBox").text("输入有误，请先更正。");
					$("#messageBox").text("There is something wrong, please modified it!");
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
<%--		<li><a href="${ctx}/sys/area/">区域列表</a></li>--%>
		<li><a href="${ctx}/sys/area/">Area List</a></li>
<%--		<li class="active"><a href="form?id=${area.id}&parent.id=${area.parent.id}">区域<shiro:hasPermission name="sys:area:edit">${not empty area.id?'update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="sys:area:edit">查看</shiro:lacksPermission></a></li>--%>
		<li class="active"><a href="form?id=${area.id}&parent.id=${area.parent.id}">Area<shiro:hasPermission name="sys:area:edit">${not empty area.id?'Edit':'Add'}</shiro:hasPermission><shiro:lacksPermission name="sys:area:edit">Read</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="area" action="${ctx}/sys/area/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<div class="control-group">
<%--			<label class="control-label">上级区域:</label>--%>
			<label class="control-label">Parent Area:</label>
			<div class="controls">
<%--				<sys:treeselect id="area" name="parent.id" value="${area.parent.id}" labelName="parent.name" labelValue="${area.parent.name}"--%>
<%--					title="区域" url="/sys/area/treeData" extId="${area.id}" cssClass="" allowClear="true"/>--%>
				<sys:treeselect id="area" name="parent.id" value="${area.parent.id}" labelName="parent.name" labelValue="${area.parent.name}"
								title="Area" url="/sys/area/treeData" extId="${area.id}" cssClass="" allowClear="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Area Name:</label>
<%--			<label class="control-label">区域名称:</label>--%>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="50" class="required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Area Code:</label>
<%--			<label class="control-label">区域编码:</label>--%>
			<div class="controls">
				<form:input path="code" htmlEscape="false" maxlength="50"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Area Type:</label>
<%--			<label class="control-label">区域类型:</label>--%>
			<div class="controls">
				<form:select path="type" class="input-medium">
					<form:options items="${fns:getDictList('sys_area_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Comment:</label>
<%--			<label class="control-label">备注:</label>--%>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xlarge"/>
			</div>
		</div>
		<div class="form-actions">
<%--			<shiro:hasPermission name="sys:area:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>--%>
<%--			<input id="btnCancel" class="btn" type="button" value="Back" onclick="history.go(-1)"/>--%>
			<shiro:hasPermission name="sys:area:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="Save"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="Return" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>