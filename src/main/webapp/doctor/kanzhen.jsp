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
<title>医生诊疗</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 门诊医生 <span class="c-gray en">&gt;</span> 门诊病历 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<table class="table">
	<tr>
		<%--<td width="200" class="va-t"><ul id="treeDemo" class="ztree"></ul></td>--%>
		<td class="va-t" style="width: 20%;">
			<table class="table table-bordered">
				<thead>
				<tr>
					<th>病历号</th>
					<th>姓名</th>
					<th>年龄</th>
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
		<td class="va-t">
			<form class="form form-horizontal" id="form-article-add">
				<div id="tab-system" class="HuiTab">
					<div class="tabBar cl">
						<span>病历首页</span>
						<%--<span>检查申请</span>
						<span>检验申请</span>
						<span>门诊确诊</span>
						<span>处置申请</span>
						<span>成药处方</span>
						<span>草药处方</span>
						<span>费用查询</span>--%>
					</div>
				</div>
				<div class="row cl">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">主述：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">现病史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">现病治疗情况：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">既往史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">过敏史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">体格检查：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
				</div>
				<div id="tab-system" class="HuiTab">
					<div class="tabBar cl">
						<span>评估/诊断</span>
					</div>
				</div>
				<div class="row cl">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">诊断结果：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="" name="">
						</div>
					</div>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
						<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
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

$(document).ready(function(){

});
</script>
</body>
</html>