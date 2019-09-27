<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
<head>
    <title>添加客户功能页面</title>
</head>
<body>
<!-- 导航栏 -->
<div class="sidebar text-left">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand">SSH三大框架整合</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li><a href="<%=basePath%>/customer_toSavePage.do"><strong>添加信息功能</strong></a></li>
                    <li><a href="<%=basePath%>/customer_findByPage.do"><strong>分页查询功能</strong></a></li>
                    <li><a>Create by MrZhangxd</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="container">
    <h1 class="text-center">客户信息添加页面</h1>
    <hr/>
    <br/>
    <form class="form-inline text-center" action="<%=basePath%>/customer_save.do" method="post">
        <div hidden="hidden">
            <!-- 这个id值默认中数据库中查询 -->
            <input type="text" name="c_id" class="form-control" value="${newId}"/>
        </div>
        <div class="form-group form-inline">
            <label>客户姓名</label>
            <input type="text" name="c_name" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户电话</label>
            <input type="text" name="c_telephone" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户住址</label>
            <input type="text" name="c_address" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户备注</label>
            <input type="text" name="c_remark" class="form-control"/>
        </div>
        <br/>
        <br/>
        <br/>
        <input type="submit" class="btn btn-info text-center"/>
        <input type="reset" class="btn btn-info text-center"/>
    </form>
</div>

</body>
</html>
