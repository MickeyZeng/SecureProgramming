<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>resultParty管理</title>
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
		<li class="active"><a href="${ctx}/resultparty/sysResultParty/">resultParty List</a></li>
		<shiro:hasPermission name="resultparty:sysResultParty:edit"><li><a href="${ctx}/resultparty/sysResultParty/form">resultParty Add</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysResultParty" action="${ctx}/resultparty/sysResultParty/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>Party ID：</label>
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
				<th>Party ID</th>
				<th>Event ID</th>
				<th>Result</th>
				<th>Update Time</th>
				<th>Recomment</th>
				<shiro:hasPermission name="resultparty:sysResultParty:edit"><th>Operator</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysResultParty">
			<tr>
				<td><a href="${ctx}/resultparty/sysResultParty/form?id=${sysResultParty.id}">
					${sysResultParty.partyid}
				</a></td>
				<td>
					${sysResultParty.eventid}
				</td>
				<td>
					${sysResultParty.result}
				</td>
				<td>
					<fmt:formatDate value="${sysResultParty.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${sysResultParty.remarks}
				</td>
				<shiro:hasPermission name="resultparty:sysResultParty:edit"><td>
    				<a href="${ctx}/resultparty/sysResultParty/form?id=${sysResultParty.id}">update</a>
					<a href="${ctx}/resultparty/sysResultParty/delete?id=${sysResultParty.id}" onclick="return confirmx('确认要删除该resultParty吗？', this.href)">Delete</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>