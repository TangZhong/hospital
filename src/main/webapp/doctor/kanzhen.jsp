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
<title>医生诊疗</title>
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
							<c:forEach items="${patientList}" var="item">
								<c:if test="${item.status == '1'}">
									<a href="#" class="list-group-item" onclick="showClick(this)">
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
							<c:forEach items="${patientList}" var="item">
								<c:if test="${item.status == '2'}">
								<a href="#" class="list-group-item" onclick="showClick(this)">
									<ul class="list-inline">
										<li>${item.caseCode}</li>
										<li>${item.name}</li>
										<li>${item.age}</li>
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
					</h3>
				</div>
				<div id="tab-system" class="HuiTab">
					<div class="tabBar cl">
						<span>病历首页</span>
					</div>
				</div>
				<div class="row cl">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">主述：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="zhushu" name="zhushu">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">现病史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="xianbingshi" name="xianbingshi">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">现病治疗情况：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="xianbingzhiliao" name="xianbingzhiliao">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">既往史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="jiwangshi" name="jiwangshi">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">过敏史：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="guominshi" name="guominshi">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-2">体格检查：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="tigejiancha" name="tigejiancha">
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
						<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>诊断结果：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text"  class="input-text" value="" id="result" name="result">
						</div>
					</div>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<input class="btn btn-primary radius" onclick="save()" value="&nbsp;&nbsp;诊断&nbsp;&nbsp;">
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

		$('#caseCodeLable').text(caseCode);
		$('#nameLable').text(name);
		$('#ageLable').text(age);

	}

	function validate(){

		var caseCode = $('#caseCodeLable').text();
		var result = $('#result').val();

		console.log(caseCode + ' - ' + result);

		if(!caseCode || '-' == caseCode){
			layer.msg("请选择一个未就诊病人！");
			return false;
		} else if(!result){
			layer.msg("请填入诊断信息！");
			return false;
		} else {
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

			$.ajax({
				url: "/kanzhen",
				type: "POST",
				dataType: "json",
				data: JSON.stringify(d),
				contentType: 'application/json',
				success: function (data) {
					layer.msg('看诊成功!');
				}
			});
		}

	}

$(document).ready(function(){

});
</script>
</body>
</html>