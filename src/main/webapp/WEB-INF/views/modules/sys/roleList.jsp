]<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Role Management</title>
<%--	<title>角色管理</title>--%>
	<meta name="decorator" content="default"/>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/sys/role/">Role List</a></li>
<%--		<li class="active"><a href="${ctx}/sys/role/">角色列表</a></li>--%>
		<shiro:hasPermission name="sys:role:edit"><li><a href="${ctx}/sys/role/form">Add role</a></li></shiro:hasPermission>
<%--		<shiro:hasPermission name="sys:role:edit"><li><a href="${ctx}/sys/role/form">角色添加</a></li></shiro:hasPermission>--%>
	</ul>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<tr><th>Role name</th><th>English name</th><th>Office</th><th>Data Scope</th><shiro:hasPermission name="sys:role:edit"><th>Operator</th></shiro:hasPermission></tr>
<%--		<tr><th>角色名称</th><th>英文名称</th><th>归属机构</th><th>数据范围</th><shiro:hasPermission name="sys:role:edit"><th>Operator</th></shiro:hasPermission></tr>--%>
		<c:forEach items="${list}" var="role">
			<tr>
				<td><a href="form?id=${role.id}">${role.name}</a></td>
				<td><a href="form?id=${role.id}">${role.enname}</a></td>
				<td>${role.office.name}</td>
				<td>${fns:getDictLabel(role.dataScope, 'sys_data_scope', '无')}</td>
				<shiro:hasPermission name="sys:role:edit"><td>
					<a href="${ctx}/sys/role/assign?id=${role.id}">Allocated</a>
<%--					<a href="${ctx}/sys/role/assign?id=${role.id}">分配</a>--%>
					<c:if test="${(role.sysData eq fns:getDictValue('Yes', 'yes_no', '1') && fns:getUser().admin)||!(role.sysData eq fns:getDictValue('Yes', 'yes_no', '1'))}">
						<a href="${ctx}/sys/role/form?id=${role.id}">Update</a>
					</c:if>
					<a href="${ctx}/sys/role/delete?id=${role.id}" onclick="return confirmx('Delete this Role？', this.href)">Delete</a>
<%--					<a href="${ctx}/sys/role/delete?id=${role.id}" onclick="return confirmx('确认要删除该角色吗？', this.href)">Delete</a>--%>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
	</table>
</body>
</html>