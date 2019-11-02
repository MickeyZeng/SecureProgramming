<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>resultCandidate管理</title>
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
		<li class="active"><a href="${ctx}/resultcandidate/sysResultCandidate/">resultCandidate列表</a></li>
		<shiro:hasPermission name="resultcandidate:sysResultCandidate:edit"><li><a href="${ctx}/resultcandidate/sysResultCandidate/form">resultCandidate添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="sysResultCandidate" action="${ctx}/resultcandidate/sysResultCandidate/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>candidate ID：</label>
				<form:input path="candidateid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>Event ID：</label>
				<form:input path="eventid" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>candidate ID</th>
				<th>Event ID</th>
				<th>Result</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="resultcandidate:sysResultCandidate:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="sysResultCandidate">
			<tr>
				<td><a href="${ctx}/resultcandidate/sysResultCandidate/form?id=${sysResultCandidate.id}">
					${sysResultCandidate.candidateid}
				</a></td>
				<td>
					${sysResultCandidate.eventid}
				</td>
				<td>
					${sysResultCandidate.result}
				</td>
				<td>
					<fmt:formatDate value="${sysResultCandidate.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${sysResultCandidate.remarks}
				</td>
				<shiro:hasPermission name="resultcandidate:sysResultCandidate:edit"><td>
    				<a href="${ctx}/resultcandidate/sysResultCandidate/form?id=${sysResultCandidate.id}">修改</a>
					<a href="${ctx}/resultcandidate/sysResultCandidate/delete?id=${sysResultCandidate.id}" onclick="return confirmx('确认要删除该resultCandidate吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>