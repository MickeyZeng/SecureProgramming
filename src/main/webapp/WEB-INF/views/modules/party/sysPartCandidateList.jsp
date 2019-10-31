<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Party管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>

	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/party/sysPartCandidate/">Party列表</a></li>
		<shiro:hasPermission name="party:sysPartCandidate:edit"><li><a href="${ctx}/party/sysPartCandidate/form">Party添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysPartCandidate" action="${ctx}/party/sysPartCandidate/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>party ID：</label>
				<form:input path="partyid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>party Name：</label>
				<form:input path="partyname" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>party ID</th>
				<th>party Name</th>
				<th>party Description</th>
				<shiro:hasPermission name="party:sysPartCandidate:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysPartCandidate">
			<tr>
				<td><a href="${ctx}/party/sysPartCandidate/form?id=${sysPartCandidate.id}">
					${sysPartCandidate.partyid}
				</a></td>
				<td>
					${sysPartCandidate.partyname}
				</td>
				<td>
					${sysPartCandidate.partydescription}
				</td>
				<shiro:hasPermission name="party:sysPartCandidate:edit"><td>
    				<a href="${ctx}/party/sysPartCandidate/form?id=${sysPartCandidate.id}">修改</a>
					<a href="${ctx}/party/sysPartCandidate/delete?id=${sysPartCandidate.id}" onclick="return confirmx('确认要删除该Party吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>