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
<script type="text/javascript" src="static/js/bootstrap.min.js"></script>

<style type="text/css">
	.row{margin: 10px 0;}
</style>
<![endif]-->
<title>收费</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 挂号收费 <span class="c-gray en">&gt;</span> 收费 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<form class="form form-horizontal" id="form-member-add" type="get" action="shoufei">
	<div class="row cl">
		<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>病例号：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="${patient.caseCode}" placeholder="" id="caseCode" name="caseCode">
		</div>
		<div class="formControls col-xs-2 col-sm-2">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;搜索&nbsp;&nbsp;">
		</div>
		<label class="form-label col-xs-5 col-sm-5"></label>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-1 col-sm-1">姓名：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="${patient.name}" placeholder="" id="name" disabled="disabled">
		</div>
		<label class="form-label col-xs-1 col-sm-1">身份证号：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="${patient.idCard}" placeholder="" id="idCard" disabled="disabled">
		</div>
<%--		<label class="form-label col-xs-1 col-sm-1">家庭住址：</label>
		<div class="formControls col-xs-2 col-sm-2">
			<input type="text" class="input-text" value="" placeholder="" id>
		</div>--%>
		<label class="form-label col-xs-5 col-sm-5"></label>
	</div>
</form>

<table class="table">
	<tr>
		<%--<td width="200" class="va-t"><ul id="treeDemo" class="ztree"></ul></td>--%>
		<td class="va-t" style="width: 20%;">
			<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
				<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
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
				<c:forEach  items="${list}" var="item">
					<tr class="text-c">
						<td><input type="checkbox" value="${id}"></td>
						<td>${item.caseCode}</td>
						<td>${item.name}</td>
						<td>${item.drugName}</td>
						<td>${item.drugPrice}</td>
						<td>${item.drugAmount}</td>
						<td>2019-07-27</td>
						<td>开立</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</td>
	</tr>
</table>

<div class="row cl">
	<div class="formControls" style="text-align: center">
		<%--<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;收费结算&nbsp;&nbsp;">--%>
		<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">收费结算</button>
	</div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<form class="form-horizontal" role="form" id="form2">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">发票信息（交费）</h4>
			</div>
			<div class="modal-body">
				<div class="row cl">
					<label class="form-label col-xs-1 col-sm-3">发票号：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder="" id="idCard" name="idCard">
					</div>
					<label class="form-label col-xs-1 col-sm-3">病历号：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="${patient.caseCode}" placeholder="" name="case_code">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-1 col-sm-3">患者姓名：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="${patient.name}" placeholder="" id="patientName" name="patientName">
					</div>
					<label class="form-label col-xs-1 col-sm-3">支付方式：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select class="select">
							<option value="1">现金</option>
							<option value="2">微信</option>
							<option value="3">支付宝</option>
						</select></span>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-1 col-sm-3">应收金额：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder="" id="price1" name="price1">
					</div>
					<label class="form-label col-xs-1 col-sm-3">实收金额：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder="" id="price2" name="price2">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-1 col-sm-3">找零金额：</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder="" id="price3" name="price3">
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="save()">提交</button>
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--使用ztree插件，也可以自行选择其他插件显示 -->
<script type="text/javascript" src="lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script> 
<script type="text/javascript">

	function calculate(){

		var total = 0;

		jQuery(".table tbody input[type=checkbox]:checked").map(function () {
			var price = jQuery.trim(jQuery(this).closest("tr").find("td:eq(4)").text());
			var amount = jQuery.trim(jQuery(this).closest("tr").find("td:eq(5)").text());
			total += price * amount;
		})

		$('#price1').val(total);

	}

	function validate() {
		return true;
	}

	function save() {
		if(validate()){
			var d = {};
			var t = $('#form2').serializeArray();
			$.each(t, function() {
				d[this.name] = this.value;
			});

			$.ajax({
				url: "/shoufei",
				type: "POST",
				dataType: "json",
				data: JSON.stringify(d),
				contentType: 'application/json',
				success: function (data) {
					layer.msg('收费成功!');
					$('#myModal').modal('hide')
				}
			});
		}

	}

$(document).ready(function(){
	$('#myModal').on('show.bs.modal', function () {
		calculate();
	})

	$('#price2').on('blur',function () {
		var price1 = $('#price1').val();
		var price2 = $('#price2').val();
		var price3 = price2 - price1;
		$('#price3').val(price3);
	});
});
</script>
</body>
</html>