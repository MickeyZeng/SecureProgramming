\<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Menu Management</title>
<%--	<title>菜单管理</title>--%>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('Submiting...Loading...');
					// loading('Loading.....');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("There is something wrong, please modified!");
					// $("#messageBox").text("输入有误，请先更正。");
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
		<li><a href="${ctx}/sys/menu/">Menu list</a></li>
<%--		<li><a href="${ctx}/sys/menu/">菜单列表</a></li>--%>
		<li class="active"><a href="${ctx}/sys/menu/form?id=${menu.id}&parent.id=${menu.parent.id}">Menu<shiro:hasPermission name="sys:menu:edit">${not empty menu.id?'Update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="sys:menu:edit">Check</shiro:lacksPermission></a></li>
<%--		<li class="active"><a href="${ctx}/sys/menu/form?id=${menu.id}&parent.id=${menu.parent.id}">菜单<shiro:hasPermission name="sys:menu:edit">${not empty menu.id?'update':'Add'}</shiro:hasPermission><shiro:lacksPermission name="sys:menu:edit">查看</shiro:lacksPermission></a></li>--%>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="menu" action="${ctx}/sys/menu/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">Menu:</label>
<%--			<label class="control-label">上级菜单:</label>--%>
			<div class="controls">
                <sys:treeselect id="menu" name="parent.id" value="${menu.parent.id}" labelName="parent.name" labelValue="${menu.parent.name}"
					title="Menu" url="/sys/menu/treeData" extId="${menu.id}" cssClass="required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Name:</label>
<%--			<label class="control-label">名称:</label>--%>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="50" class="required input-xlarge"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Link:</label>
<%--			<label class="control-label">链接:</label>--%>
			<div class="controls">
				<form:input path="href" htmlEscape="false" maxlength="2000" class="input-xxlarge"/>
				<span class="help-inline">Choose the page after clicking</span>
<%--				<span class="help-inline">点击菜单跳转的页面</span>--%>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Target:</label>
<%--			<label class="control-label">目标:</label>--%>
			<div class="controls">
				<form:input path="target" htmlEscape="false" maxlength="10" class="input-small"/>
				<span class="help-inline">The page after clicking，Default：mainFrame</span>
<%--				<span class="help-inline">链接地址打开的目标窗口，默认：mainFrame</span>--%>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Icon:</label>
<%--			<label class="control-label">图标:</label>--%>
			<div class="controls">
				<sys:iconselect id="icon" name="icon" value="${menu.icon}"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Order:</label>
<%--			<label class="control-label">排序:</label>--%>
			<div class="controls">
				<form:input path="sort" htmlEscape="false" maxlength="50" class="required digits input-small"/>
				<span class="help-inline">Upper order</span>
<%--				<span class="help-inline">排列顺序，升序。</span>--%>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">IsVisiable:</label>
<%--			<label class="control-label">可见:</label>--%>
			<div class="controls">
				<form:radiobuttons path="isShow" items="${fns:getDictList('show_hide')}" itemLabel="label" itemValue="value" htmlEscape="false" class="required"/>
				<span class="help-inline">Is it visable in the system menu</span>
<%--				<span class="help-inline">该菜单或操作是否显示到系统菜单中</span>--%>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Authentication Sign:</label>
<%--			<label class="control-label">权限标识:</label>--%>
			<div class="controls">
				<form:input path="permission" htmlEscape="false" maxlength="100" class="input-xxlarge"/>
				<span class="help-inline">Authentication sign inController，Like：@RequiresPermissions("Authenication")</span>
<%--				<span class="help-inline">控制器中定义的权限标识，如：@RequiresPermissions("权限标识")</span>--%>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Comment:</label>
<%--			<label class="control-label">备注:</label>--%>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xxlarge"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="sys:menu:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="Save"/>&nbsp;</shiro:hasPermission>
<%--			<shiro:hasPermission name="sys:menu:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>--%>
			<input id="btnCancel" class="btn" type="button" value="Return" onclick="history.go(-1)"/>
<%--			<input id="btnCancel" class="btn" type="button" value="Back" onclick="history.go(-1)"/>--%>
		</div>
	</form:form>
</body>
</html>