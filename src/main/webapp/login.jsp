<%--
  Created by IntelliJ IDEA.
  User: donald.tang
  Date: 2019/7/26
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
    <title>Title</title>
</head>
<body>
<form method="post" action="login" class="form form-horizontal" id="form-member-add">
    <div class="row cl">
        <label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>账号：</label>
        <div class="formControls col-xs-2 col-sm-2">
            <input type="text" class="input-text" value="" placeholder="" id="account" name="account">
        </div>
        <label class="form-label col-xs-1 col-sm-1"><span class="c-red">*</span>密码：</label>
        <div class="formControls col-xs-2 col-sm-2">
            <input type="text" class="input-text" value="" placeholder="" id="pwd" name="pwd">
        </div>
        <div class="formControls col-xs-2 col-sm-2">
            <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;登陆&nbsp;&nbsp;">
        </div>
    </div>
</form>
</body>
</html>
