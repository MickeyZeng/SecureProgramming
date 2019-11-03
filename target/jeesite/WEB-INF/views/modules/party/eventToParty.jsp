<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Party Manage</title>
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
<%--	<h1>${eventID}</h1>--%>
	<ul class="nav nav-tabs">
		<li class="active">Party List</li>
		<shiro:hasPermission name="party:sysPartCandidate:edit"><li><a href="${ctx}/party/sysPartCandidate/form">Add Party</a></li></shiro:hasPermission>
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
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="Check"/></li>
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
				<shiro:hasPermission name="party:sysPartCandidate:edit"><th>Operator</th></shiro:hasPermission>
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
				<td>
    				<a href="${ctx}/resultparty/sysResultParty/vote?id=${sysPartCandidate.id}+${eventID}+${sizes}">Vote</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>