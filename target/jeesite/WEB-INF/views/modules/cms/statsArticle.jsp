<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>信息量统计</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		function autoRowSpan(tb,row,col){
	        var lastValue="",value="",pos=1;  
	        for(var i=row;i<tb.rows.length;i++){
	            value = tb.rows[i].cells[col].innerText;  
	            if(lastValue == value){
	                tb.rows[i].deleteCell(col); 
	                tb.rows[i-pos].cells[col].rowSpan = tb.rows[i-pos].cells[col].rowSpan+1;
	                pos++;
	            }else{
	                lastValue = value;
	                pos=1;
	            }
	        }
	    }
		$(document).ready(function(){
			autoRowSpan(contentTable,0,0);
	        $("td,th").css({"text-align":"center","vertical-align":"middle"});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/cms/stats/article">信息量统计</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="article" action="${ctx}/cms/stats/article" method="post" class="breadcrumb form-search">
		<div>
			<label>归属栏目：</label><sys:treeselect id="category" name="categoryId" value="${paramMap.id}" labelName="categoryName" labelValue="${paramMap.name}"
				title="栏目" url="/cms/category/treeData" module="article" cssClass="input-small" allowClear="true"/>
			<label>归属机构：</label><sys:treeselect id="office" name="officeId" value="${paramMap.office.id}" labelName="officeName" labelValue="${paramMap.office.name}" 
				title="机构" url="/sys/office/treeData" cssClass="input-small" allowClear="true"/>
			<label>开始日期：</label><input id="beginDate" name="beginDate" type="text" readonly="readonly" maxlength="20" class="input-small Wdate"
				value="${paramMap.beginDate}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			<label>结束日期：</label><input id="endDate" name="endDate" type="text" readonly="readonly" maxlength="20" class="input-small Wdate"
				value="${paramMap.endDate}" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>&nbsp;&nbsp;
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="Check"/>
		</div>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>父级栏目</th><th>栏目名称</th><th>信息量</th><th>点击量</th><th>最后更新时间</th><th>归属机构</th>
		<tbody>
		<c:forEach items="${list}" var="stats">
			<tr>
				<td><a href="javascript:" onclick="$('#categoryId').val('${stats.parent.id}');$('#categoryName').val('${stats.parent.name}');$('#searchForm').submit();return false;">${stats.parent.name}</a></td>
				<td><a href="javascript:" onclick="$('#categoryId').val('${stats.id}');$('#categoryName').val('${stats.name}');$('#searchForm').submit();return false;">${stats.name}</a></td>
				<td>${stats.cnt}</td>
				<td>${stats.hits}</td>
				<td><fmt:formatDate value="${stats.updateDate}" type="both"/></td>
				<td><a href="javascript:" onclick="$('#officeId').val('${stats.office.id}');$('#officeName').val('${stats.office.name}');$('#searchForm').submit();return false;">${stats.office.name}</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>