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
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>收费</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 门诊医生 <span class="c-gray en">&gt;</span> 门诊病历 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<form class="form form-horizontal" id="form-member-add">
	<div class="row cl">
		<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病例号：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="" placeholder="" id="invoiceId" name="invoiceId">
		</div>
		<div class="formControls col-xs-2 col-sm-2">
			<input class="btn btn-primary radius" onclick="save()" value="&nbsp;&nbsp;搜索&nbsp;&nbsp;">
		</div>
		<label class="form-label col-xs-5 col-sm-5"></label>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>姓名：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="" placeholder="" id="invoiceId" name="invoiceId">
		</div>
		<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>身份证号：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="" placeholder="" id="invoiceId" name="invoiceId">
		</div>
		<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>家庭住址：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="" placeholder="" id="invoiceId" name="invoiceId">
		</div>
		<label class="form-label col-xs-5 col-sm-5"></label>
	</div>
</form>

<table class="table">
	<tr>
		<%--<td width="200" class="va-t"><ul id="treeDemo" class="ztree"></ul></td>--%>
		<td class="va-t" style="width: 20%;">
			<table class="table table-bordered">
				<thead>
				<tr>
					<th>病历号</th>
					<th>姓名</th>
					<th>项目名称</th>
					<th>单价</th>
					<th>数量</th>
					<th>开立时间</th>
					<th>状态</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach  items="${patientList}" var="item">
					<tr>
						<td>${item.caseCode}</td>
						<td>${item.name}</td>
						<td>${item.age}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
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

$(document).ready(function(){

});
</script>
</body>
</html>