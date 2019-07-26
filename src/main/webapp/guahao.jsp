<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>现场挂号</title>
<meta name="keywords" content="">
<meta name="description" content="">
</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>发票号：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="invoiceId" name="invoiceId">
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<input class="btn btn-primary radius" onclick="save()" value="&nbsp;&nbsp;挂号&nbsp;&nbsp;">
			</div>
			<div class="formControls col-xs-2 col-sm-2">
				<input class="btn btn-primary radius" type="reset" value="&nbsp;&nbsp;清空&nbsp;&nbsp;">
			</div>			
			<label class="form-label col-xs-5 col-sm-5"></label>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1">挂号信息</label>
			<label class="form-label col-xs-11 col-sm-11"></label>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1">病历号：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="caseCode" name="caseCode">
			</div>
			<label class="form-label col-xs-1 col-sm-1">姓名：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="name" name="name">
			</div>
			<label class="form-label col-xs-1 col-sm-1">性别：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select" name="sex" id="sex">
					<option>男</option>
					<option>女</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1">年龄：</label>
			<div class="formControls col-xs-1 col-sm-1">
				<input type="text" class="input-text" value="" placeholder="" id="age" name="age">
			</div>
			<div class="formControls col-xs-1 col-sm-1">
				<span class="select-box"><select class="select" name="ageType">
					<option>岁</option>
					<option>月</option>
					<option>日</option>
				</select></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1">出生日期：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input class="input-text" type="text" name="birthday" id="birthday" style="width:80%"/>
				<img onclick="WdatePicker({el:'birthday',readOnly:true,skin:'whyGreen',minDate:'%y-%M-01',maxDate:'%y-%M-%ld'})"
					 src="lib/My97DatePicker/4.8/skin/datePicker.gif" width="16" height="22" align="middle" style="cursor:pointer;">
			</div>
			<label class="form-label col-xs-1 col-sm-1">身份证号：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="idCard" name="idCard">
			</div>
			<label class="form-label col-xs-1 col-sm-1">家庭住址：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>看诊日期：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="diagnoseTime" name="diagnoseTime" style="width:80%">
				<img onclick="WdatePicker({el:'diagnoseTime',readOnly:true,skin:'whyGreen',minDate:'%y-%M-01',maxDate:'%y-%M-%ld'})"
					 src="lib/My97DatePicker/4.8/skin/datePicker.gif" width="16" height="22" align="middle" style="cursor:pointer;">
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>午别：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box">
					<select class="select" name="diagnosePeriod">
						<option>上午</option>
						<option>下午</option>
					</select>
				</span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>挂号科室：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select" name="clinicId" id="clinicId">
					<option value="1">内科</option>
					<option value="2">外科</option>
					<option value="3">五官科</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>看诊医生：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select" name="doctorId" id="doctorId">
					<%--<option value="1">扁鹊</option>
					<option value="2">孙思邈</option>
					<option value="3">华佗</option>--%>
				</select></span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>号别：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select" id="registerCategoryId" name="registerCategoryId">
					<option value="0">请选择</option>
					<option value="1">普通号</option>
					<option value="2">专家号</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1">病历本：</label>
			<div class="formControls col-xs-1 col-sm-1">
				<input type="radio" class="input-raido" value="" placeholder="" id="username" name="username">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>结算类别：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select">
					<option value="1">自费</option>
					<option value="2">医保</option>
				</select></span>
			</div>
			<label class="form-label col-xs-1 col-sm-1">应收金额：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<input type="text" class="input-text" value="" placeholder="" id="price" name="price" disabled="disabled">
			</div>
			<label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>收费方式：</label>
			<div class="formControls col-xs-2 col-sm-2">
				<span class="select-box"><select class="select">
					<option value="1">现金</option>
					<option value="2">微信</option>
					<option value="3">支付宝</option>
				</select></span>
			</div>
		</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
	function save() {
		var d = {};
		var t = $('form').serializeArray();
		$.each(t, function() {
			d[this.name] = this.value;
		});

		console.log(d);

		$.ajax({
			url: "/guahao",
			type: "POST",
			dataType: "json",
			data: JSON.stringify(d),
			contentType: 'application/json',
			success: function (data) {
				layer.msg('挂号成功!');
			}
		});
	}

	function loadDictionary(category){
        $.ajax({
            url: "/dictionary?cat=" + category,
            type: "get",
            success: function (data) {
                priceObj = eval(data);
				console.log(priceObj)
            }
        });
	}

    function queryPatientByCaseCode(caseCode){
        $.ajax({
            url: "/guahao?caseCode=" + caseCode,
            type: "get",
            success: function (data) {
                var patientObj = eval(data);
                console.log(patientObj)
                $('#name').val(patientObj.name);
                $('#sex').val(patientObj.sex);
                $('#age').val(patientObj.age);
            }
        });
    }

    var priceObj = {};

$(function(){

	loadDictionary("registerCategory");

	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});

    $("#registerCategoryId").change(function(){

        var registerCategoryId=$("#registerCategoryId").find("option:selected").val();

        console.log(priceObj[1]);

        if(1 == registerCategoryId){
            $('#price').val(priceObj['1']);
		}else if(2 == registerCategoryId){
            $('#price').val(priceObj['2']);
		}

	});

    function objInit(obj){
        return $(obj).html('<option>请选择</option>');
    }
    var clinicMapping={
        内科:'a,b,c',
        外科:'d,e',
        五官科:'f'};

	var registerTypeMapping={
       普通号:'aa,bb,cc',
	   专家号:'dd,ee'
	};

    function objInit(obj){
        return $(obj).html('<option>请选择</option>');
    }

    $('#clinicId').change(function () {
        objInit('#doctorId');
        $.each(clinicMapping,function (k,v) {
			if($('#clinicId option:selected').text() == k){
                $.each(v.split(","),function(){
                    $('#doctorId').append('<option>'+this+'</option>');
                })
			}
        })
    });

    $('#registerCategoryId').change(function () {
        objInit('#doctorId');
		$.each(registerTypeMapping,function (k,v) {
            if($('#registerCategoryId option:selected').text()==k){
                $.each(v.split(","),function(){
                    $('#doctorId').append('<option>'+this+'</option>');
                })
			}
        })

    });

    $('#caseCode').on('blur',function () {
        var caseCode = $('#caseCode').val();
		queryPatientByCaseCode(caseCode);
    });

	$("#form-member-add").validate({
		rules:{
			diagnoseTime:{
				required:true
			},
			price:{
				required:true
			},
			invoiceId:{
				required:true
			},
			caseCode:{
				required:true,
				isNumber:true
			}
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid"/*,
		submitHandler:function(form){
			$(form).ajaxSubmit();
			// var index = parent.layer.getFrameIndex(window.name);
			// //parent.$('.btn-refresh').click();
			// parent.layer.close(index);
		}*/
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>