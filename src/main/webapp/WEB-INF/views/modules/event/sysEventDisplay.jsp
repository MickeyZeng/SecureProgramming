<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Event Manage</title>
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
		<li class="active"><a href="${ctx}/event/sysEvent/">Event List</a></li>
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
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="Check"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>ID</th>
				<th>event ID</th>
				<th>Event Name</th>
				<th>Event Description</th>
				<shiro:hasPermission name="event:sysEvent:edit"><th>Operator</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysEvent">
			<tr>
<%--				<td><a href="${ctx}/event/sysEvent/form?id=${sysEvent.id}">--%>
				<td><a href="${ctx}/party/sysPartCandidate/eTOp?id=${sysEvent.id}">
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
				<shiro:hasPermission name="event:sysEvent:edit"><td>
    				<a href="${ctx}/event/sysEvent/form?id=${sysEvent.id}">update</a>
					<a href="${ctx}/event/sysEvent/delete?id=${sysEvent.id}" onclick="return confirmx('确认要删除该Event吗？', this.href)">Delete</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>