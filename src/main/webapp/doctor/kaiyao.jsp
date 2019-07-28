<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="../static/css/bootstrap-theme.min.css"/>
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>

<![endif]-->
<title>开药</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 门诊医生 <span class="c-gray en">&gt;</span> 门诊病历 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<table class="table">
	<tr>
		<%--<td width="200" class="va-t"><ul id="treeDemo" class="ztree"></ul></td>--%>
		<td class="va-t" style="width: 20%;">
			<div class="list-group">
				<a href="#" class="list-group-item active">
					<h4 class="list-group-item-heading">
						未诊患者：
					</h4>
				</a>
				<c:forEach items="${list}" var="item">
					<c:if test="${item.status == '1'}">
						<a href="#" class="list-group-item" <%--onclick="showClick(this)"--%>>
							<ul class="list-inline">
								<li>${item.caseCode}</li>
								<li>${item.name}</li>
								<li>${item.age}</li>
							</ul>
						</a>
					</c:if>
				</c:forEach>
			</div>

			<div class="list-group">
				<a href="#" class="list-group-item active">
					<h4 class="list-group-item-heading">
						已诊患者：
					</h4>
				</a>
				<c:forEach items="${list}" var="item">
					<c:if test="${item.status == '2'}">
						<a href="#" class="list-group-item" onclick="showClick(this)">
							<ul class="list-inline">
								<li>${item.caseCode}</li>
								<li>${item.name}</li>
								<li>${item.age}</li>
								<input type="hidden" value="${item.pres}"/>
								<input type="hidden" value="${item.presId}"/>
							</ul>
						</a>
					</c:if>
				</c:forEach>
			</div>
		</td>
		<td class="va-t">
			<form class="form form-horizontal" id="form-article-add">
				<div style="text-align: center;">
					<h3>
						患者姓名：<span id="nameLable">-</span>
						病历号：<span id="caseCodeLable">-</span>
						年龄：<span id="ageLable">-</span>
						诊断病例：<span id="zhenduanLable">-</span>
					</h3>
				</div>
				<div id="tab-system" class="HuiTab">
					<div class="tabBar cl">
						<span>门诊开药</span>
					</div>
				</div>
				<div class="row cl">
					<div class="page-container">
						<div class="mt-20">
							<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
								<thead>
								<tr class="text-c">
									<th width="25"><input type="checkbox" name="" value=""></th>
									<th width="80">药品名称</th>
									<th>规格</th>
									<th width="80">单价</th>
									<th width="80">用法</th>
									<th width="120">用量</th>
									<th width="75">频次</th>
									<th width="60">数量</th>
								</tr>
								</thead>
								<tbody>
								<tr class="text-c">
									<td><input type="checkbox" value="" name=""></td>
									<td>酚酞</td>
									<td class="text-l">25g*1瓶</td>
									<td>10.42</td>
									<td>11</td>
									<td>22</td>
									<td>21</td>
									<td>11</td>
								</tr>
								<tr class="text-c">
									<td><input type="checkbox" value="" name=""></td>
									<td>青霉素</td>
									<td class="text-l">0.25g*1支</td>
									<td>10.42</td>
									<td>11</td>
									<td>22</td>
									<td>21</td>
									<td>11</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<%--<div id="tab-system" class="HuiTab">
					<div class="tabBar cl">
						<span>处方模板</span>
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-2 col-sm-2">
						<table class="table table-bordered">
							<thead>
							<tr>
								<th>模板名称</th>
								<th>范围</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach  items="${p}" var="item">
								<tr>
									<td>${item.caseCode}</td>
									<td>${item.name}</td>
									<td>${item.age}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="formControls col-xs-2 col-sm-2">
						<table class="table table-bordered">
							<thead>
							<tr>
								<th>药品名称</th>
								<th>规格</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach  items="${p}" var="item">
								<tr>
									<td>${item.caseCode}</td>
									<td>${item.name}</td>
									<td>${item.age}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>--%>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<input class="btn btn-primary radius" onclick="save()" value="&nbsp;&nbsp;开药&nbsp;&nbsp;">
						<input class="btn btn-primary radius" onclick="" value="&nbsp;&nbsp;取消&nbsp;&nbsp;">
					</div>
				</div>
			</form>
		</td>
	</tr>
</table>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--使用ztree插件，也可以自行选择其他插件显示 -->
<script type="text/javascript" src="lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script> 
<script type="text/javascript">

	function showClick(item){

		var caseCode = $(item).find('li:eq(0)').text();
		var name = $(item).find('li:eq(1)').text();
		var age = $(item).find('li:eq(2)').text();
		var pres = $(item).find('input').val();

		$('#caseCodeLable').text(caseCode);
		$('#nameLable').text(name);
		$('#ageLable').text(age);
		$('#zhenduanLable').text(pres);

	}

	function validate(){

		var caseCode = $('#caseCodeLable').text();

		if(!caseCode || '-' == caseCode){
			layer.msg("请选择一个就诊病人！");
			return false;
		}else {
			return true;
		}
	}

	function save() {
		if(validate()){
			var d = {};
			var t = $('form').serializeArray();
			$.each(t, function() {
				d[this.name] = this.value;
			});

			d.case_code = $('#caseCodeLable').text();

			layer.msg('开药成功!');

			/*$.ajax({
				url: "/kanzhen",
				type: "POST",
				dataType: "json",
				data: JSON.stringify(d),
				contentType: 'application/json',
				success: function (data) {
					layer.msg('看诊成功!');
				}
			});*/
		}

	}

$(document).ready(function(){

});
</script>
</body>
</html>