<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>User Manage</title>
</head>
<body>

<form:form id="inputForm" modelAttribute="user" action="${ctxStatic}/sys/reg/save" method="post" class="form-horizontal">
	<form:hidden path="id"/>
	<sys:message content="${message}"/>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">Image:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">头像:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<form:hidden id="nameImage" path="photo" htmlEscape="false" maxlength="255" class="input-xlarge"/>--%>
<%--			<sys:ckfinder input="nameImage" type="images" uploadPath="/photo" selectMultiple="false" maxWidth="100" maxHeight="100"/>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">Office:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">归属公司:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<sys:treeselect id="company" name="company.id" value="${user.company.id}" labelName="company.name" labelValue="${user.company.name}"--%>
<%--							title="公司" url="/sys/office/treeData?type=1" cssClass="required"/>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">Department:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">归属部门:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<sys:treeselect id="office" name="office.id" value="${user.office.id}" labelName="office.name" labelValue="${user.office.name}"--%>
<%--							title="部门" url="/sys/office/treeData?type=2" cssClass="required" notAllowSelectParent="true"/>--%>
<%--		</div>--%>
<%--	</div>--%>
	<div class="control-group">
		<label class="control-label">Passport ID:</label>
			<%--			<label class="control-label">工号:</label>--%>
		<div class="controls">
			<form:input path="no" htmlEscape="false" maxlength="50" class="required"/>
			<span class="help-inline"><font color="red">*</font> </span>
		</div>
	</div>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">Driver Licence ID:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">工号:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<form:input path="no" htmlEscape="false" maxlength="50" class="required"/>--%>
<%--			<span class="help-inline"><font color="red">*</font> </span>--%>
<%--		</div>--%>
<%--	</div>--%>
	<div class="control-group">
		<label class="control-label">Name:</label>
			<%--			<label class="control-label">姓名:</label>--%>
		<div class="controls">
			<form:input path="name" htmlEscape="false" maxlength="50" class="required"/>
			<span class="help-inline"><font color="red">*</font> </span>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Login Name:</label>
			<%--			<label class="control-label">登录名:</label>--%>
		<div class="controls">
			<input id="oldLoginName" name="oldLoginName" type="hidden" value="${user.loginName}">
			<form:input path="loginName" htmlEscape="false" maxlength="50" class="required userName"/>
			<span class="help-inline"><font color="red">*</font> </span>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Password:</label>
			<%--			<label class="control-label">密码:</label>--%>
		<div class="controls">
			<input id="newPassword" name="newPassword" type="password" value="" maxlength="50" minlength="3" class="${empty user.id?'required':''}"/>
			<c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>
			<c:if test="${not empty user.id}"><span class="help-inline">If you do not wanna change, please empty...</span></c:if>
				<%--				<c:if test="${not empty user.id}"><span class="help-inline">若不修改密码，请留空。</span></c:if>--%>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Confirm Password:</label>
			<%--			<label class="control-label">确认密码:</label>--%>
		<div class="controls">
			<input id="confirmNewPassword" name="confirmNewPassword" type="password" value="" maxlength="50" minlength="3" equalTo="#newPassword"/>
			<c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Email:</label>
			<%--			<label class="control-label">邮箱:</label>--%>
		<div class="controls">
			<form:input path="email" htmlEscape="false" maxlength="100" class="email"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Phone:</label>
			<%--			<label class="control-label">电话:</label>--%>
		<div class="controls">
			<form:input path="phone" htmlEscape="false" maxlength="100"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label">Mobile:</label>
			<%--			<label class="control-label">手机:</label>--%>
		<div class="controls">
			<form:input path="mobile" htmlEscape="false" maxlength="100"/>
		</div>
	</div>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">Avilable Login:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">是否允许登录:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<form:select path="loginFlag">--%>
<%--				<form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false"/>--%>
<%--			</form:select>--%>
<%--			<span class="help-inline"><font color="red">*</font> “Yes” means it can login in ，“NO” means it cannot login in</span>--%>
<%--				&lt;%&ndash;				<span class="help-inline"><font color="red">*</font> “是”代表此账号允许登录，“否”则表示此账号不允许登录</span>&ndash;%&gt;--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">User type:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">用户类型:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<form:select path="userType" class="input-xlarge">--%>
<%--				<form:option value="" label="Please choose"/>--%>
<%--				&lt;%&ndash;					<form:option value="" label="请选择"/>&ndash;%&gt;--%>
<%--				<form:options items="${fns:getDictList('sys_user_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>--%>
<%--			</form:select>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	<div class="control-group">--%>
<%--		<label class="control-label">User Role:</label>--%>
<%--			&lt;%&ndash;			<label class="control-label">用户角色:</label>&ndash;%&gt;--%>
<%--		<div class="controls">--%>
<%--			<form:checkboxes path="roleIdList" items="${allRoles}" itemLabel="name" itemValue="id" htmlEscape="false" class="required"/>--%>
<%--			<span class="help-inline"><font color="red">*</font> </span>--%>
<%--		</div>--%>
<%--	</div>--%>
	<div class="control-group">
		<label class="control-label">Comment:</label>
			<%--			<label class="control-label">备注:</label>--%>
		<div class="controls">
			<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xlarge"/>
		</div>
	</div>
<%--	<c:if test="${not empty user.id}">--%>
<%--		<div class="control-group">--%>
<%--			<label class="control-label">Create time:</label>--%>
<%--				&lt;%&ndash;				<label class="control-label">创建时间:</label>&ndash;%&gt;--%>
<%--			<div class="controls">--%>
<%--				<label class="lbl"><fmt:formatDate value="${user.createDate}" type="both" dateStyle="full"/></label>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--		<div class="control-group">--%>
<%--			<label class="control-label">Last login:</label>--%>
<%--				&lt;%&ndash;				<label class="control-label">最后登陆:</label>&ndash;%&gt;--%>
<%--			<div class="controls">--%>
<%--				<label class="lbl">IP: ${user.loginIp}&nbsp;&nbsp;&nbsp;&nbsp;Time：<fmt:formatDate value="${user.loginDate}" type="both" dateStyle="full"/></label>--%>
<%--					&lt;%&ndash;					<label class="lbl">IP: ${user.loginIp}&nbsp;&nbsp;&nbsp;&nbsp;时间：<fmt:formatDate value="${user.loginDate}" type="both" dateStyle="full"/></label>&ndash;%&gt;--%>
<%--			</div>--%>
<%--		</div>--%>
<%--	</c:if>--%>
	<div class="form-actions">
		<input id="btnSubmit" class="btn btn-primary" type="submit" value="Save"/>
			<%--			<shiro:hasPermission name="sys:user:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="save"/>&nbsp;</shiro:hasPermission>--%>
		<input id="btnCancel" class="btn" type="button" value="Return" onclick="history.go(-1)"/>
			<%--			<input id="btnCancel" class="btn" type="button" value="Back" onclick="history.go(-1)"/>--%>
	</div>
</form:form>
</body>
</html>