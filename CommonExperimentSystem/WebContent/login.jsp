<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="container">
	<div id="login_top"></div>
	<div id="login_content">
  		<div id="lg_content1">
    			<div id="content1_bg">
     			 <p>暨南大学电气信息学院本科教学</p>
     			 <ul>
      		 	 <li>暨南大学通用课程实验平台</li>
       			 <li>暨南大学通用课程实验平台</li>
      		 	 <li>暨南大学通用课程实验平台</li>
       			 <li>暨南大学通用课程实验平台</li>
       			 <li>暨南大学通用课程实验平台</li>
     			 </ul>
   			 	</div>
 			 </div>
  		<div id="lg_content2">
    	  <div id="content2_bg">
    		<div id="login_head">
            	<img src="images/logo_small.jpg" class="textmiddle"/>
                <span id="login_title">暨南大学通用课程实验平台V1.0</span>
    		</div>
		<div id="apLogin">
        <form action="Login" method="post">
        	<input type="hidden" name="hiddenCode" value="<c:out value='${sessionScope.hiddenCode }'/>"/>
        <p>
            <label for="Name">账  号:</label>
            <input type="text" name="id" id="id" size="18" maxlength="30" />
        </p>
        <p>
            <label for="password">口  令:</label>
            <input type="password" name="password" id="password" size="18" maxlength="15" />
        </p>
        <p>
            <label for="validation">验证码</label>
            <input type="text" name="validation" id="validation" size="8" maxlength="8" />
            <img alt="testImg"  src="images/test.jpg" />
        </p>
        <div class="button_group">
            <input type="submit" class="buttom" value="登录" />
            <input type="submit" class="buttom" value="忘记密码" />
        </div>     
        </form>
  		</div>
        </div>
    </div>
</div>
	<div id="login_foot">
  		<h2>COPYRIGHT © 2014 11软工 ALL RIGHTS RESERVED. ICP备05001202号</h2>
	</div>
</div>
</body>
</html>