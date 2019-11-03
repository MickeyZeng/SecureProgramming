<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Party-event Manage</title>
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
		<li class="active"><a href="${ctx}/partyevent/sysPartyEvent/">Party-event List</a></li>
		<shiro:hasPermission name="partyevent:sysPartyEvent:edit"><li><a href="${ctx}/partyevent/sysPartyEvent/form">Party-event Add</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysPartyEvent" action="${ctx}/partyevent/sysPartyEvent/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>party ID：</label>
				<form:input path="partyid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>Event ID：</label>
				<form:input path="eventid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="Check"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>party ID</th>
				<th>Event ID</th>
				<th>Update Time</th>
				<th>Recomment</th>
				<shiro:hasPermission name="partyevent:sysPartyEvent:edit"><th>Operator</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysPartyEvent">
			<tr>
				<td><a href="${ctx}/partyevent/sysPartyEvent/form?id=${sysPartyEvent.id}">
					${sysPartyEvent.partyid}
				</a></td>
				<td>
					${sysPartyEvent.eventid}
				</td>
				<td>
					<fmt:formatDate value="${sysPartyEvent.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${sysPartyEvent.remarks}
				</td>
				<shiro:hasPermission name="partyevent:sysPartyEvent:edit"><td>
    				<a href="${ctx}/partyevent/sysPartyEvent/form?id=${sysPartyEvent.id}">update</a>
					<a href="${ctx}/partyevent/sysPartyEvent/delete?id=${sysPartyEvent.id}" onclick="return confirmx('确认要删除该Party-event吗？', this.href)">Delete</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>