<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>Candidates管理</title>
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
		<li class="active"><a href="${ctx}/candidates/sysCandidate/">Candidates列表</a></li>
		<shiro:hasPermission name="candidates:sysCandidate:edit"><li><a href="${ctx}/candidates/sysCandidate/form">Candidates添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysCandidate" action="${ctx}/candidates/sysCandidate/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>Candidate ID：</label>
				<form:input path="candidateid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>Candidate Name：</label>
				<form:input path="candidatename" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>party ID：</label>
				<form:input path="partyid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>Candidate ID</th>
				<th>Candidate Name</th>
				<th>party ID</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="candidates:sysCandidate:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysCandidate">
			<tr>
				<td><a href="${ctx}/candidates/sysCandidate/form?id=${sysCandidate.id}">
					${sysCandidate.candidateid}
				</a></td>
				<td>
					${sysCandidate.candidatename}
				</td>
				<td>
					${sysCandidate.partyid}
				</td>
				<td>
					<fmt:formatDate value="${sysCandidate.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${sysCandidate.remarks}
				</td>
				<td>
    				<a href="${ctx}/resultcandidate/sysResultCandidate/vote?id=${sysCandidate.id}+${eventID}+${size}">投票</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>