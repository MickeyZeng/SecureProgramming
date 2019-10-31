<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Event管理</title>
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
		<li class="active"><a href="${ctx}/event/sysEvent/">Event列表</a></li>
		<shiro:hasPermission name="event:sysEvent:edit"><li><a href="${ctx}/event/sysEvent/form">Event添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysEvent" action="${ctx}/event/sysEvent/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>event ID：</label>
				<form:input path="eventid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>Event Name：</label>
				<form:input path="eventname" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>编号</th>
				<th>event ID</th>
				<th>Event Name</th>
				<th>Event Description</th>
				<th>due time</th>
				<th>创建时间</th>
				<shiro:hasPermission name="event:sysEvent:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysEvent">
			<tr>
<%--				<td><a href="${ctx}/event/sysEvent/form?id=${sysEvent.id}">--%>
				<td><a href="${ctx}/partyevent/sysPartyEvent/form?eventid=${sysEvent.id}">
					${sysEvent.id}
				</a></td>
				<td>
					${sysEvent.eventid}
				</td>
				<td>
					${sysEvent.eventname}
				</td>
				<td>
					${sysEvent.eventdescription}
				</td>
				<td>
					<fmt:formatDate value="${sysEvent.dueDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${sysEvent.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="event:sysEvent:edit"><td>
    				<a href="${ctx}/event/sysEvent/form?id=${sysEvent.id}">修改</a>
					<a href="${ctx}/event/sysEvent/delete?id=${sysEvent.id}" onclick="return confirmx('确认要删除该Event吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>